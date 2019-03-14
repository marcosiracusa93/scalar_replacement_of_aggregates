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

    std::vector<llvm::Function *> inner_functions = std::vector<llvm::Function *>();
    std::map<llvm::Function *, std::set<unsigned long long>> exp_args_map;
    std::map<llvm::Function *, llvm::Function *> exp_fun_map;

    inner_functions.push_back(kernel_function);

    for (unsigned long long f_idx = 0; f_idx < inner_functions.size(); f_idx++) {
        llvm::Function *function = inner_functions.at(f_idx);

        for (llvm::BasicBlock &bb : *function) {
            for (llvm::Instruction &i : bb) {
                if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(&i)) {
                    if (!llvm::isa<llvm::MemCpyInst>(call_inst)) {

                        std::vector<llvm::Function *>::iterator if_it_b = inner_functions.begin();
                        std::vector<llvm::Function *>::iterator if_it_e = inner_functions.end();

                        if (std::find(if_it_b, if_it_e, call_inst->getCalledFunction()) == if_it_e) {
                            inner_functions.push_back(call_inst->getCalledFunction());
                        }
                    }
                }
            }
        }
    }

    inner_functions.erase(inner_functions.begin());

    for (llvm::Function *called_function : inner_functions) {

        llvm::Type *new_return_type = called_function->getFunctionType()->getReturnType();

        std::vector<llvm::Type *> new_fun_args = std::vector<llvm::Type *>();

        for (auto &a : called_function->args()) {
            new_fun_args.push_back(a.getType());
        }

        for (unsigned long long v_idx = 0; v_idx < new_fun_args.size(); v_idx++) {
            llvm::Type *element = new_fun_args.at(v_idx);
            if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(element)) {
                if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {
                    for (unsigned long long e_idx = 0; e_idx != str_ty->getNumContainedTypes(); ++e_idx) {
                        new_fun_args.insert(new_fun_args.begin() + v_idx + 1 + e_idx,
                                            llvm::PointerType::getUnqual(str_ty->getContainedType(e_idx)));
                    }
                }
            }
        }

        llvm::FunctionType *new_function_type = llvm::FunctionType::get(new_return_type, new_fun_args, false);
        llvm::GlobalValue::LinkageTypes linkage = called_function->getLinkage();
        std::string new_function_name = called_function->getName().str() + ".csroa";

        llvm::Function *new_function = llvm::Function::Create(new_function_type, linkage, new_function_name,
                                                              called_function->getParent());

        llvm::ValueToValueMapTy VMap;
        llvm::Function::arg_iterator DestI = new_function->arg_begin();

        unsigned long long arg_idx = 0;
        unsigned long long offset = 0;

        class arg_rec {
        public:
            static void
            rec(std::string name, llvm::Type *ty, unsigned long long &arg_idx, llvm::Function::arg_iterator &DestI,
                std::set<unsigned long long> &exp_args_map_ref) {
                if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(ty)) {
                    if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {
                        exp_args_map_ref.insert(arg_idx - 1);
                        for (unsigned idx = 0; idx != str_ty->getNumContainedTypes(); ++idx) {
                            std::string new_name = name + "." + std::to_string(idx);
                            DestI->setName(new_name);
                            DestI++;
                            arg_idx++;

                            rec(new_name, llvm::PointerType::getUnqual(str_ty->getElementType(idx)), arg_idx, DestI,
                                exp_args_map_ref);
                        }
                    }
                }
            }
        };

        std::set<unsigned long long> &exp_args_map_ref = exp_args_map[new_function];

        for (auto &a : called_function->args()) {
            if (VMap.count(&a) == 0) {
                DestI->setName(a.getName());
                VMap[&a] = &*DestI++;

                arg_idx++;

                arg_rec::rec(a.getName(), a.getType(), arg_idx, DestI, exp_args_map_ref);

            }
        }

        llvm::SmallVector<llvm::ReturnInst *, 8> returns;
        llvm::ClonedCodeInfo *codeInfo = nullptr;
        llvm::CloneFunctionInto(new_function, called_function, VMap, true, returns, "", codeInfo);

        exp_fun_map[called_function] = new_function;

        llvm::PreservedAnalyses::none();

        class op_rec {
        public:
            static void rec(llvm::Type *ty, std::vector<llvm::Value *> &ops) {

                if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(ty)) {
                    if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {

                        for (unsigned idx = 0; idx != str_ty->getNumContainedTypes(); ++idx) {

                            ops.push_back(llvm::ConstantPointerNull::get(
                                    llvm::PointerType::getUnqual(str_ty->getElementType(idx))));

                            rec(llvm::PointerType::getUnqual(str_ty->getElementType(idx)), ops);
                        }
                    }
                }
            }
        };

        for (auto user_it = called_function->user_begin(); user_it != called_function->user_end(); user_it++) {
            llvm::User *user = *user_it;

            if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(user)) {

                std::set<llvm::Function *> inner_functions_exp;

                for (auto &i_f : inner_functions) {
                    inner_functions_exp.insert(i_f);
                }

                if (inner_functions_exp.count(call_inst->getCalledFunction()) != 0 or
                    call_inst->getFunction() == kernel_function) {

                    std::vector<llvm::Value *> new_call_ops = std::vector<llvm::Value *>();
                    for (auto &op : call_inst->arg_operands()) {
                        llvm::Value *operand = op.get();

                        new_call_ops.push_back(operand);

                        op_rec::rec(operand->getType(), new_call_ops);
                    }

                    std::string new_call_name = call_inst->getName().str() + ".csroa";
                    llvm::CallInst *new_call_inst = llvm::CallInst::Create(new_function, new_call_ops,
                                                                           new_call_name,
                                                                           call_inst);

                    new_call_inst->takeName(call_inst);
                    call_inst->replaceAllUsesWith(new_call_inst);
                    call_inst->eraseFromParent();
                }
            }
        }
    }

    processFunction(kernel_function);

    for (auto &f : exp_fun_map) {
        llvm::Function *exp_fun = f.second;

        expandArguments(nullptr, exp_fun, exp_args_map.at(exp_fun));

        processFunction(exp_fun);
    }

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

    for (auto &f : exp_fun_map) {
        llvm::Function *function = f.second;

        // Create the new function type based on the recomputed parameters.
        std::vector<llvm::Type *> arg_tys;
        for (auto &a : function->args()) {

            if (exp_args_map[function].count(a.getArgNo()) == 0) {
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

            if (exp_args_map[function].count(fun_arg_it->getArgNo()) == 0) {
                if (!CheckArg::usedByArgsOnly_wrapper(&*fun_arg_it)) {
                    if (CheckArg::loadedOnly_wrapper(&*fun_arg_it)) {
                        for (auto &use : fun_arg_it->uses()) {
                            if (llvm::LoadInst *load_inst = llvm::dyn_cast<llvm::LoadInst>(use.getUser())) {
                                load_inst->replaceAllUsesWith(&*new_fun_arg_it);
                                inst_to_remove.insert(load_inst);
                            } else if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(use.getUser())) {
                                // TODO manage it
                                llvm::errs() << "ERR\n";
                                exit(-1);
                            } else {
                                llvm::errs() << "ERR\n";
                                exit(-1);
                            }
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

                    if (exp_args_map[function].count(arg_it->getArgNo()) == 0) {
                        if (unused_args.count(&*arg_it) == 0) {
                            if (scalar_args.count(&*arg_it) == 0) {
                                call_ops.push_back(operand);
                            } else {
                                std::string new_load_name = call_inst->getName().str() + ".load." + std::to_string(i);
                                llvm::LoadInst *load_inst = new llvm::LoadInst(operand, new_load_name, call_inst);

                                call_ops.push_back(load_inst);
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

    return true;
}

void CustomScalarReplacementOfAggregatesPass::getAnalysisUsage(llvm::AnalysisUsage &AU) const {

}

void CustomScalarReplacementOfAggregatesPass::processFunction(llvm::Function *function) {

    std::set<llvm::AllocaInst *> alloca_vec = std::set<llvm::AllocaInst *>();

    while (true) {

        std::set<llvm::AllocaInst *> i_alloca_vec = std::set<llvm::AllocaInst *>();

        for (auto &bb : *function) {
            for (auto &i : bb) {
                if (llvm::AllocaInst *alloca_inst = llvm::dyn_cast<llvm::AllocaInst>(&i)) {
                    if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(alloca_inst->getAllocatedType())) {
                        if (alloca_vec.count(alloca_inst) == 0) {
                            i_alloca_vec.insert(alloca_inst);
                            alloca_vec.insert(alloca_inst);
                        }
                    }
                }
            }
        }

        if (i_alloca_vec.size() == 0) { break; }

        for (auto &a : i_alloca_vec) {
            if (llvm::AllocaInst *alloca_inst = llvm::dyn_cast<llvm::AllocaInst>(a)) {
                if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(alloca_inst->getAllocatedType())) {
                    std::vector<llvm::Value *> expanded = std::vector<llvm::Value *>();

                    expandValue(alloca_inst, alloca_inst, str_ty, expanded);
                }
            }
        }
    }
}

void
CustomScalarReplacementOfAggregatesPass::expandArguments(llvm::Function *called_function, llvm::Function *new_function,
                                                         std::set<unsigned long long> arg_map) {

    for (auto &a : arg_map) {
        auto arg_it = new_function->arg_begin();

        for (int i = 0; i < a; i++) { ++arg_it; }
        llvm::Argument *arg = &*arg_it;

        if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(arg->getType())) {
            if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {

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

void CustomScalarReplacementOfAggregatesPass::expandValue(llvm::Value *use, llvm::Value *prev, llvm::StructType *str,
                                                          std::vector<llvm::Value *> &expanded) {

    if (llvm::Argument *arg = llvm::dyn_cast<llvm::Argument>(use)) {

        for (auto user_it = arg->user_begin(); user_it != arg->user_end(); user_it++) {
            llvm::User *user = *user_it;

            std::vector<llvm::Value *> expanded_val = expanded;

            expandValue(user, arg, str, expanded_val);
        }
    } else if (llvm::AllocaInst *alloca_inst = llvm::dyn_cast<llvm::AllocaInst>(use)) {

        expanded.clear();

        alloca_to_remove[alloca_inst->getFunction()].insert(alloca_inst);

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

        //alloca_inst->replaceAllUsesWith(llvm::UndefValue::get(alloca_inst->getType()));
        inst_to_remove.insert(alloca_inst);

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

                        inst_to_remove.insert(gep_inst);
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
            std::string new_bitcast_name = prev->getName().str() + "." + std::to_string(idx) + ".csroa.bitcast";
            llvm::BitCastInst *new_bitcast_inst = new llvm::BitCastInst(/*new_bitcast_type*/
                    expanded_val.at(idx), /*expanded_val.at(idx)->getType()*/bitcast_inst->getDestTy(),
                    new_bitcast_name, bitcast_inst);

            expanded.insert(expanded.begin() + idx, new_bitcast_inst);
        }

        for (auto user_it = bitcast_inst->user_begin(); user_it != bitcast_inst->user_end(); user_it++) {
            llvm::User *user = *user_it;

            expandValue(user, bitcast_inst, str, expanded);
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

            for (auto op_it = call_inst->op_begin(); op_it != call_inst->op_end(); op_it++) {
                llvm::Value *op = *op_it;

                if (op == prev) {
                    if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(op->getType())) {
                        if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {
                            for (unsigned idx = 0; idx != str_ty->getNumContainedTypes(); ++idx) {
                                *(op_it + 1 + idx) = expanded.at(idx);
                            }
                            break;
                        }
                    }
                }
            }

            /*
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

                    std::vector<unsigned long long> arg_map = std::vector<unsigned long long>();
                    unsigned long long arg_idx = 0;
                    for (auto &a : called_function->args()) {
                        if (VMap.count(&a) == 0) {
                            DestI->setName(a.getName());
                            VMap[&a] = &*DestI++;
                            arg_map.push_back(arg_idx);
                            arg_idx++;

                            if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(a.getType())) {
                                if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(
                                        ptr_ty->getElementType())) {
                                    for (unsigned idx = 0; idx != str_ty->getNumContainedTypes(); ++idx) {
                                        DestI->setName(a.getName().str() + "." + std::to_string(idx));
                                        DestI++;
                                        arg_idx++;
                                    }
                                }
                            }
                        }
                    }

                    llvm::SmallVector<llvm::ReturnInst *, 8> returns;
                    llvm::ClonedCodeInfo *codeInfo = nullptr;
                    llvm::CloneFunctionInto(new_function, called_function, VMap, true, returns, "", codeInfo);
                    llvm::PreservedAnalyses::none();

                    exp_fun_map.insert(std::make_pair(called_function, new_function));

                    expandArguments(called_function, new_function, arg_map);
                    fun_to_call = new_function;
                } else {
                    fun_to_call = f2f_it->second;
                }

                std::string new_call_name = call_inst->getName().str() + ".csroa";

                llvm::CallInst *new_call_inst = llvm::CallInst::Create(fun_to_call, new_call_args, new_call_name,
                                                                       call_inst);

                // CLEAN call_inst->replaceAllUsesWith(new_call_inst);

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

            inst_to_remove.insert(call_inst);

            llvm::PreservedAnalyses::none();
            */
        }

    }
}


CustomScalarReplacementOfAggregatesPass *createCustomScalarReplacementOfAggregatesPass(std::string kernel_name) {
    return new CustomScalarReplacementOfAggregatesPass(kernel_name);
}