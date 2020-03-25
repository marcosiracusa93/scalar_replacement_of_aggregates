#!/usr/bin/env bash
cd test_cases

for filename in *.ll; do
    echo TESTING "$filename"
    cd ../../bin/
    pwd
    ./main -l ../tests/test_cases/"$filename" -p . -f main > /dev/null 2>&1
    cd ../tests/test_cases
    pwd
    cp ../../bin/f9_final.ll ../bins/opt_"$filename"
    clang -O2 ../bins/opt_"$filename" -o ../bins/"$filename".out
    ../bins/"$filename".out
done