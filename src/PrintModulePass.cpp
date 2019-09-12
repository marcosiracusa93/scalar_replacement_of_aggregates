//
// Created by Marco Siracusa on 5/11/19.
//

#include "PrintModulePass.hpp"

llvm::ModulePass *createPrintModulePass(std::string file_path_name) {
    return new PrintModulePass(file_path_name);
}

char PrintModulePass::ID = 0;
