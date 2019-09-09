//
// Created by Marco Siracusa on 9/6/19.
//

#ifndef SCALAR_REPLACEMENT_OF_AGGREGATES_CHUNKOPSLOWERINGPASS_HPP
#define SCALAR_REPLACEMENT_OF_AGGREGATES_CHUNKOPSLOWERINGPASS_HPP


#include <llvm/Pass.h>
#include <llvm/IR/Dominators.h>

class ChunkOpsLoweringPass : public llvm::FunctionPass
{
public:
    char ID = 0;

public:
    explicit ChunkOpsLoweringPass(char& _ID) : llvm::FunctionPass(_ID)
    {
    }
    explicit ChunkOpsLoweringPass() : llvm::FunctionPass(ID)
    {
    }

    bool runOnFunction(llvm::Function& function) override;

    void getAnalysisUsage(llvm::AnalysisUsage& AU) const override
    {
        AU.setPreservesCFG();
    }
};

llvm::Pass* createChunkOpsLoweringPass();


#endif //SCALAR_REPLACEMENT_OF_AGGREGATES_CHUNKOPSLOWERINGPASS_HPP
