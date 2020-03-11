#!/usr/bin/env bash
cd test_cases

for filename in *.ll; do
    echo TESTING "$filename"
    cd ../../bin/
    pwd
    echo PERFORMING SROA
    ./main -l ../tests/test_cases/"$filename" -p . -f main > /dev/null 2>&1
    cd ../tests/test_cases
    pwd
    cp ../../bin/f9_final.ll ../bins/opt_"$filename"
    echo COMPILING DOWN
    clang -O3 ../bins/opt_"$filename" -o ../bins/"$filename".out
    echo RUNNING TEST
    ../bins/"$filename".out
done