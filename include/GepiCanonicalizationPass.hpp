//
// Created by Marco Siracusa on 7/27/19.
//

#ifndef SCALAR_REPLACEMENT_OF_AGGREGATES_GEPICANONICALIZATIONPASS_HPP
#define SCALAR_REPLACEMENT_OF_AGGREGATES_GEPICANONICALIZATIONPASS_HPP

#include <llvm/IR/Instructions.h>
#include <llvm/Pass.h>

enum SROA_optimizations
{
    SROA_ptrIteratorSimplification,
    SROA_chunkOperationsLowering,
    SROA_bitcastVectorRemoval
};

class GepiCanonicalizationPass : public llvm::FunctionPass
{
 public:
   char ID = 0;

private:
    unsigned short optimization_selection = 0;

 public:
   explicit GepiCanonicalizationPass(char& _ID, unsigned short optimization_selection = 0) : llvm::FunctionPass(_ID), optimization_selection(optimization_selection)
   {
   }
   explicit GepiCanonicalizationPass(unsigned short optimization_selection = 0) : llvm::FunctionPass(ID), optimization_selection(optimization_selection)
   {
   }

   bool runOnFunction(llvm::Function& function) override;

   void getAnalysisUsage(llvm::AnalysisUsage& AU) const override
   {
      AU.setPreservesCFG();
   }
};

GepiCanonicalizationPass* createPtrIteratorSimplificationPass();

GepiCanonicalizationPass* createChunkOperationsLoweringPass();

GepiCanonicalizationPass* createBitcastVectorRemovalPass();

#endif // SCALAR_REPLACEMENT_OF_AGGREGATES_GEPICANONICALIZATIONPASS_HPP
