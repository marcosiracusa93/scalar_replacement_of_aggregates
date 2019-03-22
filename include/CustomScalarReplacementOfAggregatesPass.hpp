//
// Created by Marco Siracusa on 2/27/19.
//

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

public:
    explicit CustomScalarReplacementOfAggregatesPass(std::string kernel_name) : llvm::ModulePass(ID),
                                                                                kernel_name(kernel_name) {

    }

    bool runOnModule(llvm::Module &module) override;

    void getAnalysisUsage(llvm::AnalysisUsage &AU) const override;

private:

    void populate_inner_functions(llvm::Function *kernel_function, std::vector<llvm::Function *> &inner_functions);

    void expand_signatures_and_call_sites(std::vector<llvm::Function *> &inner_functions,
                                          std::map<llvm::Function *, llvm::Function *> &exp_fun_map,
                                          std::map<llvm::Function *, std::set<unsigned long long>> &exp_idx_args_map,
            //std::map<llvm::Argument *, std::vector<llvm::Argument *>> &exp_args_map,
                                          llvm::Function *kernel_function);

    void processFunction(llvm::Function *function);

    void expandArguments(//llvm::Function *called_function,
            llvm::Function *new_function);//,
    //std::set<unsigned long long> arg_map,
    //std::map<llvm::Argument *, std::vector<llvm::Argument *>> &exp_args_map);

    void expandValue(llvm::Value *use, llvm::Value *prev, llvm::Type *ty, std::vector<llvm::Value *> &expanded);

    void cleanup(std::map<llvm::Function *, std::set<unsigned long long>> &exp_idx_args_map,
                 std::map<llvm::Function *, llvm::Function *> &exp_fun_map);
};

CustomScalarReplacementOfAggregatesPass *createCustomScalarReplacementOfAggregatesPass(std::string kernel_name);

#endif //SCALAR_REPLACEMENT_OF_AGGREGATES_CUSTOMSCALARREPLACEMENTOFAGGREGATESPASS_HPP
