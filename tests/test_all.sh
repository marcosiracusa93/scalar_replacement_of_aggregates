#!/usr/bin/env bash

rm bins/*
cd test_cases

for filename in *.ll; do
    echo -e "\n"
    echo TESTING "$filename" "***************************"
    cd ../../bin/
    rm *.ll
    pwd

    echo PERFORMING SROA
    start_time1="$(date -u +%s)"
    ./main -l ../tests/test_cases/"$filename" -p . -f main > /dev/null 2>&1
    end_time1="$(date -u +%s)"
    elapsed1="$(($end_time1-$start_time1))"
    echo "Disaggregation performed in $elapsed1 seconds"

    cd ../tests/test_cases
    pwd
    cp ../../bin/f9_final.ll ../bins/opt_"$filename"
    echo COMPILING DOWN
    clang -O3 ../bins/opt_"$filename" -o ../bins/"$filename".out

    echo RUNNING TEST
    start_time2="$(date -u +%s)"
    ../bins/"$filename".out
    end_time2="$(date -u +%s)"
    elapsed2="$(($end_time2-$start_time2))"
    echo "Running performed in $elapsed2 seconds"
done