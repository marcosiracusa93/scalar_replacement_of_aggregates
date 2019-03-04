//
// Created by Marco Siracusa on 2/27/19.
//

#ifndef SCALAR_REPLACEMENT_OF_AGGREGATES_CUSTOMSCALARREPLACEMENTOFAGGREGATESPASS_HPP
#define SCALAR_REPLACEMENT_OF_AGGREGATES_CUSTOMSCALARREPLACEMENTOFAGGREGATESPASS_HPP


#include <llvm/Pass.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Instructions.h>

class CustomScalarReplacementOfAggregatesPass : public llvm::ModulePass {

public:
    char ID;

private:
    const std::string kernel_name;

public:
    explicit CustomScalarReplacementOfAggregatesPass(std::string kernel_name) : llvm::ModulePass(ID),
                                                                                kernel_name(kernel_name) {

    }

    bool runOnModule(llvm::Module &module) override;

    void getAnalysisUsage(llvm::AnalysisUsage &AU) const override;

private:
    void processArguments(llvm::Function *function);

    void expandValue(llvm::Value *use, llvm::Value *prev, llvm::StructType *str, std::vector<llvm::Value *> &expanded);
};

CustomScalarReplacementOfAggregatesPass *createCustomScalarReplacementOfAggregatesPass(std::string kernel_name);

#endif //SCALAR_REPLACEMENT_OF_AGGREGATES_CUSTOMSCALARREPLACEMENTOFAGGREGATESPASS_HPP
