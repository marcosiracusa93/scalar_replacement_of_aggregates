#include <iostream>
#include <fstream>
#include <list>
#include <sys/time.h>

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Support/SourceMgr.h"

#include "llvm/AsmParser/Parser.h"
#include "llvm/Analysis/LazyValueInfo.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/Transforms/Scalar/LICM.h"

#include "cmdline_options_parser.hpp"

unsigned long getTime() {
    struct timeval tv;
    gettimeofday(&tv, NULL);
    return tv.tv_sec * 1000 * 1000 + tv.tv_usec;
}

int main(int argc, char **argv) {

    cmdline_options args_info;
    cmdline_parse_arguments(argc, argv, &args_info);

    static llvm::LLVMContext context;           // LLVMContext variable
    llvm::SMDiagnostic error;                   // error message
    llvm::Module *module;                       // module to process
    std::string modulePath;                     // full path for the file to process

    modulePath = std::string(args_info.ll_path) + std::string(args_info.ll_filename);

    // check if the .ll file of the module exists and can be opened
    std::fstream file;
    file.open(modulePath);
    if (!file.good()) {
        llvm::errs() << "Failed to open: " + modulePath << "\n";
        exit(-1);
    } else {
        file.close();
    }

    //parse a llvm::Module from the .ll file
    auto modPtr = llvm::parseAssemblyFile(modulePath, error, context);

    module = (llvm::Module *) modPtr.get();
    if (module == nullptr) {
        llvm::errs() << "Error: Null module!\n";
        exit(-1);
    }
/*
    char progName[] = "progName";
    char ast_threshold_cmd[] = "-alias-set-saturation-threshold";
    char ast_threshold_val[] = "4294967295";
    char memdep_scanLimit_cmd[] = "-memdep-block-scan-limit";
    char memdep_scanLimit_val[] = "4294967295";
    char memdep_numberLimit_cmd[] = "-memdep-block-number-limit";
    char memdep_numberLimit_val[] = "4294967295";
    char unroll_threshold_cmd[] = "-unroll-threshold";
    char unroll_threshold_val[] = "4294967295";

    char *opt_argv[] = {progName,
                        ast_threshold_cmd, ast_threshold_val,
                        memdep_scanLimit_cmd, memdep_scanLimit_val,
                        memdep_numberLimit_cmd, memdep_numberLimit_val};
    llvm::cl::ParseCommandLineOptions(7, opt_argv, "");
*/

    // Run on module
    {
        llvm::legacy::PassManager *passManager = new llvm::legacy::PassManager();
        llvm::TargetIRAnalysis TIRA = llvm::TargetIRAnalysis();

/*
        llvm::PassManagerBuilder passManagerBuilder;
        passManagerBuilder.OptLevel = 1;
        passManagerBuilder.DisableUnrollLoops = true;
        passManagerBuilder.BBVectorize = false;
        passManagerBuilder.LoopVectorize = false;
        passManagerBuilder.SLPVectorize = false;
        passManagerBuilder.populateModulePassManager(*passManager);
*/

        passManager->run(*module);
    }

    return 0;
}
