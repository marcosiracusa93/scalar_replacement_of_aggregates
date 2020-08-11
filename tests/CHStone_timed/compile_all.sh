#!/usr/bin/env bash

for f in * ; do
    if [ -d "$f" ]; then
        echo COMPILING "$f"
        /usr/local/llvm-4.0.0/bin/clang -S -emit-llvm "$f"/"$f".c -o "$f".ll
        mv "$f".ll ../timed_test_cases/
    fi
done