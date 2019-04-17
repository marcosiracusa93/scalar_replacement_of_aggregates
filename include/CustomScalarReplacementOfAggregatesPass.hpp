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

#ifndef SCALAR_REPLACEMENT_OF_AGGREGATES_CUSTOMSCALARREPLACEMENTOFAGGREGATESPASS_HPP
#define SCALAR_REPLACEMENT_OF_AGGREGATES_CUSTOMSCALARREPLACEMENTOFAGGREGATESPASS_HPP


#include <llvm/Pass.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Instructions.h>

#include <set>

typedef std::pair<llvm::Function *, unsigned long long> fun_arg_key_ty;

struct Compare_fun_arg_key {
    bool operator()(const fun_arg_key_ty &lhs, const fun_arg_key_ty &rhs) {
        if (lhs.first < rhs.first) {
            return true;
        } else if (lhs.first == rhs.first) {
            return lhs.second < rhs.second;
        } else {
            return false;
        }
    }
};

typedef std::map<fun_arg_key_ty, std::vector<unsigned long long>, Compare_fun_arg_key> expanded_elements_in_args_ty;
typedef std::map<llvm::Function *, llvm::Function *> fun_fun_map_ty;
typedef std::map<llvm::Function *, llvm::Function *> fun_to_fun_map_ty;
typedef std::map<llvm::CallInst *, llvm::CallInst *> call_to_call_map_ty;
typedef std::set<llvm::CallInst *> call_set_ty;
typedef std::set<llvm::Instruction *> inst_set_ty;
typedef std::map<llvm::Function *, std::set<llvm::Argument *>> fun_to_args_map_ty;
typedef std::map<llvm::Function *, std::set<llvm::AllocaInst *>> fun_to_alloca_map_ty;

class CustomScalarReplacementOfAggregatesPass : public llvm::ModulePass {

public:
    char ID;

private:
    const std::string kernel_name;

    call_set_ty visited_memcpy;
    inst_set_ty inst_to_remove;
    fun_to_args_map_ty args_to_remove;
    fun_to_alloca_map_ty alloca_to_remove;

    // Map specifying how arguments have been expanded
    std::map<llvm::Argument *, std::vector<llvm::Argument *>> exp_args_map;
    // Map specifying how allocas have been expanded
    std::map<llvm::AllocaInst *, std::vector<llvm::AllocaInst *>> exp_allocas_map;

    // Map specifying array argument sizes
    std::map<llvm::Argument *, std::vector<unsigned long long>> arg_size_map;

public:
    explicit CustomScalarReplacementOfAggregatesPass(std::string kernel_name) : llvm::ModulePass(ID),
                                                                                kernel_name(kernel_name) {

    }

    bool runOnModule(llvm::Module &module) override;

    void getAnalysisUsage(llvm::AnalysisUsage &AU) const override;

private:

    bool check_assumptions(llvm::Function *kernel_function);

    void replicate_calls(llvm::Function *kernel_function, std::vector<llvm::Function *> &inner_functions);

    void expand_ptrs(llvm::Function *kernel_function, std::vector<llvm::Function *> &inner_functions);

    void process_pointer(llvm::Use *ptr_u);

    void
    compute_base_and_offset(llvm::Value *ptr, llvm::Value *&base_address, std::vector<llvm::Value *> &offset_chain);

    template<class I>
    llvm::Value *get_element_at_offset(I *base_address,
                                       std::map<I *, std::vector<I *>> &map,
                                       signed long long offset,
                                       unsigned long long accessed_size,
                                       const llvm::DataLayout *DL);

    llvm::Value *
    get_expanded_value(llvm::Value *base_address, signed long long offset, unsigned long long accessed_size);

    void populate_inner_functions(llvm::Function *kernel_function, std::vector<llvm::Function *> &inner_functions);

    void expand_signatures_and_call_sites(std::vector<llvm::Function *> &inner_functions,
                                          std::map<llvm::Function *, llvm::Function *> &exp_fun_map,
                                          std::map<llvm::Function *, std::set<unsigned long long>> &exp_idx_args_map,
            //std::map<llvm::Argument *, std::vector<llvm::Argument *>> &exp_args_map,
                                          llvm::Function *kernel_function);

    void expand_allocas(llvm::Function *function);

    void expand_arguments(//llvm::Function *called_function,
            llvm::Function *new_function);//,
    //std::set<unsigned long long> arg_map,
    //std::map<llvm::Argument *, std::vector<llvm::Argument *>> &exp_args_map);

    void expand_value(llvm::Use *use, llvm::Value *use_val, llvm::Value *prev,
                      llvm::Type *ty, std::vector<llvm::Value *> &expanded);

    void cleanup(std::map<llvm::Function *, std::set<unsigned long long>> &exp_idx_args_map,
                 std::map<llvm::Function *, llvm::Function *> &exp_fun_map);

    void get_array_size_of_arguments(std::vector<llvm::Function *> inner_functions);

};

CustomScalarReplacementOfAggregatesPass *createCustomScalarReplacementOfAggregatesPass(std::string kernel_name);

#endif //SCALAR_REPLACEMENT_OF_AGGREGATES_CUSTOMSCALARREPLACEMENTOFAGGREGATESPASS_HPP
