//
// Created by Marco Siracusa on 7/27/19.
//

#ifndef SCALAR_REPLACEMENT_OF_AGGREGATES_GEPICANONICALIZATIONPASS_HPP
#define SCALAR_REPLACEMENT_OF_AGGREGATES_GEPICANONICALIZATIONPASS_HPP

#include <llvm/IR/Instructions.h>
#include <llvm/Pass.h>

class GepiCanonicalizationPass : public llvm::FunctionPass
{
public:
    char ID = 0;

public:
    explicit GepiCanonicalizationPass(char& _ID) : llvm::FunctionPass(_ID)
    {
    }
    explicit GepiCanonicalizationPass() : llvm::FunctionPass(ID)
    {
    }

    bool runOnFunction(llvm::Function& function) override;

    void getAnalysisUsage(llvm::AnalysisUsage& AU) const override
    {
        AU.setPreservesCFG();
    }
};

llvm::Pass* createGepiCanonicalizationPass();

#endif // SCALAR_REPLACEMENT_OF_AGGREGATES_GEPICANONICALIZATIONPASS_HPP