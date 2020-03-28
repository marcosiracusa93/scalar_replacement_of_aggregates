//===- LoopUnrollPass.h -----------------------------------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#ifndef SORA_LOOPUNROLLPASS_H
#define SROA_LOOPUNROLLPASS_H

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Transforms/Scalar/LoopPassManager.h"

namespace llvm {

struct SROALoopUnrollPass : public PassInfoMixin<SROALoopUnrollPass> {
  Optional<unsigned> ProvidedCount;
  Optional<unsigned> ProvidedThreshold;
  Optional<bool> ProvidedAllowPartial;
  Optional<bool> ProvidedRuntime;
  Optional<bool> ProvidedUpperBound;

  PreservedAnalyses run(Loop &L, LoopAnalysisManager &AM,
                        LoopStandardAnalysisResults &AR, LPMUpdater &U);
};
} // end namespace llvm

llvm::Pass *createSROALoopUnrollPass(int Threshold = -1, int Count = -1,
                                    int AllowPartial = -1, int Runtime = -1,
                                    int UpperBound = -1);

#endif // LLVM_TRANSFORMS_SCALAR_LOOPUNROLLPASS_H
