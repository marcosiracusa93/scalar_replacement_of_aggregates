//
// Created by Marco Siracusa on 2/27/19.
//

#include <llvm/Support/Debug.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/IR/IntrinsicInst.h>
#include <llvm/Transforms/Utils/Cloning.h>
#include <llvm/Analysis/ScalarEvolution.h>
#include <llvm/Analysis/ScalarEvolutionExpressions.h>

#define DEBUG_TYPE "csroa"

#include "CustomScalarReplacementOfAggregatesPass.hpp"


bool CustomScalarReplacementOfAggregatesPass::runOnModule(llvm::Module &module) {

    llvm::Function *kernel_function = module.getFunction(kernel_name);

    assert(kernel_function != nullptr && "Unknown kernel function!");

    // Vector storing the functions called (directly and indirectly) by the kernel
    std::vector<llvm::Function *> inner_functions = std::vector<llvm::Function *>();

    // Map specifying the expanded arguments for each function
    std::map<llvm::Function *, std::set<unsigned long long>> exp_idx_args_map;

    // Map linking any function with its modified version
    std::map<llvm::Function *, llvm::Function *> exp_fun_map;

    // Populate inner functions vector
    populate_inner_functions(kernel_function, inner_functions);

    // Expand aggregate elements in signatures and in call sites (use nullptrs for expanded arguments)
    expand_signatures_and_call_sites(inner_functions, exp_fun_map, exp_idx_args_map, exp_args_map, kernel_function);

    // Start processing the kernel function
    processFunction(kernel_function);

    // And then expand all the expanded (inner) functions, processing those afterwards
    for (auto &f : exp_fun_map) {
        llvm::Function *exp_fun = f.second;

        expandArguments(nullptr, exp_fun, exp_idx_args_map.at(exp_fun), exp_args_map);

        processFunction(exp_fun);
    }

    cleanup(exp_idx_args_map, exp_fun_map);

    return true;
}

void CustomScalarReplacementOfAggregatesPass::getAnalysisUsage(llvm::AnalysisUsage &AU) const {

}

void CustomScalarReplacementOfAggregatesPass::processFunction(llvm::Function *function) {

    // Global alloca vec so to avoid loops in analysis
    std::set<llvm::AllocaInst *> alloca_vec = std::set<llvm::AllocaInst *>();

    unsigned int idx = 0;
    while (true) {

        // Alloca vec for the current iteration
        std::set<llvm::AllocaInst *> i_alloca_vec = std::set<llvm::AllocaInst *>();

        // Go through all the instructions looking for allocas
        for (auto &bb : *function) {
            for (auto &i : bb) {
                if (llvm::AllocaInst *alloca_inst = llvm::dyn_cast<llvm::AllocaInst>(&i)) {

                    // Whether allocating struct or array
                    if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(alloca_inst->getAllocatedType())) {

                        // Not analyzed yet
                        if (alloca_vec.count(alloca_inst) == 0) {
                            i_alloca_vec.insert(alloca_inst);
                            alloca_vec.insert(alloca_inst);
                        }
                    } else if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(
                            alloca_inst->getAllocatedType())) {
                        if (alloca_vec.count(alloca_inst) == 0) {
                            i_alloca_vec.insert(alloca_inst);
                            alloca_vec.insert(alloca_inst);
                        }
                    }
                }
            }
        }

        // End if empty worklist
        if (i_alloca_vec.size() == 0) { break; }

        // Go through the worklist
        for (auto &a : i_alloca_vec) {
            if (llvm::AllocaInst *alloca_inst = llvm::dyn_cast<llvm::AllocaInst>(a)) {
                if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(alloca_inst->getAllocatedType())) {
                    std::vector<llvm::Value *> expanded = std::vector<llvm::Value *>();

                    expandValue(alloca_inst, alloca_inst, str_ty, expanded);
                } else if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(alloca_inst->getAllocatedType())) {
                    std::vector<llvm::Value *> expanded = std::vector<llvm::Value *>();

                    expandValue(alloca_inst, alloca_inst, arr_ty, expanded);
                }
            }
        }

        if (++idx >= 2) {
            break;
        }
    }
}

void
CustomScalarReplacementOfAggregatesPass::expandArguments(llvm::Function *called_function, llvm::Function *new_function,
                                                         std::set<unsigned long long> arg_map,
                                                         std::map<llvm::Argument *, std::vector<llvm::Argument *>> &exp_args_map) {

    for (auto &a : arg_map) {
        auto arg_it = new_function->arg_begin();

        for (int i = 0; i < a; i++) { ++arg_it; }
        llvm::Argument *arg = &*arg_it;

        if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(arg->getType())) {

            args_to_remove[arg->getParent()].insert(arg);
            std::vector<llvm::Value *> expanded = std::vector<llvm::Value *>();

            if (arg != nullptr and arg->hasAttribute(llvm::Attribute::Dereferenceable)) {

                bool canBeNull;
                unsigned long long dBytes = arg->getPointerDereferenceableBytes(
                        arg->getParent()->getParent()->getDataLayout(), canBeNull);
                unsigned long long eBytes =
                        arg->getParent()->getParent()->getDataLayout().getTypeSizeInBits(ptr_ty->getElementType()) / 8;
                unsigned long long elements = dBytes / eBytes;

                /*
                for (int e_idx = 0; e_idx < elements; ++e_idx) {
                    llvm::Type *element = ptr_ty->getElementType();

                    expanded.push_back(&*(++arg_it));
                }
                */
                for (auto &a : exp_args_map[&*arg_it]) {
                    expanded.push_back(a);
                }

                expandValue(arg, arg, ptr_ty, expanded);

            } else if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {

                args_to_remove[arg->getParent()].insert(arg);
                std::vector<llvm::Value *> expanded = std::vector<llvm::Value *>();

                for (unsigned idx = 0; idx != str_ty->getNumContainedTypes(); ++idx) {
                    llvm::Type *element = str_ty->getContainedType(idx);

                    expanded.push_back(&*(++arg_it));
                }

                expandValue(arg, arg, str_ty, expanded);
            }
        }
    }
}

void CustomScalarReplacementOfAggregatesPass::expandValue(llvm::Value *use, llvm::Value *prev, llvm::Type *ty,
                                                          std::vector<llvm::Value *> &expanded) {
    use->dump();
    if (llvm::Argument *arg = llvm::dyn_cast<llvm::Argument>(use)) {

        for (auto user_it = arg->user_begin(); user_it != arg->user_end(); user_it++) {
            llvm::User *user = *user_it;

            std::vector<llvm::Value *> expanded_val = expanded;

            expandValue(user, arg, ty, expanded_val);
        }
    } else if (llvm::AllocaInst *alloca_inst = llvm::dyn_cast<llvm::AllocaInst>(use)) {

        expanded.clear();

        alloca_to_remove[alloca_inst->getFunction()].insert(alloca_inst);

        if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(alloca_inst->getAllocatedType())) {
            for (unsigned idx = 0; idx < ty->getNumContainedTypes(); ++idx) {
                llvm::Type *element = ty->getContainedType(idx);

                llvm::Type *new_alloca_type = llvm::PointerType::getUnqual(element);
                std::string new_alloca_name = alloca_inst->getName().str() + ".csroa.alloca." + std::to_string(idx);
                llvm::AllocaInst *new_alloca_inst = new llvm::AllocaInst(/*new_alloca_type*/ element, new_alloca_name,
                                                                                             alloca_inst);

                expanded.insert(expanded.begin() + idx, new_alloca_inst);

            }
        } else if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(alloca_inst->getAllocatedType())) {

            for (unsigned idx = 0; idx < arr_ty->getNumElements(); ++idx) {
                llvm::Type *element_ty = arr_ty->getArrayElementType();

                llvm::Type *new_alloca_type = llvm::PointerType::getUnqual(element_ty);
                std::string new_alloca_name = alloca_inst->getName().str() + ".csroa.alloca." + std::to_string(idx);
                llvm::AllocaInst *new_alloca_inst = new llvm::AllocaInst(/*new_alloca_type*/ element_ty,
                                                                                             new_alloca_name,
                                                                                             alloca_inst);

                expanded.insert(expanded.begin() + idx, new_alloca_inst);

            }
        }

        for (auto user_it = alloca_inst->user_begin(); user_it != alloca_inst->user_end(); user_it++) {
            llvm::User *user = *user_it;

            std::vector<llvm::Value *> expanded_val = expanded;

            expandValue(user, alloca_inst, ty, expanded_val);
        }

        inst_to_remove.insert(alloca_inst);

    } else if (llvm::GetElementPtrInst *gep_inst = llvm::dyn_cast<llvm::GetElementPtrInst>(use)) {
        if (gep_inst->getPointerOperand() == prev) {
            bool dereferenceable_arg = false;
            if (llvm::Argument *arg = llvm::dyn_cast<llvm::Argument>(prev)) {
                if (arg->hasAttribute(llvm::Attribute::Dereferenceable)) {
                    dereferenceable_arg = true;

                    bool canBeNull;
                    unsigned long long dBytes = arg->getPointerDereferenceableBytes(
                            arg->getParent()->getParent()->getDataLayout(), canBeNull);
                    unsigned long long eBytes =
                            arg->getParent()->getParent()->getDataLayout().getTypeSizeInBits(
                                    arg->getType()->getPointerElementType()) / 8;
                    unsigned long long elements = dBytes / eBytes;

                    if (llvm::ConstantInt *cint = llvm::dyn_cast<llvm::ConstantInt>(gep_inst->getOperand(1))) {
                        llvm::Value *ptr = expanded.at(cint->getValue().getSExtValue());
                        std::vector<llvm::Value *> ops = std::vector<llvm::Value *>();
                        ops.insert(ops.end(), gep_inst->op_begin() + 2, gep_inst->op_end());
                        std::string new_name = gep_inst->getName().str() + ".csroa.gepi." +
                                               std::to_string(cint->getValue().getSExtValue());

                        llvm::PointerType *ptr_type = llvm::dyn_cast<llvm::PointerType>(
                                ptr->getType()->getScalarType());
                        llvm::Type *new_type = llvm::dyn_cast<llvm::PointerType>(
                                ptr->getType()->getScalarType())->getElementType();

                        if (ops.size() != 0) {
                            llvm::GetElementPtrInst *new_gep_inst = llvm::GetElementPtrInst::Create(new_type,
                                                                                                    ptr,
                                                                                                    ops,
                                                                                                    new_name,
                                                                                                    gep_inst);

                            gep_inst->replaceAllUsesWith(new_gep_inst);
                        } else {
                            gep_inst->replaceAllUsesWith(ptr);
                        }

                        inst_to_remove.insert(gep_inst);
                    }
                }
            }

            if (!dereferenceable_arg) {
                if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(
                        prev->getType()->getPointerElementType())) {
                    if (llvm::ConstantInt *cint = llvm::dyn_cast<llvm::ConstantInt>(gep_inst->getOperand(1))) {
                        if (cint->getValue().getSExtValue() == 0) {
                            if (llvm::ConstantInt *cint = llvm::dyn_cast<llvm::ConstantInt>(gep_inst->getOperand(2))) {
                                llvm::Value *ptr = expanded.at(cint->getValue().getSExtValue());
                                std::vector<llvm::Value *> ops = std::vector<llvm::Value *>();
                                ops.insert(ops.end(), gep_inst->op_begin() + 3, gep_inst->op_end());
                                std::string new_name = gep_inst->getName().str() + ".csroa.gepi." +
                                                       std::to_string(cint->getValue().getSExtValue());

                                llvm::PointerType *ptr_type = llvm::dyn_cast<llvm::PointerType>(
                                        ptr->getType()->getScalarType());
                                llvm::Type *new_type = llvm::dyn_cast<llvm::PointerType>(
                                        ptr->getType()->getScalarType())->getElementType();

                                if (ops.size() != 0) {
                                    llvm::GetElementPtrInst *new_gep_inst = llvm::GetElementPtrInst::Create(new_type,
                                                                                                            ptr,
                                                                                                            ops,
                                                                                                            new_name,
                                                                                                            gep_inst);

                                    gep_inst->replaceAllUsesWith(new_gep_inst);
                                } else {
                                    gep_inst->replaceAllUsesWith(ptr);
                                }

                                inst_to_remove.insert(gep_inst);
                            }
                        }
                    }
                } else if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(
                        prev->getType()->getPointerElementType())) {
                    if (llvm::ConstantInt *cint = llvm::dyn_cast<llvm::ConstantInt>(gep_inst->getOperand(1))) {
                        if (cint->getValue().getSExtValue() == 0) {
                            if (llvm::ConstantInt *cint = llvm::dyn_cast<llvm::ConstantInt>(gep_inst->getOperand(2))) {
                                if (gep_inst->getNumOperands() == 3) {
                                    for (auto user_it = gep_inst->user_begin();
                                         user_it != gep_inst->user_end(); user_it++) {
                                        llvm::User *user = *user_it;

                                        std::vector<llvm::Value *> expanded_val = expanded;

                                        expandValue(user, gep_inst,
                                                    gep_inst->getPointerOperand()->getType()->getPointerElementType(),
                                                    expanded_val);
                                    }
                                }
                                /*
                                llvm::Value *ptr = expanded.at(cint->getValue().getSExtValue());
                                std::vector<llvm::Value *> ops = std::vector<llvm::Value *>();
                                ops.insert(ops.end(), gep_inst->op_begin() + 3, gep_inst->op_end());
                                std::string new_name = gep_inst->getName().str() + ".csroa.gepi." +
                                                       std::to_string(cint->getValue().getSExtValue());

                                llvm::PointerType *ptr_type = llvm::dyn_cast<llvm::PointerType>(
                                        ptr->getType()->getScalarType());
                                llvm::Type *new_type = llvm::dyn_cast<llvm::PointerType>(
                                        ptr->getType()->getScalarType())->getElementType();

                                if (ops.size() != 0) {
                                    llvm::GetElementPtrInst *new_gep_inst = llvm::GetElementPtrInst::Create(new_type,
                                                                                                            ptr,
                                                                                                            ops,
                                                                                                            new_name,
                                                                                                            gep_inst);

                                    gep_inst->replaceAllUsesWith(new_gep_inst);
                                } else {
                                    //gep_inst->replaceAllUsesWith(ptr);
                                }
                                */
                                inst_to_remove.insert(gep_inst);
                            }
                        }
                    }
                }
            }
        }
    } else if (llvm::BitCastInst *bitcast_inst = llvm::dyn_cast<llvm::BitCastInst>(use)) {

        std::vector<llvm::Value *> expanded_val = expanded;

        expanded.clear();

        for (unsigned idx = 0; idx != ty->getNumContainedTypes(); ++idx) {
            llvm::Type *element = ty->getContainedType(idx);

            llvm::Type *new_bitcast_type = llvm::PointerType::getUnqual(element);
            std::string new_bitcast_name = prev->getName().str() + "." + std::to_string(idx) + ".csroa.bitcast";
            llvm::BitCastInst *new_bitcast_inst = new llvm::BitCastInst(/*new_bitcast_type*/
                    expanded_val.at(idx), /*expanded_val.at(idx)->getType()*/bitcast_inst->getDestTy(),
                    new_bitcast_name, bitcast_inst);

            expanded.insert(expanded.begin() + idx, new_bitcast_inst);
        }

        for (auto user_it = bitcast_inst->user_begin(); user_it != bitcast_inst->user_end(); user_it++) {
            llvm::User *user = *user_it;

            expandValue(user, bitcast_inst, ty, expanded);
        }

        inst_to_remove.insert(bitcast_inst);

    } else if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(use)) {

        llvm::Argument *arg = llvm::dyn_cast<llvm::Argument>(prev);
        llvm::Function *called_function = call_inst->getCalledFunction();

        assert(called_function != nullptr && "Implementation needed");
        //assert(arg != nullptr && "Argument reference needed");

        if (llvm::MemCpyInst *memcpy_inst = llvm::dyn_cast<llvm::MemCpyInst>(call_inst)) {

            llvm::Value *dst = call_inst->getOperand(0);
            llvm::Value *src = call_inst->getOperand(1);
            if (llvm::isa<llvm::BitCastInst>(src) and llvm::isa<llvm::BitCastInst>(dst) and
                visited_memcpy.count(memcpy_inst) == 0) {

                visited_memcpy.insert(memcpy_inst);

                for (unsigned idx = 0; idx != ty->getNumContainedTypes(); ++idx) {
                    llvm::Type *element = ty->getContainedType(idx);

                    unsigned short case_idx = 0;
                    llvm::BitCastInst *bitcast_inst = nullptr;
                    llvm::AllocaInst *alloca_inst = nullptr;

                    if (prev == src and llvm::isa<llvm::BitCastInst>(dst) and
                        llvm::isa<llvm::AllocaInst>(llvm::dyn_cast<llvm::BitCastInst>(dst)->getOperand(0))) {
                        bitcast_inst = llvm::dyn_cast<llvm::BitCastInst>(dst);
                        case_idx = 1;
                    } else if (prev == dst and llvm::isa<llvm::BitCastInst>(src) and
                               llvm::isa<llvm::AllocaInst>(llvm::dyn_cast<llvm::BitCastInst>(src)->getOperand(0))) {
                        bitcast_inst = llvm::dyn_cast<llvm::BitCastInst>(src);
                        case_idx = 2;
                    }

                    assert(case_idx != 0 && "Wrong memcpy format");

                    alloca_inst = llvm::dyn_cast<llvm::AllocaInst>(bitcast_inst->getOperand(0));
                    llvm::Value *ptr = alloca_inst;

                    std::vector<llvm::Value *> gepi_ops = std::vector<llvm::Value *>();

                    llvm::APInt apint_op0 = llvm::APInt((unsigned int) 32, 0, false);
                    llvm::ConstantInt *cint_op0 = llvm::ConstantInt::get(memcpy_inst->getContext(), apint_op0);
                    gepi_ops.push_back(cint_op0);
                    llvm::APInt apint_op1 = llvm::APInt((unsigned int) 32, idx, false);
                    llvm::ConstantInt *cint_op1 = llvm::ConstantInt::get(memcpy_inst->getContext(), apint_op1);
                    gepi_ops.push_back(cint_op1);
                    std::string new_name = alloca_inst->getName().str() + ".csroa.gepi.memcpy." +
                                           std::to_string(idx);

                    llvm::PointerType *ptr_type = llvm::dyn_cast<llvm::PointerType>(
                            ptr->getType()->getScalarType());
                    llvm::Type *new_type = llvm::dyn_cast<llvm::PointerType>(
                            ptr->getType()->getScalarType())->getElementType();

                    llvm::GetElementPtrInst *new_gep_inst = llvm::GetElementPtrInst::Create(new_type, ptr,
                                                                                            gepi_ops, new_name,
                                                                                            bitcast_inst);

                    std::string new_bitcast_name =
                            alloca_inst->getName().str() + "." + std::to_string(idx) + ".csroa.bitcast.memcpy";
                    llvm::BitCastInst *new_bitcast_inst = new llvm::BitCastInst(new_gep_inst, bitcast_inst->getDestTy(),
                                                                                new_bitcast_name, bitcast_inst);

                    std::vector<llvm::Value *> memcpy_ops = std::vector<llvm::Value *>();

                    if (case_idx == 1) {
                        memcpy_ops.push_back(expanded.at(idx));
                        memcpy_ops.push_back(new_bitcast_inst);
                    } else {
                        memcpy_ops.push_back(new_bitcast_inst);
                        memcpy_ops.push_back(expanded.at(idx));
                    }

                    llvm::APInt apint_size = llvm::APInt((unsigned int) 64, expanded.at(
                            idx)->getType()->getPointerElementType()->getPrimitiveSizeInBits(), false);
                    llvm::ConstantInt *cint_size = llvm::ConstantInt::get(memcpy_inst->getContext(), apint_size);
                    memcpy_ops.push_back(cint_size);
                    // TODO fix the size parameter which goes to zero for complex (aggregate) types like nested structs
                    llvm::APInt apint_align = llvm::APInt((unsigned int) 32, expanded.at(idx)->getPointerAlignment(
                            call_inst->getModule()->getDataLayout()), false);
                    llvm::ConstantInt *cint_align = llvm::ConstantInt::get(call_inst->getContext(), apint_size);
                    cint_align = memcpy_inst->getAlignmentCst();
                    memcpy_ops.push_back(cint_align);
                    llvm::APInt apint_vol = llvm::APInt((unsigned int) 1, 0, false);
                    llvm::ConstantInt *cint_vol = llvm::ConstantInt::get(memcpy_inst->getContext(), apint_vol);
                    memcpy_ops.push_back(cint_vol);

                    llvm::CallInst *new_call_inst = llvm::CallInst::Create(called_function, memcpy_ops, "",
                                                                           memcpy_inst);

                }

                inst_to_remove.insert(memcpy_inst);
            }
        } else {

            unsigned long long op_idx = 0;
            for (auto op_it = call_inst->op_begin(); op_it != call_inst->op_end(); op_it++) {
                llvm::Value *op = *op_it;

                if (op == prev) {
                    llvm::Function::arg_iterator arg_it = call_inst->getCalledFunction()->arg_begin();

                    for (int i = 0; i < op_idx; i++) { ++arg_it; }

                    bool is_array_decay = false;
                    bool is_array = false;
                    unsigned long long offset = 0;


                    if (llvm::GetElementPtrInst *gep_inst = llvm::dyn_cast<llvm::GetElementPtrInst>(prev)) {
                        if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(
                                gep_inst->getPointerOperand()->getType()->getPointerElementType())) {

                            is_array = true;

                            if (arg_it->hasAttribute(llvm::Attribute::Dereferenceable)) {
                                is_array_decay = true;
                            }

                            if (llvm::ConstantInt *cint = llvm::dyn_cast<llvm::ConstantInt>(
                                    gep_inst->getOperand(1))) {
                                if (cint->getValue().getSExtValue() == 0) {
                                    if (llvm::ConstantInt *cint = llvm::dyn_cast<llvm::ConstantInt>(
                                            gep_inst->getOperand(2))) {
                                        if (gep_inst->getNumOperands() == 3) {
                                            offset = cint->getSExtValue();
                                        }
                                    }
                                }
                            }
                        }
                    }

                    if (is_array_decay) {

                        std::vector<llvm::Value *>::iterator exp_it = expanded.begin() + offset;
                        for (auto &a : exp_args_map[&*arg_it]) {
                            call_inst->setOperand(a->getArgNo(), *exp_it);
                            exp_it++;
                        }
                    } else {

                        if (is_array) {
                            op_it->set(expanded.at(offset));
                        } else {
                            if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(op->getType())) {
                                if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(
                                        ptr_ty->getElementType())) {
                                    for (unsigned idx = 0; idx != str_ty->getNumContainedTypes(); ++idx) {
                                        *(op_it + 1 + idx) = expanded.at(idx);
                                    }

                                    std::vector<llvm::Value *>::iterator exp_it = expanded.begin() + offset;
                                    for (auto &a : exp_args_map[&*arg_it]) {
                                        call_inst->setOperand(a->getArgNo(), *exp_it);
                                        exp_it++;
                                    }
                                }
                            }
                        }
                    }
                }
                op_idx++;
            }
        }
    }
}

void CustomScalarReplacementOfAggregatesPass::populate_inner_functions(llvm::Function *kernel_function,
                                                                       std::vector<llvm::Function *> &inner_functions) {
    // Initialize the inner function set with the kernel function (will be removed afterwards)
    inner_functions.push_back(kernel_function);

    // Loop over the inner functions inserting the called functions
    for (unsigned long long f_idx = 0; f_idx < inner_functions.size(); f_idx++) {
        llvm::Function *function = inner_functions.at(f_idx);

        // Loop over the basic blocks
        for (llvm::BasicBlock &bb : *function) {

            // Loop over the instructions
            for (llvm::Instruction &i : bb) {

                // Check if call site...
                if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(&i)) {

                    // ...not calling a memcpy
                    if (!llvm::isa<llvm::MemCpyInst>(call_inst)) {

                        // Initialize inner function begin and end iterators (used for the search)
                        std::vector<llvm::Function *>::iterator if_it_b = inner_functions.begin();
                        std::vector<llvm::Function *>::iterator if_it_e = inner_functions.end();

                        // Search whether the called function is already in the vector. Add it in case it does not
                        if (std::find(if_it_b, if_it_e, call_inst->getCalledFunction()) == if_it_e) {
                            inner_functions.push_back(call_inst->getCalledFunction());
                        }
                    }
                }
            }
        }
    }

    // Erase the kernel (needed for induction only)
    inner_functions.erase(inner_functions.begin());

} // end of populate_inner_functions

void CustomScalarReplacementOfAggregatesPass::expand_signatures_and_call_sites(
        std::vector<llvm::Function *> &inner_functions, std::map<llvm::Function *, llvm::Function *> &exp_fun_map,
        std::map<llvm::Function *, std::set<unsigned long long>> &exp_idx_args_map,
        std::map<llvm::Argument *, std::vector<llvm::Argument *>> &exp_args_map, llvm::Function *kernel_function) {

    // Loop through the inner functions:
    //  - recursively expanding the signatures
    //  - adapting the call sites those are called in
    for (llvm::Function *called_function : inner_functions) {

        // Keep the same return type
        llvm::Type *new_return_type = called_function->getFunctionType()->getReturnType();

        // Vector containing the new argument set
        std::vector<llvm::Type *> new_fun_args_tys = std::vector<llvm::Type *>();
        std::vector<llvm::Argument *> new_fun_args = std::vector<llvm::Argument *>();

        // Initialize the new argument vector with the previous arguments
        for (auto &a : called_function->args()) {
            new_fun_args.push_back(&a);
            new_fun_args_tys.push_back(a.getType());
        }

        // Loop through the argument vector expanding the aggregate elements
        for (unsigned long long v_idx = 0; v_idx < new_fun_args_tys.size(); v_idx++) {
            llvm::Type *element = new_fun_args_tys.at(v_idx);

            // If pointer
            if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(element)) {

                // Expand the arguments that:
                //  - have the dereferenceable attribute (first array dimension)
                //  - are structs
                //  - are arrays
                if (new_fun_args.at(v_idx) != nullptr and
                    new_fun_args.at(v_idx)->hasAttribute(llvm::Attribute::Dereferenceable)) {
                    llvm::Argument *arg = new_fun_args.at(v_idx);

                    bool canBeNull;
                    unsigned long long dBytes = arg->getPointerDereferenceableBytes(
                            arg->getParent()->getParent()->getDataLayout(), canBeNull);
                    unsigned long long eBytes =
                            arg->getParent()->getParent()->getDataLayout().getTypeSizeInBits(ptr_ty->getElementType()) /
                            8;
                    unsigned long long elements = dBytes / eBytes;

                    // Go through all of its elements and push them with null pointer values
                    for (int e_idx = 0; e_idx < elements; ++e_idx) {
                        new_fun_args_tys.insert(new_fun_args_tys.begin() + v_idx + 1 + e_idx,
                                                llvm::PointerType::getUnqual(ptr_ty->getElementType()));
                        new_fun_args.insert(new_fun_args.begin() + v_idx + 1 + e_idx, nullptr);
                    }
                } else if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {

                    // Go through all of its elements and push them with null pointer values
                    for (unsigned long long e_idx = 0; e_idx != str_ty->getNumContainedTypes(); ++e_idx) {
                        new_fun_args_tys.insert(new_fun_args_tys.begin() + v_idx + 1 + e_idx,
                                                llvm::PointerType::getUnqual(str_ty->getContainedType(e_idx)));
                        new_fun_args.insert(new_fun_args.begin() + v_idx + 1 + e_idx, nullptr);
                    }
                } else if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(ptr_ty->getElementType())) {

                    // Go through all of its elements and push them with null pointer values
                    for (unsigned long long e_idx = 0; e_idx != arr_ty->getNumContainedTypes(); ++e_idx) {
                        new_fun_args_tys.insert(new_fun_args_tys.begin() + v_idx + 1 + e_idx,
                                                llvm::PointerType::getUnqual(arr_ty->getContainedType(e_idx)));
                        new_fun_args.insert(new_fun_args.begin() + v_idx + 1 + e_idx, nullptr);
                    }
                }
            }
        }


        llvm::FunctionType *new_function_type = llvm::FunctionType::get(new_return_type, new_fun_args_tys, false);
        llvm::GlobalValue::LinkageTypes linkage = called_function->getLinkage();
        std::string new_function_name = called_function->getName().str() + ".csroa";

        // Create function prototype
        llvm::Function *new_function = llvm::Function::Create(new_function_type, linkage, new_function_name,
                                                              called_function->getParent());

        llvm::ValueToValueMapTy VMap;
        llvm::Function::arg_iterator DestI = new_function->arg_begin();

        unsigned long long arg_idx = 0;
        unsigned long long offset = 0;

        // Class used for recursively assigning argument names
        class ExpArgs {
        public:

            // Assigns argument names in a recursive way
            static void
            rec(std::string name, llvm::Type *ty, unsigned long long &arg_idx,
                llvm::Function::arg_iterator l_DestI, llvm::Function::arg_iterator &DestI,
                std::set<unsigned long long> &exp_idx_args_map_ref,
                std::map<llvm::Argument *, std::vector<llvm::Argument *>> &exp_args_map,
                llvm::Argument *called_arg) {

                if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(ty)) {

                    if (called_arg != nullptr and called_arg->hasAttribute(llvm::Attribute::Dereferenceable)) {
                        exp_idx_args_map_ref.insert(arg_idx - 1);

                        bool canBeNull;
                        unsigned long long dBytes = called_arg->getPointerDereferenceableBytes(
                                called_arg->getParent()->getParent()->getDataLayout(), canBeNull);
                        unsigned long long eBytes =
                                called_arg->getParent()->getParent()->getDataLayout().getTypeSizeInBits(
                                ptr_ty->getElementType()) / 8;
                        unsigned long long elements = dBytes / eBytes;

                        // Go through all of its elements and push them with null pointer values
                        for (int e_idx = 0; e_idx < elements; ++e_idx) {
                            std::string new_name = name + "." + std::to_string(e_idx);
                            DestI->setName(new_name);
                            exp_args_map[&*l_DestI].push_back(&*DestI);
                            llvm::Function::arg_iterator ll_DestI = DestI;
                            DestI++;
                            arg_idx++;

                            rec(new_name, llvm::PointerType::getUnqual(ptr_ty->getElementType()), arg_idx, ll_DestI,
                                DestI,
                                exp_idx_args_map_ref, exp_args_map, nullptr);
                        }
                    } else if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {
                        exp_idx_args_map_ref.insert(arg_idx - 1);
                        for (unsigned e_idx = 0; e_idx != str_ty->getNumContainedTypes(); ++e_idx) {
                            std::string new_name = name + "." + std::to_string(e_idx);
                            DestI->setName(new_name);
                            exp_args_map[&*l_DestI].push_back(&*DestI);
                            llvm::Function::arg_iterator ll_DestI = DestI;
                            DestI++;
                            arg_idx++;

                            rec(new_name, llvm::PointerType::getUnqual(str_ty->getElementType(e_idx)), arg_idx,
                                ll_DestI, DestI,
                                exp_idx_args_map_ref, exp_args_map, nullptr);
                        }
                    } else if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(ptr_ty->getElementType())) {
                        exp_idx_args_map_ref.insert(arg_idx - 1);
                        for (unsigned e_idx = 0; e_idx != arr_ty->getNumContainedTypes(); ++e_idx) {
                            std::string new_name = name + "." + std::to_string(e_idx);
                            DestI->setName(new_name);
                            exp_args_map[&*l_DestI].push_back(&*DestI);
                            llvm::Function::arg_iterator ll_DestI = DestI;
                            DestI++;
                            arg_idx++;

                            rec(new_name, llvm::PointerType::getUnqual(arr_ty->getElementType()), arg_idx, ll_DestI,
                                DestI,
                                exp_idx_args_map_ref, exp_args_map, nullptr);
                        }
                    }
                }
            }
        };

        std::set<unsigned long long> &exp_idx_args_map_ref = exp_idx_args_map[new_function];

        // Go through all the arguments mapping old and new ones
        for (auto &a : called_function->args()) {
            if (VMap.count(&a) == 0) {
                llvm::Function::arg_iterator l_DestI = DestI;
                DestI->setName(a.getName());
                VMap[&a] = &*DestI++;

                arg_idx++;

                ExpArgs::rec(a.getName(), a.getType(), arg_idx, l_DestI, DestI, exp_idx_args_map_ref, exp_args_map, &a);

            }
        }

        // Clone the function
        llvm::SmallVector<llvm::ReturnInst *, 8> returns;
        llvm::ClonedCodeInfo *codeInfo = nullptr;
        llvm::CloneFunctionInto(new_function, called_function, VMap, true, returns, "", codeInfo);

        // Track the function mapping (old->new)
        exp_fun_map[called_function] = new_function;

        // Do not preserve any analysis
        llvm::PreservedAnalyses::none();

        // Class used to recursively expand operands in call sites
        class op_rec {
        public:
            static void rec(llvm::Type *ty, llvm::Argument *arg, std::vector<llvm::Value *> &ops) {

                if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(ty)) {
                    if (arg != nullptr and arg->hasAttribute(llvm::Attribute::Dereferenceable)) {

                        bool canBeNull;
                        unsigned long long dBytes = arg->getPointerDereferenceableBytes(
                                arg->getParent()->getParent()->getDataLayout(), canBeNull);
                        unsigned long long eBytes = arg->getParent()->getParent()->getDataLayout().getTypeSizeInBits(
                                ptr_ty->getElementType()) / 8;
                        unsigned long long elements = dBytes / eBytes;

                        for (int e_idx = 0; e_idx < elements; ++e_idx) {
                            ops.push_back(llvm::ConstantPointerNull::get(
                                    llvm::PointerType::getUnqual(ptr_ty->getElementType())));

                            rec(llvm::PointerType::getUnqual(ptr_ty->getElementType()), nullptr, ops);
                        }
                    } else if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {

                        for (unsigned e_idx = 0; e_idx != str_ty->getNumContainedTypes(); ++e_idx) {

                            ops.push_back(llvm::ConstantPointerNull::get(
                                    llvm::PointerType::getUnqual(str_ty->getElementType(e_idx))));

                            rec(llvm::PointerType::getUnqual(str_ty->getElementType(e_idx)), nullptr, ops);
                        }
                    } else if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(ptr_ty->getElementType())) {

                        for (unsigned e_idx = 0; e_idx != arr_ty->getNumContainedTypes(); ++e_idx) {

                            ops.push_back(llvm::ConstantPointerNull::get(
                                    llvm::PointerType::getUnqual(arr_ty->getElementType())));

                            rec(llvm::PointerType::getUnqual(arr_ty->getElementType()), nullptr, ops);
                        }
                    }
                }
            }
        };

        // Expand the (uses) call sites
        for (auto user_it = called_function->user_begin(); user_it != called_function->user_end(); user_it++) {
            llvm::User *user = *user_it;

            // If the uses is a call instruction
            if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(user)) {

                // Expanded inner functions as a set
                std::set<llvm::Function *> inner_functions_exp;

                // Populate the set
                for (auto &i_f : inner_functions) {
                    inner_functions_exp.insert(i_f);
                }

                // If call site of an expanded function or kernel function
                if (inner_functions_exp.count(call_inst->getCalledFunction()) != 0 or
                    call_inst->getFunction() == kernel_function) {

                    // Recursively populate the operand vector, expanding with null pointers
                    std::vector<llvm::Value *> new_call_ops = std::vector<llvm::Value *>();
                    for (auto &op : call_inst->arg_operands()) {
                        llvm::Value *operand = op.get();
                        llvm::Argument *arg = nullptr;

                        llvm::Function::arg_iterator arg_it = called_function->arg_begin();

                        for (int i = 0; i < op.getOperandNo(); i++) {
                            arg_it++;
                        }
                        arg = &*arg_it;

                        new_call_ops.push_back(operand);

                        op_rec::rec(operand->getType(), arg, new_call_ops);
                    }

                    // Build the new call site
                    std::string new_call_name = call_inst->getName().str() + ".csroa";
                    llvm::CallInst *new_call_inst = llvm::CallInst::Create(new_function, new_call_ops,
                                                                           new_call_name,
                                                                           call_inst);

                    // Replace the old one
                    new_call_inst->takeName(call_inst);
                    call_inst->replaceAllUsesWith(new_call_inst);
                    call_inst->eraseFromParent();
                }
            }
        }
    }

} // end expand_signatures_and_call_sites

void
CustomScalarReplacementOfAggregatesPass::cleanup(
        std::map<llvm::Function *, std::set<unsigned long long>> &exp_idx_args_map,
        std::map<llvm::Function *, llvm::Function *> &exp_fun_map) {

    for (auto &i : inst_to_remove) {
        i->replaceAllUsesWith(llvm::UndefValue::get(i->getType()));
        i->eraseFromParent();
    }

    class CheckArg {
    private:
        static bool usedByArgsOnly(llvm::Argument *arg, std::set<llvm::Argument *> inspected_args) {

            if (inspected_args.count(arg) == 0) {

                inspected_args.insert(arg);

                for (auto &use : arg->uses()) {
                    if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(use.getUser())) {

                        llvm::Function::arg_iterator arg_it = call_inst->getCalledFunction()->arg_begin();

                        for (unsigned long long i = 0; i < use.getOperandNo(); i++) { arg_it++; }

                        if (!usedByArgsOnly(&*arg_it, inspected_args)) {
                            return false;
                        }
                    } else {
                        return false;
                    }
                }
            }

            return true;
        }

        static bool loadedOnly(llvm::Argument *arg, std::set<llvm::Argument *> inspected_args) {

            if (inspected_args.count(arg) == 0) {

                inspected_args.insert(arg);

                if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(arg->getType())) {
                    if (!ptr_ty->getElementType()->isAggregateType()) {

                        for (auto &use : arg->uses()) {

                            if (llvm::LoadInst *load_inst = llvm::dyn_cast<llvm::LoadInst>(use.getUser())) {
                                // nothing to do
                            } else if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(use.getUser())) {

                                llvm::Function::arg_iterator arg_it = call_inst->getCalledFunction()->arg_begin();

                                for (unsigned long long i = 0; i < use.getOperandNo(); i++) { arg_it++; }

                                if (!loadedOnly(&*arg_it, inspected_args)) {
                                    return false;
                                }

                            } else {
                                return false;
                            }
                        }
                    } else {
                        return false;
                    }
                } else {
                    return false;
                }
            }

            return true;
        }

    public:
        static bool usedByArgsOnly_wrapper(llvm::Argument *arg) {
            return usedByArgsOnly(arg, std::set<llvm::Argument *>());
        }

        static bool loadedOnly_wrapper(llvm::Argument *arg) {
            return loadedOnly(arg, std::set<llvm::Argument *>());
        }
    };

    struct sate_cmp {
        bool operator()(const std::pair<llvm::CallInst *, unsigned long long> &lhs,
                        const std::pair<llvm::CallInst *, unsigned long long> &rhs) const {
            if (lhs.first < rhs.first) {
                return true;
            } else if (lhs.first == rhs.first) {
                return lhs.second < rhs.second;
            } else {
                return false;
            }
        }
    };
    std::map<std::pair<llvm::CallInst *, unsigned long long>, llvm::Argument *, sate_cmp> scalar_args_to_expand;

    for (auto &f : exp_fun_map) {
        llvm::Function *function = f.second;

        // Create the new function type based on the recomputed parameters.
        std::vector<llvm::Type *> arg_tys;
        for (auto &a : function->args()) {

            if (exp_idx_args_map[function].count(a.getArgNo()) == 0) {
                if (!CheckArg::usedByArgsOnly_wrapper(&a)) {
                    if (CheckArg::loadedOnly_wrapper(&a)) {
                        arg_tys.push_back(a.getType()->getPointerElementType());
                    } else {
                        arg_tys.push_back(a.getType());
                    }
                }
            }
        }

        llvm::FunctionType *new_fun_ty = llvm::FunctionType::get(function->getReturnType(), arg_tys,
                                                                 function->isVarArg());

        std::string new_fun_name = function->getName().str() + ".clean";
        llvm::Function *new_function = llvm::Function::Create(new_fun_ty, function->getLinkage(), new_fun_name,
                                                              function->getParent());
        new_function->copyAttributesFrom(function);
        new_function->setComdat(function->getComdat());

        new_function->getBasicBlockList().splice(new_function->begin(), function->getBasicBlockList());

        std::set<llvm::Argument *> unused_args;
        std::set<llvm::Argument *> scalar_args;

        unsigned int i = 0;
        for (llvm::Function::arg_iterator fun_arg_it = function->arg_begin(), new_fun_arg_it = new_function->arg_begin();
             fun_arg_it != function->arg_end(); ++fun_arg_it, ++i) {

            if (exp_idx_args_map[function].count(fun_arg_it->getArgNo()) == 0) {
                if (!CheckArg::usedByArgsOnly_wrapper(&*fun_arg_it)) {
                    if (CheckArg::loadedOnly_wrapper(&*fun_arg_it)) {
                        llvm::LoadInst *li = nullptr;
                        for (auto &use : fun_arg_it->uses()) {
                            if (llvm::LoadInst *load_inst = llvm::dyn_cast<llvm::LoadInst>(use.getUser())) {
                                load_inst->replaceAllUsesWith(&*new_fun_arg_it);
                                li = load_inst;

                            } else if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(use.getUser())) {
                                scalar_args_to_expand.insert(
                                        std::make_pair(std::make_pair(call_inst, use.getOperandNo()),
                                                       &*new_fun_arg_it));
                                break;
                            } else {
                                llvm::errs() << "ERR\n";
                                exit(-1);
                            }
                        }

                        if (li != nullptr) {
                            li->eraseFromParent();
                        }

                        scalar_args.insert(&*fun_arg_it);
                        fun_arg_it->replaceAllUsesWith(llvm::UndefValue::get(fun_arg_it->getType()));
                    } else {
                        fun_arg_it->replaceAllUsesWith(&*new_fun_arg_it);
                    }
                    new_fun_arg_it->takeName(&*fun_arg_it);
                    ++new_fun_arg_it;
                } else {
                    unused_args.insert(&*fun_arg_it);
                    fun_arg_it->replaceAllUsesWith(llvm::Constant::getNullValue(fun_arg_it->getType()));
                }
            } else {
                fun_arg_it->replaceAllUsesWith(llvm::Constant::getNullValue(fun_arg_it->getType()));
            }
        }

        for (auto user_it = function->user_begin(); user_it != function->user_end(); user_it++) {
            llvm::User *user = *user_it;

            if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(user)) {

                std::vector<llvm::Value *> call_ops = std::vector<llvm::Value *>();
                for (auto &op : call_inst->arg_operands()) {
                    llvm::Value *operand = op.get();

                    llvm::Function::arg_iterator arg_it = call_inst->getCalledFunction()->arg_begin();

                    for (auto i = 0; i < op.getOperandNo(); i++) { arg_it++; }

                    if (exp_idx_args_map[function].count(arg_it->getArgNo()) == 0) {
                        if (unused_args.count(&*arg_it) == 0) {
                            if (scalar_args.count(&*arg_it) == 0) {
                                call_ops.push_back(operand);
                            } else {

                                auto to_exp_it = scalar_args_to_expand.find(
                                        std::make_pair(call_inst, arg_it->getArgNo()));

                                if (to_exp_it == scalar_args_to_expand.end()) {
                                    std::string new_load_name =
                                            call_inst->getName().str() + ".load." + std::to_string(i);
                                    llvm::LoadInst *load_inst = new llvm::LoadInst(operand, new_load_name, call_inst);

                                    call_ops.push_back(load_inst);
                                } else {
                                    call_ops.push_back(to_exp_it->second);
                                }
                            }
                        }
                    }
                }

                std::string new_call_name = call_inst->getName().str() + ".clean";
                llvm::CallInst *new_call_inst = llvm::CallInst::Create(new_function, call_ops, new_call_name,
                                                                       call_inst);

                call_inst->replaceAllUsesWith(new_call_inst);
                call_inst->eraseFromParent();
            } else {
                llvm::errs() << "Funsction use should be call\n";
                exit(-1);
            }
        }

        function->eraseFromParent();
    }

} // end cleanup

CustomScalarReplacementOfAggregatesPass *createCustomScalarReplacementOfAggregatesPass(std::string kernel_name) {
    return new CustomScalarReplacementOfAggregatesPass(kernel_name);
}
