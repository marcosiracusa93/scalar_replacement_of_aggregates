#include "LoopUnrollPass.hpp"

#include <llvm/IR/LegacyPassManager.h>
#include <llvm/Transforms/Scalar/LoopUnrollPass.h>
#include <llvm/Transforms/Utils/UnrollLoop.h>
#include <llvm/Analysis/OptimizationDiagnosticInfo.h>
#include <llvm/Analysis/ScalarEvolution.h>
#include <llvm/Analysis/AssumptionCache.h>
#include <llvm/IR/Dominators.h>

using namespace llvm;

MyLoopUnrollPass *createMyLoopUnrollPass() {
   return new MyLoopUnrollPass();
}

MyLoopUnrollPass::MyLoopUnrollPass() : LoopPass(ID) {
}

bool MyLoopUnrollPass::runOnLoop(Loop *L, LPPassManager &LPM) {

   Function &F = *L->getHeader()->getParent();

   // get all required analyses
   ScalarEvolution *SE = &getAnalysis<ScalarEvolutionWrapperPass>().getSE();
   LoopInfo *LI = &getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
   TargetTransformInfo *TTI = &getAnalysis<TargetTransformInfoWrapperPass>().getTTI(F);
   AssumptionCache *AC = &getAnalysis<AssumptionCacheTracker>().getAssumptionCache(F);
   DominatorTree *DT = &getAnalysis<DominatorTreeWrapperPass>().getDomTree();
/*
    // Get loop for.end
    llvm::BasicBlock *forEnd = L->getUniqueExitBlock();
    if(!forEnd) {
        LOG_ERROR("Wrong loop format for " << L->getName());
    }

    // Get loop for.cond
    llvm::BasicBlock *forCond = L->getHeader();
    if(forCond->getNumUses() != 2) {
        LOG_ERROR("Wrong loop format for " << L->getName());
    }

    // Get loop for.body
    llvm::BasicBlock* forBody = nullptr;
    for (llvm::BasicBlock *next : llvm::successors(forCond)) {
        if(next != forEnd) {
            forBody = next;
            break;
        }
    }
*/

   bool doUnroll = true;

   unsigned int factor = 0;

   llvm::MDNode *mdNode = L->getLoopLatch()->getTerminator()->getMetadata("opt.unroll");
   if (false and mdNode) {
      llvm::Metadata *meta = mdNode->getOperand(1).get();
      if (llvm::ConstantAsMetadata *meta_constant = llvm::dyn_cast<llvm::ConstantAsMetadata>(meta)) {
         if (llvm::isa<llvm::ConstantInt>(meta_constant->getValue())) {
            factor = (unsigned int) llvm::dyn_cast<ConstantInt>(
                    meta_constant->getValue())->getValue().getSExtValue();
         } else {
            doUnroll = false;
         }
      } else {
         doUnroll = false;
      }
   } else {
      doUnroll = false;
   }

   if (true) {

      // now we can proceed with unrolling...
      unsigned TripCount = 0;
      unsigned TripMultiple = 1;
      // If there are multiple exiting blocks but one of them is the latch, use the
      // latch for the trip count estimation. Otherwise insist on a single exiting
      // block for the trip count estimation.
      BasicBlock *ExitingBlock = L->getLoopLatch();
      if (!ExitingBlock || !L->isLoopExiting(ExitingBlock))
         ExitingBlock = L->getExitingBlock();
      if (ExitingBlock) {
         TripCount = SE->getSmallConstantTripCount(L, ExitingBlock);
         TripMultiple = SE->getSmallConstantTripMultiple(L, ExitingBlock);
      }

      // TODO: insert additional check to avoid code explosion!
      // Does not make sense to unroll above 1000s of iterations

      OptimizationRemarkEmitter ORE(&F);

      if (TripCount > 30) {
         return false;
      }

      bool result = UnrollLoop(
              L,
              TripCount, // Count
              TripCount,
              true, // Force
              false, // AllowRuntime
              true, // AllowExpensiveTripCount
              false, // PreserveCondBr
              false, // PreserveOnlyFirst
              TripMultiple, // TripMultiple
              0, // PeelCount
              LI, SE, DT, AC, &ORE,
              true // PreserveLCSSA
      );

      if (result) {
         llvm::errs() << "Loop " << L->getName() << " succesfully unrolled" << "\n";
      } else {
         llvm::errs() << "Cannot unroll " << L->getName() << "\n";
      }
   }

   return true;
}

void MyLoopUnrollPass::getAnalysisUsage(AnalysisUsage &AU) const {
   AU.setPreservesAll();
   AU.addRequiredTransitive<ScalarEvolutionWrapperPass>();
   AU.addRequiredTransitive<LoopInfoWrapperPass>();
   AU.addRequiredTransitive<DominatorTreeWrapperPass>();
   AU.addRequiredTransitive<AssumptionCacheTracker>();
   AU.addRequiredTransitive<TargetTransformInfoWrapperPass>();
}

char MyLoopUnrollPass::ID = 0;

static llvm::RegisterPass<MyLoopUnrollPass>
        X("loop-unroller",         // pass option
          "Unrolls loops according to the directives", // pass description
          true, // does not modify the CFG
          false  // and it's an analysis
);