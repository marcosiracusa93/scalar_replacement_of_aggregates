//
// Created by Marco Siracusa on 3/10/20.
//

#ifndef SCALAR_REPLACEMENT_OF_AGGREGATES_MyLoopUnrollPass_HPP
#define SCALAR_REPLACEMENT_OF_AGGREGATES_MyLoopUnrollPass_HPP

#include <llvm/Analysis/LoopPass.h>

using namespace llvm;

class MyLoopUnrollPass : public LoopPass {

public:

    static char ID;

    MyLoopUnrollPass();

    /**
     * @brief unroll all loops above a certain depth
     * @param F an llvm::Function to be processed
     * @return true - the function is modified
     */
    bool runOnLoop(Loop *L, LPPassManager &LPM) override;

    /**
     * @brief specifies the required llvm passes for this pass.
     * @param AU - see llvm::FunctionPass documentation
     */
    void getAnalysisUsage(AnalysisUsage &AU) const override;

};

/**
 * @brief wrapper function to create a @{MyLoopUnrollPass}
 * @param minLoopDepth - the minimum depth of the loops to unroll
 * @return the @{MyLoopUnrollPass} object used to run the pass on a LLVM function
 */
MyLoopUnrollPass *createMyLoopUnrollPass();

#endif //SCALAR_REPLACEMENT_OF_AGGREGATES_MyLoopUnrollPass_HPP
