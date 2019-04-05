/*
 *
 *                   _/_/_/    _/_/   _/    _/ _/_/_/    _/_/
 *                  _/   _/ _/    _/ _/_/  _/ _/   _/ _/    _/
 *                 _/_/_/  _/_/_/_/ _/  _/_/ _/   _/ _/_/_/_/
 *                _/      _/    _/ _/    _/ _/   _/ _/    _/
 *               _/      _/    _/ _/    _/ _/_/_/  _/    _/
 *
 *             ***********************************************
 *                              PandA Project
 *                     URL: http://panda.dei.polimi.it
 *                       Politecnico di Milano - DEIB
 *                        System Architectures Group
 *             ***********************************************
 *              Copyright (C) 2018-2019 Politecnico di Milano
 *
 *   This file is part of the PandA framework.
 *
 *   The PandA framework is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 3 of the License, or
 *  (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
/*
 * The implementation performs scalar replacement of aggregates.
 *
 * @author Marco Siracusa <marco.siracusa@mail.polimi.it>
 *
 */

#include <llvm/Support/Debug.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/IR/IntrinsicInst.h>
#include <llvm/Transforms/Utils/Cloning.h>
#include <llvm/Analysis/ScalarEvolution.h>
#include <llvm/Analysis/ScalarEvolutionExpressions.h>

#include <llvm/Transforms/Utils/BasicBlockUtils.h>

#define DEBUG_TYPE "csroa"

#include "CustomScalarReplacementOfAggregatesPass.hpp"


bool CustomScalarReplacementOfAggregatesPass::runOnModule(llvm::Module &module) {

    module.dump();

    llvm::Function *kernel_function = module.getFunction(kernel_name);

    assert(kernel_function != nullptr && "Unknown kernel function!");

    std::vector<llvm::Function *> inner_functions;

    // Compute the inner functions, replicating those on call sites
    replicate_calls(kernel_function, inner_functions);

    // Get the size of the arrays called by the inner functions
    get_array_size_of_arguments(inner_functions);

    // Get the size of the arrays called by the kernel function
    //get_array_size_of_arguments(std::vector<llvm::Function*>(1, kernel_function));

    // Map specifying the expanded arguments for each function
    std::map<llvm::Function *, std::set<unsigned long long>> exp_idx_args_map;
    // Map linking any function with its modified version
    std::map<llvm::Function *, llvm::Function *> exp_fun_map;

    // Expand aggregate elements in signatures and in call sites (use nullptrs for expanded arguments)
    expand_signatures_and_call_sites(inner_functions, exp_fun_map, exp_idx_args_map, kernel_function);

    for (llvm::Function *f : inner_functions) {
        llvm::Function *nf = exp_fun_map[f];

        expand_allocas(nf);

        expand_arguments(nf);
    }

    expand_allocas(kernel_function);

    return true;

/*
    module.dump();

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

    // Get the size of the arrays called by the inner functions
    get_array_size_of_arguments(inner_functions);

    // Expand aggregate elements in signatures and in call sites (use nullptrs for expanded arguments)
    expand_signatures_and_call_sites(inner_functions, exp_fun_map, exp_idx_args_map,  kernel_function);

    // Start processing the kernel function
    processFunction(kernel_function);

    // And then expand all the expanded (inner) functions, processing those afterwards
    for (auto &f : exp_fun_map) {
        llvm::Function *exp_fun = f.second;

        expand_arguments(exp_fun);

        expand_allocas(exp_fun);
    }

    //cleanup(exp_idx_args_map, exp_fun_map);

    return true;
*/
}

void CustomScalarReplacementOfAggregatesPass::replicate_calls(llvm::Function *kernel_function,
                                                              std::vector<llvm::Function *> &inner_functions) {

    // TODO: how about circular call graphs
    // TODO: how about memOps/intrinsic/extern functions
    std::vector<llvm::CallInst *> call_inst_vec;

    // Initialize the vector containing the calls
    for (llvm::BasicBlock &bb : *kernel_function) {
        for (llvm::Instruction &i : bb) {
            if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(&i)) {
                call_inst_vec.push_back(call_inst);
            }
        }
    }

    // Go through the vector (which may grow at any iteration)
    for (unsigned long long idx = 0; idx < call_inst_vec.size(); ++idx) {
        llvm::CallInst *call_inst = call_inst_vec.at(idx);
        llvm::Function *called_function = call_inst->getCalledFunction();

        // Clone the function
        llvm::ValueToValueMapTy VMap;
        llvm::ClonedCodeInfo *code_info = new llvm::ClonedCodeInfo();
        llvm::Function *cloned_function = llvm::CloneFunction(called_function, VMap, code_info);

        // Replace the call site
        call_inst->setCalledFunction(cloned_function);

        inner_functions.push_back(cloned_function);

        // add to the vector function calls inside the cloned function
        for (llvm::BasicBlock &bb : *cloned_function) {
            for (llvm::Instruction &i : bb) {
                if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(&i)) {
                    call_inst_vec.push_back(call_inst);
                }
            }
        }
    }

} // end replicate_calls(...)

void CustomScalarReplacementOfAggregatesPass::getAnalysisUsage(llvm::AnalysisUsage &AU) const {
    AU.addRequiredTransitive<llvm::ScalarEvolutionWrapperPass>();
}

void CustomScalarReplacementOfAggregatesPass::expand_allocas(llvm::Function *function) {

    // Global alloca vec so to avoid loops in analysis
    std::set<llvm::AllocaInst *> alloca_vec = std::set<llvm::AllocaInst *>();

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

                    expand_value(alloca_inst, alloca_inst, str_ty, expanded);
                } else if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(alloca_inst->getAllocatedType())) {
                    std::vector<llvm::Value *> expanded = std::vector<llvm::Value *>();

                    expand_value(alloca_inst, alloca_inst, arr_ty, expanded);
                }
            }
        }
    }
}

void
CustomScalarReplacementOfAggregatesPass::expand_arguments(//llvm::Function *called_function,
        llvm::Function *new_function) {//,
    //std::set<unsigned long long> arg_map,
    //std::map<llvm::Argument *, std::vector<llvm::Argument *>> &exp_args_map) {

    for (auto &arg : new_function->args()) {

        //for (auto &a : arg_map) {
        auto exp_args_map_it = exp_args_map.find(&arg);

        if (exp_args_map_it != exp_args_map.end()) {

            std::vector<llvm::Value *> expanded = std::vector<llvm::Value *>();

            for (auto &exp_arg : exp_args_map_it->second) {
                expanded.push_back(exp_arg);
            }

            expand_value(&arg, &arg, arg.getType(), expanded);
        }
        /*
            //auto arg_it = new_function->arg_begin();

            //for (int i = 0; i < a; i++) { ++arg_it; }
            llvm::Argument *arg = &arg;

            if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(arg->getType())) {

                args_to_remove[arg->getParent()].insert(arg);
                std::vector<llvm::Value *> expanded = std::vector<llvm::Value *>();

                if (arg != nullptr and arg->hasAttribute(llvm::Attribute::Dereferenceable)) {

                    bool canBeNull;
                    unsigned long long dBytes = arg->getPointerDereferenceableBytes(
                            arg->getParent()->getParent()->getDataLayout(), canBeNull);
                    unsigned long long eBytes =
                            arg->getParent()->getParent()->getDataLayout().getTypeSizeInBits(ptr_ty->getElementType()) /
                            8;
                    unsigned long long elements = dBytes / eBytes;


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

                    expand_value(arg, arg, str_ty, expanded);
                }
            }
        }
         */
    }
}

/*
void CustomScalarReplacementOfAggregatesPass::expand_value(llvm::Value *use, llvm::Value *prev, llvm::Type *ty,
                                                           std::vector<llvm::Value *> &expanded) {

    if (llvm::Argument *arg = llvm::dyn_cast<llvm::Argument>(use)) {

        auto size_it = arg_size_map.find(arg);

        // If the arg has a known size (therefore it is an array)
        if (size_it != arg_size_map.end()) {

            unsigned long long elements = exp_args_map[arg].size();

            for (auto user_it = arg->user_begin(); user_it != arg->user_end(); user_it++) {
                llvm::User *user = *user_it;

                if (llvm::GetElementPtrInst *gep_inst = llvm::dyn_cast<llvm::GetElementPtrInst>(user)) {
                    if (gep_inst->getNumOperands() == 2) {
                        if (llvm::ConstantInt *cint1 = llvm::dyn_cast<llvm::ConstantInt>(gep_inst->getOperand(1))) {

                            for (auto &u : gep_inst->uses()) {

                                if (llvm::GetElementPtrInst *gep_inst2 = llvm::dyn_cast<llvm::GetElementPtrInst>(
                                        u.getUser())) {

                                    llvm::Value *ptr = expanded.at(cint1->getValue().getSExtValue());

                                    auto size_it2 = arg_size_map.find(llvm::dyn_cast<llvm::Argument>(ptr));

                                    // If the arg has a known size (therefore it is an array)
                                    if (size_it2 != arg_size_map.end()) {

                                        std::vector<llvm::Value *> ops = std::vector<llvm::Value *>();
                                        ops.insert(ops.end(), gep_inst2->op_begin() + 2, gep_inst2->op_end());
                                        std::string new_name = gep_inst2->getName().str() + ".csroa.gepi.arg." +
                                                               std::to_string(cint1->getValue().getSExtValue());

                                        llvm::PointerType *ptr_type = llvm::dyn_cast<llvm::PointerType>(
                                                ptr->getType()->getScalarType());
                                        llvm::Type *new_type = llvm::dyn_cast<llvm::PointerType>(
                                                ptr->getType()->getScalarType())->getElementType();

                                        if (ops.size() != 0) {
                                            llvm::GetElementPtrInst *new_gep_inst = llvm::GetElementPtrInst::Create(
                                                    new_type,
                                                    ptr,
                                                    ops,
                                                    new_name,
                                                    gep_inst2);

                                            gep_inst2->replaceAllUsesWith(new_gep_inst);
                                        } else {
                                            gep_inst2->replaceAllUsesWith(ptr);
                                        }

                                        inst_to_remove.insert(gep_inst2);
                                    } else {
                                        std::vector<llvm::Value *> expanded_vec;
                                        for (auto &exp_arg : exp_args_map[llvm::cast<llvm::Argument>(ptr)]) {
                                            expanded_vec.push_back(exp_arg);
                                        }
                                        expand_value(gep_inst2, gep_inst, gep_inst2->getType(), expanded_vec);
                                    }
                                }
                            }

                            inst_to_remove.insert(gep_inst);

                        }
                    }
                }
            }
        } else if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(arg->getType())) {
            if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {
                for (auto user_it = arg->user_begin(); user_it != arg->user_end(); user_it++) {
                    llvm::User *user = *user_it;

                    std::vector<llvm::Value *> expanded_vec;
                    for (auto &exp_arg : exp_args_map[arg]) {
                        expanded_vec.push_back(exp_arg);
                    }

                    expand_value(user, arg, ty, expanded_vec);
                }
            }
        }
    } else if (llvm::AllocaInst *alloca_inst = llvm::dyn_cast<llvm::AllocaInst>(use)) {

        expanded.clear();

        alloca_to_remove[alloca_inst->getFunction()].insert(alloca_inst);

        if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(alloca_inst->getAllocatedType())) {
            for (unsigned idx = 0; idx < ty->getNumContainedTypes(); ++idx) {
                llvm::Type *element = ty->getContainedType(idx);

                llvm::Type *new_alloca_type = llvm::PointerType::getUnqual(element);
                std::string new_alloca_name = alloca_inst->getName().str() + ".csroa.alloca." + std::to_string(idx);
                llvm::AllocaInst *new_alloca_inst = new llvm::AllocaInst(element, new_alloca_name,
                                                                                             alloca_inst);

                expanded.insert(expanded.begin() + idx, new_alloca_inst);

            }
        } else if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(alloca_inst->getAllocatedType())) {

            for (unsigned idx = 0; idx < arr_ty->getNumElements(); ++idx) {
                llvm::Type *element_ty = arr_ty->getArrayElementType();

                llvm::Type *new_alloca_type = llvm::PointerType::getUnqual(element_ty);
                std::string new_alloca_name = alloca_inst->getName().str() + ".csroa.alloca." + std::to_string(idx);
                llvm::AllocaInst *new_alloca_inst = new llvm::AllocaInst(element_ty,
                                                                                             new_alloca_name,
                                                                                             alloca_inst);

                expanded.insert(expanded.begin() + idx, new_alloca_inst);

            }
        }

        for (auto user_it = alloca_inst->user_begin(); user_it != alloca_inst->user_end(); user_it++) {
            llvm::User *user = *user_it;

            std::vector<llvm::Value *> expanded_val = expanded;

            expand_value(user, alloca_inst, ty, expanded_val);
        }

        inst_to_remove.insert(alloca_inst);

    } else if (llvm::GetElementPtrInst *gep_inst = llvm::dyn_cast<llvm::GetElementPtrInst>(use)) {

        if (gep_inst->getPointerOperand() == prev) {
            bool dereferenceable_arg = false;
            if (llvm::Argument *arg = llvm::dyn_cast<llvm::Argument>(prev)) {

                auto size_it = arg_size_map.find(arg);

                if (size_it != arg_size_map.end()) {
                    dereferenceable_arg = true;

                    unsigned long long elements = exp_args_map[arg].size();

                    llvm::Value *operand = gep_inst->getOperand(1);

                    if (llvm::ConstantInt *cint = llvm::dyn_cast<llvm::ConstantInt>(operand)) {
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
                    if (llvm::ConstantInt *cint1 = llvm::dyn_cast<llvm::ConstantInt>(gep_inst->getOperand(1))) {
                        if (cint1->getValue().getSExtValue() == 0) {
                            if (llvm::ConstantInt *cint2 = llvm::dyn_cast<llvm::ConstantInt>(gep_inst->getOperand(2))) {

                                std::map<llvm::Use *, llvm::Value *> use_to_set;

                                for (llvm::Use &u : gep_inst->uses()) {
                                    llvm::User *user = u.getUser();

                                    if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(user)) {

                                        llvm::Function::arg_iterator arg_it = call_inst->getCalledFunction()->arg_begin();
                                        for (int i = 0; i < u.getOperandNo(); i++) { ++arg_it; }

                                        if (arg_size_map.find(&*arg_it) != arg_size_map.end()) {

                                            unsigned long long elements = exp_args_map[&*arg_it].size();

                                            unsigned arg_idx = 0;

                                            for (llvm::Argument *exp_arg : exp_args_map[&*arg_it]) {

                                                llvm::Value *ptr = expanded.at(
                                                        arg_idx++ + (unsigned long long) cint2->getSExtValue());
                                                std::vector<llvm::Value *> ops = std::vector<llvm::Value *>();
                                                llvm::Type *op1_ty = llvm::IntegerType::get(prev->getContext(), 64);
                                                llvm::Constant *op1 = llvm::ConstantInt::get(op1_ty, 0, false);
                                                ops.push_back(op1);
                                                llvm::Type *op2_ty = llvm::IntegerType::get(prev->getContext(), 64);
                                                llvm::Constant *op2 = llvm::ConstantInt::get(op2_ty, 0, false);
                                                ops.push_back(op2);

                                                std::string new_name =
                                                        gep_inst->getName().str() + ".csroa.gepi.arraydecay." +
                                                        arg_it->getName().str() + "." + std::to_string(arg_idx - 1);

                                                llvm::Type *new_type = arr_ty->getArrayElementType();

                                                if (new_type->isArrayTy()) {
                                                    llvm::GetElementPtrInst *new_gep_inst = llvm::GetElementPtrInst::Create(
                                                            new_type,
                                                            ptr,
                                                            ops,
                                                            new_name,
                                                            gep_inst);

                                                    call_inst->setArgOperand(exp_arg->getArgNo(), new_gep_inst);
                                                } else {
                                                    call_inst->setArgOperand(exp_arg->getArgNo(), ptr);
                                                }
                                            }
                                        } else {
                                            use_to_set[&u] = expanded.at(cint2->getSExtValue());
                                        }
                                    } else {
                                        use_to_set[&u] = expanded.at(cint2->getSExtValue());
                                    }
                                }

                                for (auto &u2s : use_to_set) {
                                    u2s.first->set(u2s.second);
                                }

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
            llvm::BitCastInst *new_bitcast_inst = new llvm::BitCastInst(
                    expanded_val.at(idx), bitcast_inst->getDestTy(),
                    new_bitcast_name, bitcast_inst);

            expanded.insert(expanded.begin() + idx, new_bitcast_inst);
        }

        for (auto user_it = bitcast_inst->user_begin(); user_it != bitcast_inst->user_end(); user_it++) {
            llvm::User *user = *user_it;

            expand_value(user, bitcast_inst, ty, expanded);
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

                            if (arg_size_map.find(&*arg_it) != arg_size_map.end()) {
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
*/
void CustomScalarReplacementOfAggregatesPass::expand_value(llvm::Value *use, llvm::Value *prev, llvm::Type *ty,
                                                           std::vector<llvm::Value *> &expanded) {

    if (llvm::Argument *arg = llvm::dyn_cast<llvm::Argument>(use)) {

        for (auto user_it = arg->user_begin(); user_it != arg->user_end(); user_it++) {
            llvm::User *user = *user_it;

            expand_value(user, arg, nullptr, expanded);
        }

/*
        auto size_it = arg_size_map.find(arg);

        // If the arg has a known size (therefore it is an array)
        if (size_it != arg_size_map.end()) {

            unsigned long long elements = exp_args_map[arg].size();

            for (auto user_it = arg->user_begin(); user_it != arg->user_end(); user_it++) {
                llvm::User *user = *user_it;

                if (llvm::GetElementPtrInst *gep_inst = llvm::dyn_cast<llvm::GetElementPtrInst>(user)) {
                    if (gep_inst->getNumOperands() == 2) {
                        if (llvm::ConstantInt *cint1 = llvm::dyn_cast<llvm::ConstantInt>(gep_inst->getOperand(1))) {

                            for (auto &u : gep_inst->uses()) {

                                if (llvm::GetElementPtrInst *gep_inst2 = llvm::dyn_cast<llvm::GetElementPtrInst>(
                                        u.getUser())) {

                                    llvm::Value *ptr = expanded.at(cint1->getValue().getSExtValue());

                                    auto size_it2 = arg_size_map.find(llvm::dyn_cast<llvm::Argument>(ptr));

                                    // If the arg has a known size (therefore it is an array)
                                    if (size_it2 != arg_size_map.end()) {

                                        std::vector<llvm::Value *> ops = std::vector<llvm::Value *>();
                                        ops.insert(ops.end(), gep_inst2->op_begin() + 2, gep_inst2->op_end());
                                        std::string new_name = gep_inst2->getName().str() + ".csroa.gepi.arg." +
                                                               std::to_string(cint1->getValue().getSExtValue());

                                        llvm::PointerType *ptr_type = llvm::dyn_cast<llvm::PointerType>(
                                                ptr->getType()->getScalarType());
                                        llvm::Type *new_type = llvm::dyn_cast<llvm::PointerType>(
                                                ptr->getType()->getScalarType())->getElementType();

                                        if (ops.size() != 0) {
                                            llvm::GetElementPtrInst *new_gep_inst = llvm::GetElementPtrInst::Create(
                                                    new_type,
                                                    ptr,
                                                    ops,
                                                    new_name,
                                                    gep_inst2);

                                            gep_inst2->replaceAllUsesWith(new_gep_inst);
                                        } else {
                                            gep_inst2->replaceAllUsesWith(ptr);
                                        }

                                        inst_to_remove.insert(gep_inst2);
                                    } else {
                                        std::vector<llvm::Value *> expanded_vec;
                                        for (auto &exp_arg : exp_args_map[llvm::cast<llvm::Argument>(ptr)]) {
                                            expanded_vec.push_back(exp_arg);
                                        }
                                        expand_value(gep_inst2, gep_inst, gep_inst2->getType(), expanded_vec);
                                    }
                                }
                            }

                            inst_to_remove.insert(gep_inst);

                        }
                    }
                }
            }
        } else if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(arg->getType())) {
            if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {
                for (auto user_it = arg->user_begin(); user_it != arg->user_end(); user_it++) {
                    llvm::User *user = *user_it;

                    std::vector<llvm::Value *> expanded_vec;
                    for (auto &exp_arg : exp_args_map[arg]) {
                        expanded_vec.push_back(exp_arg);
                    }

                    expand_value(user, arg, ty, expanded_vec);
                }
            }
        }
*/
    } else if (llvm::AllocaInst *alloca_inst = llvm::dyn_cast<llvm::AllocaInst>(use)) {

        expanded.clear();

        alloca_to_remove[alloca_inst->getFunction()].insert(alloca_inst);

        if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(alloca_inst->getAllocatedType())) {
            for (unsigned idx = 0; idx < str_ty->getNumContainedTypes(); ++idx) {
                llvm::Type *element = str_ty->getContainedType(idx);

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

            expand_value(user, alloca_inst, nullptr, expanded_val);
        }

        inst_to_remove.insert(alloca_inst);

    } else if (llvm::GetElementPtrInst *gep_inst = llvm::dyn_cast<llvm::GetElementPtrInst>(use)) {

        if (gep_inst->getPointerOperand() == prev) {
            bool is_ptr_array_arg = false;
            if (llvm::Argument *arg = llvm::dyn_cast<llvm::Argument>(gep_inst->getPointerOperand())) {

                auto size_it = arg_size_map.find(arg);

                if (size_it != arg_size_map.end()) {
                    is_ptr_array_arg = true;

                    unsigned long long elements = exp_args_map[arg].size();

                    if (gep_inst->getNumOperands() == 2) {
                        if (llvm::ConstantInt *cint1 = llvm::dyn_cast<llvm::ConstantInt>(gep_inst->getOperand(1))) {

                            for (auto &u : gep_inst->uses()) {

                                if (llvm::GetElementPtrInst *gep_inst2 = llvm::dyn_cast<llvm::GetElementPtrInst>(
                                        u.getUser())) {

                                    llvm::Value *ptr = expanded.at(cint1->getValue().getSExtValue());

                                    auto size_it2 = arg_size_map.find(llvm::dyn_cast<llvm::Argument>(ptr));

                                    // If the expanded arg has a known size (therefore it is an array)
                                    if (size_it2 != arg_size_map.end()) {

                                        std::vector<llvm::Value *> ops = std::vector<llvm::Value *>();
                                        ops.insert(ops.end(), gep_inst2->op_begin() + 2, gep_inst2->op_end());
                                        std::string new_name = gep_inst2->getName().str() + ".csroa.gepi.arg." +
                                                               std::to_string(cint1->getValue().getSExtValue());

                                        llvm::PointerType *ptr_type = llvm::dyn_cast<llvm::PointerType>(
                                                ptr->getType()->getScalarType());
                                        llvm::Type *new_type = llvm::dyn_cast<llvm::PointerType>(
                                                ptr->getType()->getScalarType())->getElementType();

                                        if (ops.size() != 0) {
                                            llvm::GetElementPtrInst *new_gep_inst = llvm::GetElementPtrInst::Create(
                                                    new_type,
                                                    ptr,
                                                    ops,
                                                    new_name,
                                                    gep_inst2);

                                            gep_inst2->replaceAllUsesWith(new_gep_inst);
                                        } else {
                                            gep_inst2->replaceAllUsesWith(ptr);
                                        }

                                        inst_to_remove.insert(gep_inst2);
                                    } else {
                                        std::vector<llvm::Value *> expanded_vec;
                                        for (auto &exp_arg : exp_args_map[llvm::cast<llvm::Argument>(ptr)]) {
                                            expanded_vec.push_back(exp_arg);
                                        }
                                        expand_value(gep_inst2, gep_inst, gep_inst2->getType(), expanded_vec);
                                    }
                                } else {
                                    llvm::errs() << "ERR\n";
                                    exit(-1);
                                }
                            }

                            inst_to_remove.insert(gep_inst);

                        } else {
                            llvm::Value *gep_op1 = gep_inst->getOperand(1);
/*
                            std::vector<llvm::User*> gepis_to_load;

                            llvm::Instruction *i_to_add;
                            bool well_formed = true;
                            do {

                                if (i_to_add->getNumUses() == 1) {
                                    llvm::User *u = i_to_add->use_begin()->getUser();

                                    gepis_to_load.push_back(u);

                                    if(!llvm::isa<llvm::GetElementPtrInst>(u)) {
                                        break;
                                    }

                                } else {
                                    well_formed = false;
                                    break;
                                }

                            } while (true);
*/
                            llvm::Instruction *split_before = gep_inst;

                            for (unsigned long long e = 0; e < expanded.size(); e++) {

                                llvm::APInt api_idx = llvm::APInt((unsigned int) 32, e, false);
                                llvm::ConstantInt *c_idx = llvm::ConstantInt::get(gep_inst->getContext(), api_idx);
                                std::string cmp_name = gep_inst->getName().str() + ".cmp." + std::to_string(0);
                                llvm::CmpInst *cond = llvm::CmpInst::Create(llvm::CmpInst::OtherOps::ICmp,
                                                                            llvm::CmpInst::Predicate::ICMP_EQ,
                                                                            gep_op1, c_idx, cmp_name, split_before);

                                llvm::TerminatorInst *then_term;
                                llvm::TerminatorInst *else_term;
                                llvm::SplitBlockAndInsertIfThenElse(cond, split_before, &then_term, &else_term);

                                llvm::Instruction *i_to_add = gep_inst;
                                llvm::Value *next_u = expanded.at(e);
                                bool well_formed = true;
                                do {

                                    if (i_to_add->getNumUses() == 1) {
                                        llvm::User *u = i_to_add->use_begin()->getUser();

                                        if (llvm::Instruction *inst = llvm::dyn_cast<llvm::Instruction>(u)) {
                                            llvm::Instruction *new_inst = inst->clone();
                                            new_inst->insertBefore(then_term);
                                            new_inst->getOperandUse(i_to_add->use_begin()->getOperandNo()) = next_u;
                                            next_u = new_inst;

                                            i_to_add = inst;

                                            // TODO remove an operand from the gepi when operating on an array

                                            if (!llvm::isa<llvm::GetElementPtrInst>(inst)) {
                                                break;
                                            }
                                        } else {
                                            llvm::errs() << "ERR\n";
                                            exit(-1);
                                        }

                                    } else {
                                        llvm::errs() << "ERR\n";
                                        i_to_add->dump();
                                        llvm::errs() << "U: " << i_to_add->getNumUses() << "\n";
                                        exit(-1);
                                    }

                                } while (true);

                                split_before = else_term;
                            }
                        }
                    } else {
                        llvm::errs() << "ERR\n";
                        exit(-1);
                    }
                }
            }

            if (!is_ptr_array_arg) {
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
                    if (llvm::ConstantInt *cint1 = llvm::dyn_cast<llvm::ConstantInt>(gep_inst->getOperand(1))) {
                        if (cint1->getValue().getSExtValue() == 0) {
                            if (llvm::ConstantInt *cint2 = llvm::dyn_cast<llvm::ConstantInt>(gep_inst->getOperand(2))) {

                                std::map<llvm::Use *, llvm::Value *> use_to_set;

                                for (llvm::Use &u : gep_inst->uses()) {
                                    llvm::User *user = u.getUser();

                                    if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(user)) {

                                        llvm::Function::arg_iterator arg_it = call_inst->getCalledFunction()->arg_begin();
                                        for (int i = 0; i < u.getOperandNo(); i++) { ++arg_it; }

                                        if (arg_size_map.find(&*arg_it) != arg_size_map.end()) {

                                            unsigned long long elements = exp_args_map[&*arg_it].size();

                                            unsigned arg_idx = 0;

                                            for (llvm::Argument *exp_arg : exp_args_map[&*arg_it]) {

                                                llvm::Value *ptr = expanded.at(
                                                        arg_idx++ + (unsigned long long) cint2->getSExtValue());
                                                std::vector<llvm::Value *> ops = std::vector<llvm::Value *>();
                                                llvm::Type *op1_ty = llvm::IntegerType::get(prev->getContext(), 64);
                                                llvm::Constant *op1 = llvm::ConstantInt::get(op1_ty, 0, false);
                                                ops.push_back(op1);
                                                llvm::Type *op2_ty = llvm::IntegerType::get(prev->getContext(), 64);
                                                llvm::Constant *op2 = llvm::ConstantInt::get(op2_ty, 0, false);
                                                ops.push_back(op2);

                                                std::string new_name =
                                                        gep_inst->getName().str() + ".csroa.gepi.arraydecay." +
                                                        arg_it->getName().str() + "." + std::to_string(arg_idx - 1);

                                                llvm::Type *new_type = arr_ty->getArrayElementType();

                                                if (new_type->isArrayTy()) {
                                                    llvm::GetElementPtrInst *new_gep_inst = llvm::GetElementPtrInst::Create(
                                                            new_type,
                                                            ptr,
                                                            ops,
                                                            new_name,
                                                            gep_inst);

                                                    call_inst->setArgOperand(exp_arg->getArgNo(), new_gep_inst);
                                                } else {
                                                    call_inst->setArgOperand(exp_arg->getArgNo(), ptr);
                                                }
                                            }
                                        } else {
                                            use_to_set[&u] = expanded.at(cint2->getSExtValue());
                                        }
                                    } else {
                                        use_to_set[&u] = expanded.at(cint2->getSExtValue());
                                    }
                                }

                                for (auto &u2s : use_to_set) {
                                    u2s.first->set(u2s.second);
                                }

                                inst_to_remove.insert(gep_inst);
                            }
                        }
                    }
                }
            }
        } else {
            llvm::errs() << "ERR\n";
            exit(-1);
        }
    } else if (llvm::BitCastInst *bitcast_inst = llvm::dyn_cast<llvm::BitCastInst>(use)) {
        llvm::errs() << "ERR\n";
        exit(-1);
        std::vector<llvm::Value *> expanded_val = expanded;

        expanded.clear();

        for (unsigned idx = 0; idx != bitcast_inst->getSrcTy()->getNumContainedTypes(); ++idx) {
            llvm::Type *element = bitcast_inst->getSrcTy()->getContainedType(idx);

            llvm::Type *new_bitcast_type = llvm::PointerType::getUnqual(element);
            std::string new_bitcast_name = prev->getName().str() + "." + std::to_string(idx) + ".csroa.bitcast";
            llvm::BitCastInst *new_bitcast_inst = new llvm::BitCastInst(/*new_bitcast_type*/
                    expanded_val.at(idx), /*expanded_val.at(idx)->getType()*/bitcast_inst->getDestTy(),
                    new_bitcast_name, bitcast_inst);

            expanded.insert(expanded.begin() + idx, new_bitcast_inst);
        }

        for (auto user_it = bitcast_inst->user_begin(); user_it != bitcast_inst->user_end(); user_it++) {
            llvm::User *user = *user_it;

            expand_value(user, bitcast_inst, nullptr, expanded);
        }

        inst_to_remove.insert(bitcast_inst);

    } else if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(use)) {

        llvm::Argument *arg = llvm::dyn_cast<llvm::Argument>(prev);
        llvm::Function *called_function = call_inst->getCalledFunction();

        assert(called_function != nullptr && "Implementation needed");
        //assert(arg != nullptr && "Argument reference needed");

        if (llvm::MemCpyInst *memcpy_inst = llvm::dyn_cast<llvm::MemCpyInst>(call_inst)) {
/*
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
*/
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

                            if (arg_size_map.find(&*arg_it) != arg_size_map.end()) {
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

    // Topologically order inner functions
    std::vector<llvm::Function *> ordered_inner_functions;

    // Iterate for at most the inner function vector length
    for (unsigned long long i = 0; i < inner_functions.size(); i++) {

        unsigned long long old_size = ordered_inner_functions.size();

        // Loop over the inner functions looking for functions with no calls to non ordered functions
        for (llvm::Function *function : inner_functions) {

            if (std::find(ordered_inner_functions.begin(), ordered_inner_functions.end(), function) !=
                ordered_inner_functions.end()) {
                continue;
            }

            // Whether the function contains calls to not-already-ordered functions
            bool has_unresolved_calls = false;

            // Loop over the basic blocks
            for (llvm::BasicBlock &bb : *function) {

                // Loop over the instructions
                for (llvm::Instruction &i : bb) {

                    // Check if call site...
                    if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(&i)) {

                        // ...not calling a memcpy
                        if (!llvm::isa<llvm::MemCpyInst>(call_inst)) {

                            // Initialize inner function begin and end iterators (used for the search)
                            std::vector<llvm::Function *>::iterator if_it_b = ordered_inner_functions.begin();
                            std::vector<llvm::Function *>::iterator if_it_e = ordered_inner_functions.end();

                            // Search whether the called function is already in the ordered vector. Ok if so
                            if (std::find(if_it_b, if_it_e, call_inst->getCalledFunction()) == if_it_e) {
                                has_unresolved_calls = true;
                            }
                        }
                    }

                    if (has_unresolved_calls) {
                        break;
                    }
                }

                if (has_unresolved_calls) {
                    break;
                }
            }

            if (!has_unresolved_calls) {
                ordered_inner_functions.push_back(function);
            }
        }

        // exit earlier if no changes
        if (ordered_inner_functions.size() == old_size) {
            break;
        }
    }

    // If all functions have been topologically ordered then update the vector
    if (ordered_inner_functions.size() == inner_functions.size()) {
        inner_functions = ordered_inner_functions;
    } else {
        llvm::errs() << "Circular callgraph!";
        exit(-1);
    }

} // end of populate_inner_functions

void CustomScalarReplacementOfAggregatesPass::expand_signatures_and_call_sites(
        std::vector<llvm::Function *> &inner_functions,
        std::map<llvm::Function *, llvm::Function *> &exp_fun_map,
        std::map<llvm::Function *, std::set<unsigned long long>> &exp_idx_args_map,
        //std::map<llvm::Argument *, std::vector<llvm::Argument *>> &exp_args_map,
        llvm::Function *kernel_function) {

    // Loop through the inner functions:
    //  - recursively expanding the signatures
    //  - adapting the call sites those are called in
    for (llvm::Function *called_function : inner_functions) {
/*
        struct SigCmp {
            bool operator ()(const std::map<llvm::Argument*, std::vector<unsigned long long>> &lhs, const std::map<llvm::Argument*, std::vector<unsigned long long>> &rhs) {

                if (lhs.size() < rhs.size()) {
                    return true;
                } else if (lhs.size() > rhs.size()) {
                    return false;
                }

                for (auto &lhs_it : lhs) {
                    auto rhs_it = rhs.find(lhs_it.first);

                    if (rhs_it == rhs.end()) {
                        return false;
                    }
                }

                for (auto &rhs_it : rhs) {
                    auto lhs_it = lhs.find(rhs_it.first);

                    if (lhs_it == lhs.end()) {
                        return true;
                    }
                }

                for (auto &lhs_it : lhs) {
                    auto rhs_it = rhs.find(lhs_it.first);

                    const std::vector<unsigned long long> &lhs_vec = lhs_it.second;
                    const std::vector<unsigned long long> &rhs_vec = rhs_it->second;

                    if (lhs_vec.size() < rhs_vec.size()) {
                        return true;
                    } else if (lhs_vec.size() > rhs_vec.size()) {
                        return false;
                    } else {

                        auto lhs_vec_it = lhs_vec.begin();
                        auto rhs_vec_it = rhs_vec.begin();

                        for (; lhs_vec_it != lhs_vec.end(); lhs_vec_it++, rhs_vec_it++) {
                            if (*lhs_vec_it < *rhs_vec_it) {
                                return true;
                            } else if (*lhs_vec_it > *rhs_vec_it) {
                                return false;
                            }
                        }
                    }
                }

                return false;
            }
        };

        std::set<std::map<llvm::Argument*, std::vector<unsigned long long>>, SigCmp> signatures;

        for (llvm::Use &u : called_function->uses()) {
            if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(u.getUser())) {

                std::map<llvm::Argument*, std::vector<std::vector<unsigned long long>>> local_arg_size;

                llvm::Function::arg_iterator arg_it = called_function->arg_begin();
                for (llvm::Use &op : call_inst->arg_operands()) {

                    auto a_it = arg_size_map.find(&*arg_it);

                    if (a_it != arg_size_map.end()) {
                        auto c_it = a_it->second.find(call_inst);

                        for (auto cc_it : a_it->second) {
                            cc_it.first->dump();
                        }

                        if (c_it != a_it->second.end()) {
                            local_arg_size[&*arg_it] = c_it->second;
                        }
                    }

                    arg_it++;
                }

                llvm::errs() << "\n-----------------\n";
                call_inst->dump();
                for (auto l : local_arg_size) {
                    l.first->dump();
                    llvm::errs() << "-> ";
                    for (auto s : l.second) {
                        for (auto ss : s) {
                            llvm::errs() << std::to_string(ss) << " ";
                        }
                        llvm::errs() << "-";
                    }
                    llvm::errs() << "\n";
                }
                llvm::errs() << "\n-----------------\n";

                std::map<llvm::Argument*, std::vector<unsigned long long>> local_arg_size_shrunk;
                for (auto a_it : local_arg_size) {

                    if (a_it.second.size() != 1) {
                        llvm::errs() << "ERR";
                        exit(-1);
                    } else {
                        local_arg_size_shrunk[a_it.first] = a_it.second.at(0);
                    }

                }

                signatures.insert(local_arg_size_shrunk);

            } else {
                llvm::errs() << "Function use not a call ";
                u.getUser()->dump();
                exit(-1);
            }
        }

llvm::errs() << "F: " << called_function->getName() << "\n";
for (auto s : signatures) {
    for (auto m : s) {
        for (auto v : m.second) {
            llvm::errs() << std::to_string(v) << " ";
            m.first->dump();
        }
    }
}

exit(-1);
*/
        class ExpArgs {
        public:

            static void
            rec(llvm::Argument *arg, std::map<llvm::Argument *, std::vector<llvm::Argument *>> &exp_args_map_ref,
                std::map<llvm::Argument *, std::vector<unsigned long long>> &arg_size_map_ref) {

                if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(arg->getType())) {

                    auto a_it = arg_size_map_ref.find(arg);
                    if (a_it != arg_size_map_ref.end() and a_it->second.size() > 0) {

                        unsigned long long elements = a_it->second.at(0);

                        for (int e_idx = 0; e_idx < elements; ++e_idx) {

                            if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(ptr_ty->getElementType())) {
                                std::string new_arg_name = arg->getName().str() + "." + std::to_string(e_idx);

                                llvm::Type *new_arg_ty = llvm::PointerType::getUnqual(
                                        arr_ty->getArrayElementType());
                                llvm::Argument *new_arg = new llvm::Argument(new_arg_ty, new_arg_name,
                                                                             arg->getParent());

                                if (a_it->second.size() > 1) {
                                    arg_size_map_ref[new_arg] = std::vector<unsigned long long>(
                                            a_it->second.begin() + 1, a_it->second.end());
                                }

                                exp_args_map_ref[arg].push_back(new_arg);

                                rec(new_arg, exp_args_map_ref, arg_size_map_ref);
                            } else {
                                llvm::Type *new_arg_ty = llvm::PointerType::getUnqual(ptr_ty->getElementType());
                                std::string new_arg_name = arg->getName().str() + "." + std::to_string(e_idx);
                                llvm::Argument *new_arg = new llvm::Argument(new_arg_ty, new_arg_name,
                                                                             arg->getParent());

                                exp_args_map_ref[arg].push_back(new_arg);

                                rec(new_arg, exp_args_map_ref, arg_size_map_ref);
                            }
                        }
                    } else if (llvm::StructType *str_ty = llvm::dyn_cast<llvm::StructType>(ptr_ty->getElementType())) {

                        for (unsigned long long e_idx = 0; e_idx != str_ty->getNumContainedTypes(); ++e_idx) {
                            llvm::Type *new_arg_ty = llvm::PointerType::getUnqual(str_ty->getContainedType(e_idx));
                            std::string new_arg_name = arg->getName().str() + "." + std::to_string(e_idx);
                            llvm::Argument *new_arg = new llvm::Argument(new_arg_ty, new_arg_name, arg->getParent());

                            exp_args_map_ref[arg].push_back(new_arg);

                            rec(new_arg, exp_args_map_ref, arg_size_map_ref);
                        }

                    } else if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(ptr_ty->getElementType())) {

                        for (unsigned long long e_idx = 0; e_idx != arr_ty->getArrayNumElements(); ++e_idx) {
                            llvm::Type *new_arg_ty = llvm::PointerType::getUnqual(str_ty->getContainedType(e_idx));
                            std::string new_arg_name = arg->getName().str() + "." + std::to_string(e_idx);
                            llvm::Argument *new_arg = new llvm::Argument(new_arg_ty, new_arg_name, arg->getParent());

                            exp_args_map_ref[arg].push_back(new_arg);

                            llvm::Type *rec_ty = arr_ty;

                            std::vector<unsigned long long> tmp_sizes;
                            do {
                                if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(rec_ty)) {
                                    tmp_sizes.push_back(arr_ty->getArrayNumElements());
                                    rec_ty = arr_ty->getArrayElementType();
                                } else {
                                    break;
                                }
                            } while (true);

                            arg_size_map_ref[new_arg] = tmp_sizes;

                            rec(new_arg, exp_args_map_ref, arg_size_map_ref);
                        }
                    }
                }
            }
        };

        std::vector<llvm::Type *> new_arg_ty_vec = std::vector<llvm::Type *>();

        // Keep the same return type
        llvm::Type *new_mock_return_type = called_function->getFunctionType()->getReturnType();

        llvm::FunctionType *new_mock_function_type = llvm::FunctionType::get(new_mock_return_type, false);
        llvm::GlobalValue::LinkageTypes mock_linkage = called_function->getLinkage();
        std::string new_mock_function_name = called_function->getName().str() + ".csroa.mock";

        // Create function prototype
        llvm::Function *new_mock_function = llvm::Function::Create(new_mock_function_type, mock_linkage,
                                                                   new_mock_function_name,
                                                                   called_function->getParent());

        llvm::ValueToValueMapTy mock_VMap;

        std::map<unsigned long long, llvm::Argument *> idxs_of_exp_args;
        std::map<llvm::Argument *, std::vector<llvm::Argument *>> mock_exp_args_map;

        llvm::Function::arg_iterator arg_it_b = called_function->arg_begin();
        llvm::Function::arg_iterator arg_it_e = called_function->arg_end();

        // Go through all the function arguments
        for (auto arg_it = arg_it_b; arg_it != arg_it_e; arg_it++) {
            llvm::Argument *arg = &*arg_it;

            if (mock_VMap.count(arg) == 0 or true) {
                llvm::Type *new_arg_ty = arg->getType();
                std::string new_arg_name = arg->getName();

                // Create the new argument and append it to the mock function
                llvm::Argument *new_arg = new llvm::Argument(new_arg_ty, new_arg_name, new_mock_function);

                // Assign the size to the new argument if the related argument had it
                auto a_it = arg_size_map.find(arg);
                if (a_it != arg_size_map.end()) {
                    arg_size_map[new_arg] = a_it->second;
                }
/*
                if (arg->hasAttribute(llvm::Attribute::Dereferenceable)) {

                    bool canBeNull;
                    unsigned long long dBytes = arg->getPointerDereferenceableBytes(
                            arg->getParent()->getParent()->getDataLayout(), canBeNull);

                    llvm::AttrBuilder attr_builder = llvm::AttrBuilder();
                    llvm::Attribute attr = llvm::Attribute::getWithDereferenceableBytes(new_arg->getContext(), dBytes);
                    attr_builder.addAttribute(attr);

                    auto attr_set = llvm::AttributeSet::get(new_arg->getContext(), 0, attr_builder);
                    new_arg->addAttr(attr_set);
                }
*/
                mock_VMap[arg] = &new_mock_function->getArgumentList().back();
                idxs_of_exp_args[new_arg->getArgNo()] = arg;

                ExpArgs::rec(new_arg, mock_exp_args_map, arg_size_map);

            }
        }

        for (auto &a : new_mock_function->args()) {
            new_arg_ty_vec.push_back(a.getType());
        }

        // Keep the same return type
        llvm::Type *new_return_type = called_function->getFunctionType()->getReturnType();

        llvm::FunctionType *new_function_type = llvm::FunctionType::get(new_return_type, new_arg_ty_vec, false);
        llvm::GlobalValue::LinkageTypes linkage = called_function->getLinkage();
        std::string new_function_name = called_function->getName().str() + ".csroa";

        // Create function prototype
        llvm::Function *new_function = llvm::Function::Create(new_function_type, linkage, new_function_name,
                                                              called_function->getParent());

        llvm::ValueToValueMapTy VMap;

        std::map<llvm::Argument *, llvm::Argument *> mock_to_new_arg_map;
        llvm::Function::arg_iterator mf_arg_it_b = new_mock_function->arg_begin();
        llvm::Function::arg_iterator mf_arg_it_e = new_mock_function->arg_end();
        llvm::Function::arg_iterator nf_arg_it_b = new_function->arg_begin();
        llvm::Function::arg_iterator nf_arg_it_e = new_function->arg_end();
        llvm::Function::arg_iterator nf_arg_it = nf_arg_it_b;
        llvm::Function::arg_iterator mf_arg_it = mf_arg_it_b;
        for (; nf_arg_it != nf_arg_it_e; nf_arg_it++, mf_arg_it++) {
            llvm::Argument *nf_arg = &*nf_arg_it;
            llvm::Argument *mf_arg = &*mf_arg_it;

            mock_to_new_arg_map[mf_arg] = nf_arg;

            if (idxs_of_exp_args.count(nf_arg->getArgNo()) != 0) {
                VMap[idxs_of_exp_args[nf_arg->getArgNo()]] = nf_arg;
            }

            nf_arg->setName(mf_arg->getName());

            // Assign the size to the new argument if the mock argument had it
            auto a_it = arg_size_map.find(mf_arg);
            if (a_it != arg_size_map.end()) {
                arg_size_map[nf_arg] = a_it->second;
            }
/*
            if (mf_arg->hasAttribute(llvm::Attribute::Dereferenceable)) {

                bool canBeNull;
                unsigned long long dBytes = mf_arg->getPointerDereferenceableBytes(
                        mf_arg->getParent()->getParent()->getDataLayout(), canBeNull);

                llvm::AttrBuilder attr_builder = llvm::AttrBuilder();
                llvm::Attribute attr = llvm::Attribute::getWithDereferenceableBytes(nf_arg->getContext(), dBytes);
                attr_builder.addAttribute(attr);

                auto attr_set = llvm::AttributeSet::get(nf_arg->getContext(), 0, attr_builder);
                nf_arg->addAttr(attr_set);
            }
*/
        }

        for (auto &ma1 : mock_exp_args_map) {
            llvm::Argument *mf1_arg = ma1.first;
            llvm::Argument *nf1_arg = mock_to_new_arg_map[mf1_arg];

            for (auto &ma2 : ma1.second) {
                llvm::Argument *mf2_arg = ma2;
                llvm::Argument *nf2_arg = mock_to_new_arg_map[mf2_arg];

                exp_args_map[nf1_arg].push_back(nf2_arg);
            }
        }

        // Clone the function
        llvm::SmallVector<llvm::ReturnInst *, 8> returns;
        llvm::ClonedCodeInfo *codeInfo = nullptr;
        llvm::CloneFunctionInto(new_function, called_function, VMap, true, returns, "", codeInfo);

        // Track the function mapping (old->new)
        exp_fun_map[called_function] = new_function;

        for (auto &mock_arg : new_mock_function->args()) {
            arg_size_map.erase(&mock_arg);
        }
        new_mock_function->eraseFromParent();

        // Do not preserve any analysis
        llvm::PreservedAnalyses::none();

        // Class used to recursively expand operands in call sites
        class op_rec {
        public:

            static void
            rec(llvm::Argument *arg, std::map<llvm::Argument *, std::vector<llvm::Argument *>> &exp_args_map_ref,
                std::vector<llvm::Value *> &ops, bool is_called_operand = false) {

                if (llvm::PointerType *ptr_ty = llvm::dyn_cast<llvm::PointerType>(arg->getType())) {

                    if (!is_called_operand) {
                        ops.push_back(
                                llvm::ConstantPointerNull::get(llvm::PointerType::getUnqual(ptr_ty->getElementType())));
                    }

                    auto exp_arg_it = exp_args_map_ref.find(arg);

                    if (exp_arg_it != exp_args_map_ref.end()) {
                        std::vector<llvm::Argument *> &exp_args_vec_ref = exp_arg_it->second;

                        for (auto &a : exp_args_vec_ref) {
                            rec(a, exp_args_map_ref, ops);
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
                    llvm::Function::arg_iterator arg_it = new_function->arg_begin();
                    for (auto &op : call_inst->arg_operands()) {
                        llvm::Value *operand = op.get();

                        llvm::Argument *arg = nullptr;
                        {
                            llvm::Function::arg_iterator arg_it = new_function->arg_begin();
                            for (int i = 0; i < new_call_ops.size(); i++) { arg_it++; }
                            arg = &*arg_it;
                        }

                        new_call_ops.push_back(operand);

                        op_rec::rec(arg, exp_args_map, new_call_ops, true);
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

void
CustomScalarReplacementOfAggregatesPass::get_array_size_of_arguments(std::vector<llvm::Function *> inner_functions) {

    // Go through the functions in reverse topological order
    for (auto r_it = inner_functions.rbegin(); r_it != inner_functions.rend(); r_it++) {
        llvm::Function *function = *r_it;

        // TODO change it when caching is added
        // Check the function has one use only
        if (function->getNumUses() == 1) {

            // Check all the uses
            for (llvm::Use &u : function->uses()) {

                // That are supposed to be llvm::CallInst
                if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(u.getUser())) {

                    // Go through all the operands (and arguments as well)
                    llvm::Function::arg_iterator arg_it = function->arg_begin();
                    for (llvm::Use &op : call_inst->arg_operands()) {

                        // If the operand is a pointer
                        if (op.get()->getType()->isPointerTy()) {

                            // If the operand is a gepi
                            if (llvm::GetElementPtrInst *op_gep_inst = llvm::dyn_cast<llvm::GetElementPtrInst>(
                                    op.get())) {

                                llvm::Type *src_type = op_gep_inst->getSourceElementType();

                                // Check whether source type is an array
                                if (src_type->isArrayTy()) {

                                    // It might be that it is a decay
                                    // We need to check whether it is actually an array
                                    // Going through the argument uses


                                    std::vector<llvm::Use *> uses_vec;

                                    for (llvm::Use &arg_u : arg_it->uses()) {
                                        uses_vec.push_back(&arg_u);
                                    }

                                    bool is_actually_array = false;

                                    // Go through the uses in a recursive way, looking for the discriminating gepi
                                    // TODO does it terminate by itself?
                                    for (int i = 0; i < uses_vec.size(); i++) {
                                        llvm::Use *use = uses_vec.at(i);

                                        if (llvm::GetElementPtrInst *u_gep_inst = llvm::dyn_cast<llvm::GetElementPtrInst>(
                                                use->getUser())) {
                                            if (use->getOperandNo() == 0) {
                                                is_actually_array = u_gep_inst->getNumOperands() == 2;
                                                break;
                                            }
                                        } else if (llvm::CallInst *u_call_inst = llvm::dyn_cast<llvm::CallInst>(
                                                use->getUser())) {
                                            llvm::Function::arg_iterator arg_it = u_call_inst->getCalledFunction()->arg_begin();

                                            for (unsigned long long ii = 0;
                                                 ii < use->getOperandNo(); ii++) { arg_it++; }

                                            for (llvm::Use &u : (&*arg_it)->uses()) {
                                                uses_vec.push_back(&u);
                                            }
                                        }
                                    }

                                    if (is_actually_array) {
                                        llvm::Type *rec_ty = src_type;

                                        std::vector<unsigned long long> tmp_sizes;
                                        do {
                                            if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(rec_ty)) {
                                                tmp_sizes.push_back(arr_ty->getArrayNumElements());
                                                rec_ty = arr_ty->getArrayElementType();
                                            } else {
                                                break;
                                            }
                                        } while (true);

                                        arg_size_map[&*arg_it] = tmp_sizes;
                                    }

                                } else {
                                    llvm::errs() << "Neither struct nor pointer allocated in ";
                                    op_gep_inst->dump();
                                }
                            } else if (llvm::Argument *op_arg = llvm::dyn_cast<llvm::Argument>(op.get())) {

                                // Check whether the argument has a known size.
                                // In case it does, the size has already been computed due to the function ordering.
                                auto a_it = arg_size_map.find(op_arg);
                                if (a_it != arg_size_map.end()) {

                                    arg_size_map[&*arg_it] = arg_size_map[a_it->first];
                                }


                            } else {

                                llvm::errs() << "Operand #" << op.getOperandNo() << " of ";
                                call_inst->dump();
                                llvm::errs() << " not a gepi or arg.";
                                exit(-1);
                            }
                        }

                        arg_it++;
                    }
                } else {
                    llvm::errs() << "Function " << function->getName() << " has a non CallInst user ";
                    u.getUser()->dump();
                    exit(-1);
                }
            }
        } else {
            llvm::errs() << "ERR: No more than a single use allowed for inner function " << function->getName() << "\n";
            exit(-1);
        }
    }



/*
    // Go through the functions in reverse topological order
    for (auto r_it = inner_functions.rbegin(); r_it != inner_functions.rend(); r_it++) {
        llvm::Function *function = *r_it;

        // Check all the uses
        for (llvm::Use &u : function->uses()) {

            // That are supposed to be llvm::CallInst
            if (llvm::CallInst *call_inst = llvm::dyn_cast<llvm::CallInst>(u.getUser())) {
llvm::errs() << "Ca: "; call_inst->dump();

                // Go through all the operands (and arguments as well)
                llvm::Function::arg_iterator arg_it = function->arg_begin();
                for (llvm::Use &op : call_inst->arg_operands()) {

llvm::errs() << "Op: "; op.get()->dump();
llvm::errs() << "Ar: "; arg_it->dump();

                    // If the operand is a pointer
                    if (op.get()->getType()->isPointerTy()) {

                        // If the operand is a gepi
                        if (llvm::GetElementPtrInst *op_gep_inst = llvm::dyn_cast<llvm::GetElementPtrInst>(op.get())) {

                            llvm::Type *src_type = op_gep_inst->getSourceElementType();

                            // Check the source type
                            if (src_type->isStructTy()) {
                                // If struct type, nothing to do
                            } else if (src_type->isArrayTy()) {
                                // If array type

                                std::vector<llvm::Use *> vec_u;

                                for (llvm::Use &op_u : arg_it->uses()) {
                                    vec_u.push_back(&op_u);
                                }

                                bool is_actually_array = false;
                                for (int i = 0; i < vec_u.size(); i++) {
                                    llvm::Use *op_u = vec_u.at(i);
llvm::errs() << "Op_use: "; op_u->get()->dump();
llvm::errs() << "Op_user: "; op_u->getUser()->dump();
                                    if (llvm::GetElementPtrInst *u_gep_inst = llvm::dyn_cast<llvm::GetElementPtrInst>(op_u->getUser())) {
                                        if (op_u->getOperandNo() == 0) {
                                            is_actually_array = u_gep_inst->getNumOperands() == 2;
                                            break;
                                        }
                                    } else if (llvm::CallInst *u_call_inst = llvm::dyn_cast<llvm::CallInst>(op_u->getUser())) {
                                        llvm::Function::arg_iterator arg_it = u_call_inst->getCalledFunction()->arg_begin();

                                        for (unsigned long long ii = 0; ii < op_u->getOperandNo(); ii++) { arg_it++; }

                                        for (llvm::Use &u : (&*arg_it)->uses()) {
                                            vec_u.push_back(&u);
                                        }
                                    }
                                }

                                if (is_actually_array) {
                                    llvm::Type *rec_ty = src_type;

                                    std::vector<unsigned long long> tmp_sizes;
                                    do {
                                        if (llvm::ArrayType *arr_ty = llvm::dyn_cast<llvm::ArrayType>(rec_ty)) {
                                            tmp_sizes.push_back(arr_ty->getArrayNumElements());
                                            rec_ty = arr_ty->getArrayElementType();
                                        } else {
                                            break;
                                        }
                                    } while (true);

                                    arg_size_map[&*arg_it][call_inst].push_back(tmp_sizes);
                                }

                            } else {
                                llvm::errs() << "Neither struct nor pointer allocated in ";
                                op_gep_inst->dump();
                            }
                        } else if (llvm::Argument *op_arg = llvm::dyn_cast<llvm::Argument>(op.get())) {

                            auto a_it = arg_size_map.find(op_arg);

                            if (a_it != arg_size_map.end()) {

                                for (auto c_it : a_it->second) {
                                    for (auto s : c_it.second) {
                                        arg_size_map[&*arg_it][call_inst].push_back(s);
                                    }
                                }
                            }


                        } else {

                            llvm::errs() << "Operand #" << op.getOperandNo() << " of ";
                            call_inst->dump();
                            llvm::errs() << " not a gepi or arg.";
                            exit(-1);
                        }
                    }

                    arg_it++;
                }
            } else {
                llvm::errs() << "Function " << function->getName() << " has a non CallInst user "; u.getUser()->dump();
                exit(-1);
            }
        }
    }
    */
}

CustomScalarReplacementOfAggregatesPass *createCustomScalarReplacementOfAggregatesPass(std::string kernel_name) {
    return new CustomScalarReplacementOfAggregatesPass(kernel_name);
}
