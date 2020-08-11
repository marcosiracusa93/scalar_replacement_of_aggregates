#!/usr/bin/env bash

test_folder=timed_test_cases

rm bins/*
cd "$test_folder"

for filename in *.ll; do
    echo -e "\n"
    echo TESTING "$filename" "***************************"
    cd ../../bin/
    rm *.ll

    echo PERFORMING SROA
    start_time1="$(date -u +%s)"
    ./main -l ../tests/"$test_folder"/"$filename" -p . -f main 2> >(grep -- 'Total\|Disaggregated')
    end_time1="$(date -u +%s)"
    elapsed1="$(($end_time1-$start_time1))"
    echo "Disaggregation performed in $elapsed1 seconds"

    cd ../tests/"$test_folder"

    for ir_filename in ../../bin/*.ll; do
        f="$(basename -- $ir_filename)"
        echo TESTING "$f"
        sleep 1
        #clang -O3 ../../bin/"$f" -o ../bins/"$f".out
        /usr/local/llvm-4.0.0/bin/clang ../../bin/"$f" -o ../bins/"$f".out
        sleep 1
        #../bins/"$f".out 1000000 | grep -- 'Time:\|Result:'
        ../bins/"$f".out 1 | grep -- 'Time:\|Result:'
    done
done