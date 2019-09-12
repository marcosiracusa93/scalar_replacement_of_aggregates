//
// Created by Marco Siracusa on 5/11/19.
//

#ifndef ROOFLINE_4_FPGA_PRINTMODULEPASS_HPP
#define ROOFLINE_4_FPGA_PRINTMODULEPASS_HPP

#include <sstream>
#include <string>
#include <llvm/Support/raw_ostream.h>
#include <fstream>
#include "llvm/Pass.h"
#include "llvm/IR/Module.h"

class PrintModulePass : public llvm::ModulePass {

public:
    static char ID;

private:
    std::string file_path_name;

public:
    PrintModulePass(std::string file_path_name) : llvm::ModulePass(ID),
                                                              file_path_name(file_path_name) {}

    bool runOnModule(llvm::Module &module) override {

        std::ofstream ofs(file_path_name);

        if (ofs.is_open()) {
            std::string module_str;
            llvm::raw_string_ostream rso(module_str);
            rso << module;
            rso.flush();
            ofs << module_str;
            ofs.close();
        }
        return false;
    }

    void getAnalysisUsage(llvm::AnalysisUsage &AU) const override {
        AU.setPreservesAll();
    }
};

llvm::ModulePass *createPrintModulePass(std::string file_path_name);


#endif //ROOFLINE_4_FPGA_PRINTMODULEPASS_HPP
