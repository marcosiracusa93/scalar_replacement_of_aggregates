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

public:
    CustomScalarReplacementOfAggregatesPass() : llvm::ModulePass(ID) {

    }

    bool runOnModule(llvm::Module &module) override;

    void getAnalysisUsage(llvm::AnalysisUsage &AU) const override;
};

CustomScalarReplacementOfAggregatesPass *createCustomScalarReplacementOfAggregatesPass();

#endif //SCALAR_REPLACEMENT_OF_AGGREGATES_CUSTOMSCALARREPLACEMENTOFAGGREGATESPASS_HPP
