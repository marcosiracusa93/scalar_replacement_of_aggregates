//
// Created by Marco Siracusa on 2/27/19.
//

#include <llvm/Support/Debug.h>
#include <llvm/Support/raw_ostream.h>
#include "llvm/IR/Constants.h"

#define DEBUG_TYPE "csroa"

#include "CustomScalarReplacementOfAggregatesPass.hpp"

bool CustomScalarReplacementOfAggregatesPass::runOnModule(llvm::Module &module) {

    llvm::Function *kernel_function = module.getFunction(kernel_name);

    assert(kernel_function != nullptr && "Unknown kernel function!");

    processArguments(kernel_function);

    return true;
}

void CustomScalarReplacementOfAggregatesPass::getAnalysisUsage(llvm::AnalysisUsage &AU) const {

}

void CustomScalarReplacementOfAggregatesPass::processArguments(llvm::Function *function) {

    for (auto &arg : function->args()) {
        if (!arg.hasByValAttr()) {

            if (llvm::PointerType *ptr_arg = llvm::dyn_cast<llvm::PointerType>(arg.getType())) {
                if (llvm::StructType *str_ptr = llvm::dyn_cast<llvm::StructType>(ptr_arg->getPointerElementType())) {
                    std::vector<llvm::Value *> expanded = std::vector<llvm::Value *>(str_ptr->getNumContainedTypes(),
                                                                                     nullptr);
                    expandValue(&arg, &arg, str_ptr, expanded);
                }
            }
        }
    }

    return;
}

void CustomScalarReplacementOfAggregatesPass::expandValue(llvm::Value *use, llvm::Value *prev, llvm::StructType *str,
                                                          std::vector<llvm::Value *> &expanded) {

    if (true) {//llvm::PointerType *val_ptr = llvm::dyn_cast<llvm::PointerType>(prev->getType())) {
        if (true) {//llvm::StructType *str = llvm::dyn_cast<llvm::StructType>(val_ptr->getPointerElementType())) {

            if (llvm::Argument *arg = llvm::dyn_cast<llvm::Argument>(use)) {
                llvm::Function *function = arg->getParent();

                expanded.clear();
                for (unsigned idx = 0; idx != str->getNumContainedTypes(); ++idx) {
                    llvm::Type *element = str->getContainedType(idx);

                    llvm::Type *new_arg_type = llvm::PointerType::getUnqual(element);
                    std::string new_arg_name = arg->getName().str() + ".csroa.arg." + std::to_string(idx);
                    llvm::Argument *new_arg = new llvm::Argument(new_arg_type, new_arg_name, function);

                    expanded.insert(expanded.begin() + idx, new_arg);
                }
/*
                // https://stackoverflow.com/questions/22494422/adding-an-argument-to-a-function-in-llvm

                for (auto user_it = function->user_begin(); user_it != function->user_end(); user_it++) {
                    llvm::User *user = *user_it;

                    if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(user)) {
                        std::vector<llvm::Value*> args = std::vector<llvm::Value*>();
                        args.insert(args.begin(), call_inst->arg_operands().begin(), call_inst->arg_operands().end());
llvm::errs() << "A1:\n";
for(auto &a : args) {
    a->dump();
}
llvm::errs() << "A1********\n";

                        if (llvm::AllocaInst *alloca_inst = llvm::dyn_cast<llvm::AllocaInst>(call_inst->getOperand(arg->getArgNo()))) {
                            for (unsigned idx = 0; idx != str->getNumContainedTypes(); ++idx) {
                                llvm::Type *element = str->getContainedType(idx);

                                llvm::Type *new_alloca_type = llvm::PointerType::getUnqual(element);
                                std::string new_alloca_name =
                                        alloca_inst->getName().str() + ".csroa.alloca." + std::to_string(idx);
                                llvm::AllocaInst *new_alloca_inst = new llvm::AllocaInst(new_alloca_type,
                                                                                         new_alloca_name, alloca_inst);

                                args.push_back(new_alloca_inst);
                            }

llvm::errs() << "A2:\n";
for(auto &a : args) {
    a->dump();
}
llvm::errs() << "A2********\n";

                            std::string new_name = call_inst->getName().str() + ".csroa.call";
                            //llvm::CallInst *new_call_inst = llvm::CallInst::Create(function, args, new_name, call_inst);
                        }
                    }
                }
*/
                for (auto user_it = arg->user_begin(); user_it != arg->user_end(); user_it++) {
                    llvm::User *user = *user_it;

                    expandValue(user, arg, str, expanded);
                }
            } else if (llvm::StoreInst *store_inst = llvm::dyn_cast<llvm::StoreInst>(use)) {

                if (store_inst->getValueOperand() == prev) {
                    llvm::Function *function = store_inst->getFunction();

                    std::vector<llvm::Value *> expanded_val = expanded;

                    expandValue(store_inst->getPointerOperand(), prev, str, expanded);

                    std::vector<llvm::Value *> expanded_ptr = expanded;

                    expanded.clear();
                    for (unsigned idx = 0; idx != str->getNumContainedTypes(); ++idx) {
                        llvm::Type *element = str->getContainedType(idx);

                        llvm::Type *new_store_type = llvm::PointerType::getUnqual(element);
                        std::string new_store_name =
                                store_inst->getName().str() + ".csroa.store." + std::to_string(idx);
                        llvm::StoreInst *new_store_inst = new llvm::StoreInst(expanded_val.at(idx),
                                                                              expanded_ptr.at(idx),
                                                                              store_inst);

                        expanded.insert(expanded.begin() + idx, new_store_inst);
                    }
                }
            } else if (llvm::AllocaInst *alloca_inst = llvm::dyn_cast<llvm::AllocaInst>(use)) {

                expanded.clear();

                for (unsigned idx = 0; idx != str->getNumContainedTypes(); ++idx) {
                    llvm::Type *element = str->getContainedType(idx);

                    llvm::Type *new_alloca_type = llvm::PointerType::getUnqual(element);
                    std::string new_alloca_name = alloca_inst->getName().str() + ".csroa.alloca." + std::to_string(idx);
                    llvm::AllocaInst *new_alloca_inst = new llvm::AllocaInst(new_alloca_type, new_alloca_name,
                                                                             alloca_inst);

                    expanded.insert(expanded.begin() + idx, new_alloca_inst);
                }

                for (auto user_it = alloca_inst->user_begin(); user_it != alloca_inst->user_end(); user_it++) {
                    llvm::User *user = *user_it;

                    expandValue(user, alloca_inst, str, expanded);
                }
            } else if (llvm::LoadInst *load_inst = llvm::dyn_cast<llvm::LoadInst>(use)) {
                llvm::Function *function = load_inst->getFunction();

                std::vector<llvm::Value *> expanded_val = expanded;
                std::vector<llvm::Value *> expanded_res = std::vector<llvm::Value *>(str->getNumContainedTypes(),
                                                                                     nullptr);

                for (unsigned idx = 0; idx != str->getNumContainedTypes(); ++idx) {
                    llvm::Type *element = str->getContainedType(idx);

                    llvm::Type *new_load_type = llvm::PointerType::getUnqual(element);
                    std::string new_load_name = load_inst->getName().str() + ".csroa.load." + std::to_string(idx) + ".";

                    llvm::LoadInst *new_load_inst = new llvm::LoadInst(expanded_val.at(idx), new_load_name, load_inst);

                    expanded_res.insert(expanded_res.begin() + idx, new_load_inst);
                }

                for (auto user_it = load_inst->user_begin(); user_it != load_inst->user_end(); user_it++) {
                    llvm::User *user = *user_it;

                    expandValue(user, load_inst, str, expanded_res);
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
                                llvm::Type *new_type = llvm::dyn_cast<llvm::PointerType>(
                                        ptr->getType()->getScalarType())->getElementType();
                                llvm::GetElementPtrInst *new_gep_inst = llvm::GetElementPtrInst::Create(new_type, ptr,
                                                                                                        ops, new_name,
                                                                                                        gep_inst);

                                gep_inst->replaceAllUsesWith(new_gep_inst);
                            }
                        }
                    }
                }
            } else if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(use)) {

            }
        }
    }
}


CustomScalarReplacementOfAggregatesPass *createCustomScalarReplacementOfAggregatesPass(std::string kernel_name) {
    return new CustomScalarReplacementOfAggregatesPass(kernel_name);
}