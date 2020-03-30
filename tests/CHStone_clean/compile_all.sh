#!/usr/bin/env bash

for f in * ; do
    if [ -d "$f" ]; then
        echo COMPILING "$f"
        clang -S -emit-llvm "$f"/"$f".c -o "$f".ll #-D'printf(fmt, ...)='
        mv "$f".ll ../test_cases/
    fi
done