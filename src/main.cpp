#include <CustomScalarReplacementOfAggregatesPass.hpp>
#include <ExpandMemOpsPass.hpp>
#include <GepiCanonicalizationPass.hpp>
#include <PrintModulePass.hpp>
#include <SROA_LoopRotation.h>
#include <iostream>
#include <sys/time.h>

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Support/SourceMgr.h"

#include "llvm/Analysis/LazyValueInfo.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/AsmParser/Parser.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Scalar/LICM.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/Mem2Reg.h"
#include "llvm/Transforms/Scalar/LoopUnrollPass.h"

#include "llvm/IR/Verifier.h"

#include "cmdline_options_parser.hpp"

unsigned long getTime()
{
   struct timeval tv;
   gettimeofday(&tv, NULL);
   return tv.tv_sec * 1000 * 1000 + tv.tv_usec;
}

int main(int argc, char** argv)
{
   cmdline_options args_info;
   cmdline_parse_arguments(argc, argv, &args_info);

   static llvm::LLVMContext context; // LLVMContext variable
   llvm::SMDiagnostic error;         // error message
   llvm::Module* module;             // module to process
   std::string modulePath;           // full path for the file to process

   std::string raw_path = std::string(args_info.ll_path);

   if(raw_path.back() != '/')
   {
      raw_path.push_back('/');
   }
   modulePath = raw_path + std::string(args_info.ll_filename);

   // check if the .ll file of the module exists and can be opened
   std::fstream file;
   file.open(modulePath);
   if(!file.good())
   {
      llvm::errs() << "Failed to open: " + modulePath << "\n";
      exit(-1);
   }
   else
   {
      file.close();
   }

   // parse a llvm::Module from the .ll file
   auto modPtr = llvm::parseAssemblyFile(modulePath, error, context);

   module = (llvm::Module*)modPtr.get();
   if(module == nullptr)
   {
      llvm::errs() << "Error: Null module!\n";
      exit(-1);
   }


    char progName[] = "progName";
    char debug[] = "-debug";
    char stats[] = "-stats";
    char print_after_all[] = "-print-after-all";

    char* opt_argv[] = {progName, /*debug,*/ stats, /*print_after_all*/};
    //llvm::cl::ParseCommandLineOptions(2, opt_argv, "");


   // Run on module
   {
      llvm::legacy::PassManager* passManager = new llvm::legacy::PassManager();
      llvm::TargetIRAnalysis TIRA = llvm::TargetIRAnalysis();
      /*
            // Insert -O3 in chain
            {
               passManager->add(llvm::createVerifierPass());
               llvm::PassManagerBuilder passManagerBuilder;
               passManagerBuilder.OptLevel = 1;
               passManagerBuilder.DisableUnrollLoops = true;
               passManagerBuilder.BBVectorize = false;
               passManagerBuilder.LoopVectorize = false;
               passManagerBuilder.SLPVectorize = false;
               /// passManagerBuilder.populateModulePassManager(*passManager);
            }

            passManager->add(llvm::createPromoteMemoryToRegisterPass());
      */
      passManager->add(llvm::createPromoteMemoryToRegisterPass());
      passManager->add(new llvm::ScalarEvolutionWrapperPass());
      passManager->add(new llvm::LoopInfoWrapperPass());
      passManager->add(new llvm::DominatorTreeWrapperPass());
      passManager->add(new llvm::AssumptionCacheTracker());
      passManager->add(llvm::createTargetTransformInfoWrapperPass(TIRA));
      passManager->add(createPrintModulePass("./f0_first.ll"));


      passManager->add(createCodeSimplificationPass());
      passManager->add(createPrintModulePass("./f1_after_simplification.ll"));


      passManager->add(llvm::createPromoteMemoryToRegisterPass());
      passManager->add(createSROALoopRotatePass());
      passManager->add(llvm::createSROALoopUnrollPass());
      passManager->add(createCleanLCSSA());
      passManager->add(llvm::createVerifierPass());
      passManager->add(createPrintModulePass("./f2_after_unrolling.ll"));


      passManager->add(llvm::createPromoteMemoryToRegisterPass());
      passManager->add(createGepiCanonicalIdxs());
      passManager->add(createRemoveIntrinsicPass());
      passManager->add(llvm::createExpandMemOpsPass());
      passManager->add(createPtrIteratorSimplificationPass());
      passManager->add(createChunkOperationsLoweringPass());
      passManager->add(createBitcastVectorRemovalPass());
      passManager->add(createSelectLoweringPass());
      passManager->add(llvm::createVerifierPass());
      passManager->add(createPrintModulePass("./f3_after_canonicalization.ll"));


      passManager->add(createSROAFunctionVersioningPass(args_info.target_function));
      passManager->add(createPrintModulePass("./f4_after_versioning.ll"));

      passManager->add(llvm::createVerifierPass());
      // Insert -O3 in chain
      {
         passManager->add(llvm::createVerifierPass());
         llvm::PassManagerBuilder passManagerBuilder;
         passManagerBuilder.OptLevel = 0;
         passManagerBuilder.DisableUnrollLoops = true;
         passManagerBuilder.BBVectorize = false;
         passManagerBuilder.LoopVectorize = false;
         passManagerBuilder.SLPVectorize = false;
         passManagerBuilder.populateModulePassManager(*passManager);
      }

      passManager->add(createGepiCanonicalIdxs());
      passManager->add(createRemoveIntrinsicPass());
      passManager->add(llvm::createExpandMemOpsPass());
      passManager->add(createPtrIteratorSimplificationPass());
      passManager->add(createChunkOperationsLoweringPass());
      passManager->add(createBitcastVectorRemovalPass());
      passManager->add(createSelectLoweringPass());
      passManager->add(createGepiExplicitation());
      passManager->add(llvm::createVerifierPass());
      passManager->add(createPrintModulePass("./f5_after_canonicalization.ll"));


      passManager->add(createSROADisaggregationPass(args_info.target_function));
      passManager->add(llvm::createVerifierPass());
      passManager->add(createPrintModulePass("./f6_after_disaggregation.ll"));


      // Insert -O3 in chain
      {
         passManager->add(llvm::createVerifierPass());
         llvm::PassManagerBuilder passManagerBuilder;
         passManagerBuilder.OptLevel = 1;
         passManagerBuilder.DisableUnrollLoops = true;
         passManagerBuilder.BBVectorize = false;
         passManagerBuilder.LoopVectorize = false;
         passManagerBuilder.SLPVectorize = false;
         passManagerBuilder.populateModulePassManager(*passManager);
      }

      passManager->add(createPrintModulePass("./f7_after_optimization.ll"));
      passManager->add(createSROAWrapperInliningPass(args_info.target_function));
      passManager->add(llvm::createVerifierPass());
      passManager->add(createPrintModulePass("./f8_after_inlining.ll"));

      // Insert -O3 in chain
      {
         llvm::PassManagerBuilder passManagerBuilder;
         passManagerBuilder.OptLevel = 3;
         passManagerBuilder.DisableUnrollLoops = true;
         passManagerBuilder.BBVectorize = false;
         passManagerBuilder.LoopVectorize = false;
         passManagerBuilder.SLPVectorize = false;
         passManagerBuilder.populateModulePassManager(*passManager);
      }

      passManager->add(createPrintModulePass("./f9_final.ll"));
      passManager->run(*module);
   }

   return 0;
}
