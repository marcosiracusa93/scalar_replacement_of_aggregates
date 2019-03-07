//
// Created by Marco Siracusa on 2/27/19.
//

#include <llvm/Support/Debug.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/IR/IntrinsicInst.h>
#include <llvm/Transforms/Utils/Cloning.h>

#define DEBUG_TYPE "csroa"

#include "CustomScalarReplacementOfAggregatesPass.hpp"

bool CustomScalarReplacementOfAggregatesPass::runOnModule(llvm::Module &module) {

    llvm::Function *kernel_function = module.getFunction(kernel_name);

    assert(kernel_function != nullptr && "Unknown kernel function!");

    processFunction(kernel_function);

    return true;
}

void CustomScalarReplacementOfAggregatesPass::getAnalysisUsage(llvm::AnalysisUsage &AU) const {

}

void CustomScalarReplacementOfAggregatesPass::processFunction(llvm::Function *function) {
/*
    for (auto &arg : function->args()) {
        if (!arg.hasByValAttr() or true) {

            if (llvm::PointerType *ptr_arg = llvm::dyn_cast<llvm::PointerType>(arg.getType())) {
                if (llvm::StructType *str_ptr = llvm::dyn_cast<llvm::StructType>(ptr_arg->getPointerElementType())) {
                    std::vector<llvm::Value *> expanded = std::vector<llvm::Value *>(str_ptr->getNumContainedTypes(),
                                                                                     nullptr);
                    expandValue(&arg, &arg, str_ptr, expanded);
                }
            }
        }
    }
*/

    for (auto &bb : *function) {
        for (auto &i : bb) {
            if (llvm::AllocaInst *alloca_inst = llvm::dyn_cast<llvm::AllocaInst>(&i)) {
                if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(alloca_inst->getAllocatedType())) {

                    std::vector<llvm::Value *> expanded = std::vector<llvm::Value *>();

                    expandValue(alloca_inst, alloca_inst, str_ty, expanded);

                }
            }
        }
    }
}

void CustomScalarReplacementOfAggregatesPass::expandValue(llvm::Value *use, llvm::Value *prev, llvm::StructType *str,
                                                          std::vector<llvm::Value *> &expanded) {

    if (llvm::AllocaInst *alloca_inst = llvm::dyn_cast<llvm::AllocaInst>(use)) {

        expanded.clear();

        for (unsigned idx = 0; idx != str->getNumContainedTypes(); ++idx) {
            llvm::Type *element = str->getContainedType(idx);

            llvm::Type *new_alloca_type = llvm::PointerType::getUnqual(element);
            std::string new_alloca_name = alloca_inst->getName().str() + ".csroa.alloca." + std::to_string(idx);
            llvm::AllocaInst *new_alloca_inst = new llvm::AllocaInst(/*new_alloca_type*/ element, new_alloca_name,
                                                                                         alloca_inst);

            expanded.insert(expanded.begin() + idx, new_alloca_inst);
        }

        for (auto user_it = alloca_inst->user_begin(); user_it != alloca_inst->user_end(); user_it++) {
            llvm::User *user = *user_it;

            std::vector<llvm::Value *> expanded_val = expanded;

            expandValue(user, alloca_inst, str, expanded_val);
        }
    } else if (llvm::GetElementPtrInst *gep_inst = llvm::dyn_cast<llvm::GetElementPtrInst>(use)) {
        if (gep_inst->getPointerOperand() == prev) {
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
                            llvm::GetElementPtrInst *new_gep_inst = llvm::GetElementPtrInst::Create(new_type, ptr,
                                                                                                    ops, new_name,
                                                                                                    gep_inst);

                            gep_inst->replaceAllUsesWith(new_gep_inst);
                        } else {
                            gep_inst->replaceAllUsesWith(ptr);
                        }
                    }
                }
            }
        }
    } else if (llvm::BitCastInst *bitcast_inst = llvm::dyn_cast<llvm::BitCastInst>(use)) {

        std::vector<llvm::Value *> expanded_val = expanded;

        expanded.clear();

        for (unsigned idx = 0; idx != str->getNumContainedTypes(); ++idx) {
            llvm::Type *element = str->getContainedType(idx);

            llvm::Type *new_bitcast_type = llvm::PointerType::getUnqual(element);
            std::string new_bitcast_name = bitcast_inst->getName().str() + ".csroa.bitcast." + std::to_string(idx);
            llvm::BitCastInst *new_bitcast_inst = new llvm::BitCastInst(/*new_bitcast_type*/
                    expanded_val.at(idx), /*expanded_val.at(idx)->getType()*/bitcast_inst->getDestTy(),
                    new_bitcast_name, bitcast_inst);

            expanded.insert(expanded.begin() + idx, new_bitcast_inst);
        }

        for (auto user_it = bitcast_inst->user_begin(); user_it != bitcast_inst->user_end(); user_it++) {
            llvm::User *user = *user_it;

            expandValue(user, bitcast_inst, str, expanded);
        }
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

                for (unsigned idx = 0; idx != str->getNumContainedTypes(); ++idx) {
                    llvm::Type *element = str->getContainedType(idx);

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
                            alloca_inst->getName().str() + ".csroa.bitcast.memcpy." + std::to_string(idx);
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
            }
        } else {
            llvm::Type *new_type = called_function->getFunctionType()->getReturnType();

            for (auto c2c_it = exp_call_map.begin(); c2c_it != exp_call_map.end(); c2c_it++) {
                if (call_inst == c2c_it->second) {
                    return;
                }
            }

            std::vector<llvm::Type *> new_fun_args = std::vector<llvm::Type *>();
            std::vector<llvm::Value *> new_call_args = std::vector<llvm::Value *>();

            call_to_call_map_ty::iterator c2c_it = exp_call_map.find(call_inst);

            llvm::CallInst *call_to_use = nullptr;
            if (c2c_it == exp_call_map.end()) {
                for (auto &a : called_function->args()) {
                    new_fun_args.push_back(a.getType());
                    new_call_args.push_back(call_inst->getOperand(a.getArgNo()));
                    if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(a.getType())) {
                        if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {
                            for (unsigned idx = 0; idx != str_ty->getNumContainedTypes(); ++idx) {
                                new_fun_args.push_back(llvm::PointerType::getUnqual(str_ty->getContainedType(idx)));
                                new_call_args.push_back(llvm::ConstantPointerNull::get(
                                        llvm::PointerType::getUnqual(str_ty->getContainedType(idx))));
                            }
                        }
                    }
                }

                fun_to_fun_map_ty::iterator f2f_it = exp_fun_map.find(called_function);

                llvm::Function *fun_to_call = nullptr;
                if (f2f_it == exp_fun_map.end()) {

                    llvm::FunctionType *new_function_type = llvm::FunctionType::get(new_type, new_fun_args, false);
                    llvm::GlobalValue::LinkageTypes linkage = called_function->getLinkage();
                    std::string new_function_name = called_function->getName().str() + ".csroa.";
                    llvm::Function *new_function = llvm::Function::Create(new_function_type, linkage, new_function_name,
                                                                          called_function->getParent());

                    llvm::ValueToValueMapTy VMap;
                    llvm::Function::arg_iterator DestI = new_function->arg_begin();
                    for (auto &a : called_function->args()) {
                        if (VMap.count(&a) == 0) {
                            DestI->setName(a.getName());
                            VMap[&a] = &*DestI++;

                            if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(a.getType())) {
                                if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(
                                        ptr_ty->getElementType())) {
                                    for (unsigned idx = 0; idx != str_ty->getNumContainedTypes(); ++idx) {
                                        DestI->setName(a.getName().str() + "." + std::to_string(idx));
                                        DestI++;
                                    }
                                }
                            }
                        }
                    }

                    llvm::SmallVector<llvm::ReturnInst *, 8> returns;
                    llvm::ClonedCodeInfo *codeInfo;
                    llvm::CloneFunctionInto(new_function, called_function, VMap, true, returns, "", codeInfo);
                    llvm::PreservedAnalyses::none();

                    exp_fun_map.insert(std::make_pair(called_function, new_function));
                    fun_to_call = new_function;
                } else {
                    fun_to_call = f2f_it->second;
                }

                std::string new_call_name = call_inst->getName().str() + ".csroa";

                llvm::CallInst *new_call_inst = llvm::CallInst::Create(fun_to_call, new_call_args, new_call_name,
                                                                       call_inst);

                exp_call_map[call_inst] = new_call_inst;

                call_to_use = new_call_inst;
            } else {
                call_to_use = c2c_it->second;
            }

            for (auto op_it = call_to_use->op_begin(); op_it != call_to_use->op_end(); op_it++) {
                llvm::Value *op = *op_it;

                if (op == prev) {
                    if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(op->getType())) {
                        if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {
                            for (unsigned idx = 0; idx != str_ty->getNumContainedTypes(); ++idx) {
                                *(op_it + 1 + idx) = expanded.at(idx);
                            }
                        }
                    }
                }
            }

            llvm::PreservedAnalyses::none();
        }
    }
}


CustomScalarReplacementOfAggregatesPass *createCustomScalarReplacementOfAggregatesPass(std::string kernel_name) {
    return new CustomScalarReplacementOfAggregatesPass(kernel_name);
}