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

class CustomScalarReplacementOfAggregatesPass : public llvm::ModulePass {

public:
    char ID;

private:
    const std::string kernel_name;

    expanded_elements_in_args_ty expanded_elements_in_args;
    fun_to_fun_map_ty exp_fun_map;
    call_to_call_map_ty exp_call_map;
    call_set_ty visited_memcpy;
    inst_set_ty inst_to_remove;

public:
    explicit CustomScalarReplacementOfAggregatesPass(std::string kernel_name) : llvm::ModulePass(ID),
                                                                                kernel_name(kernel_name) {

    }

    bool runOnModule(llvm::Module &module) override;

    void getAnalysisUsage(llvm::AnalysisUsage &AU) const override;

private:
    void processFunction(llvm::Function *function);

    void expandArguments(llvm::Function *called_function, llvm::Function *new_function,
                         std::vector<unsigned long long> arg_map);

    void expandValue(llvm::Value *use, llvm::Value *prev, llvm::StructType *str, std::vector<llvm::Value *> &expanded);
};

CustomScalarReplacementOfAggregatesPass *createCustomScalarReplacementOfAggregatesPass(std::string kernel_name);

#endif //SCALAR_REPLACEMENT_OF_AGGREGATES_CUSTOMSCALARREPLACEMENTOFAGGREGATESPASS_HPP
