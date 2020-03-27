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

    cp ../../bin/f0_first.ll ../bins/first_"$filename"
    cp ../../bin/f9_final.ll ../bins/final_"$filename"
    echo COMPILING DOWN
    clang -O3 ../bins/first_"$filename" -o ../bins/first_"$filename".out
    clang -O3 ../bins/final_"$filename" -o ../bins/final_"$filename".out

    echo RUNNING TEST
    ../bins/first_"$filename".out 100000 | grep -- 'Time:\|Result:'
    ../bins/final_"$filename".out 100000 | grep -- 'Time:\|Result:'
done