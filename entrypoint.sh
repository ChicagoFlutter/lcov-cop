#!/bin/bash

set -e

LCOV_PATH=$1
MINIMUM_COVERAGE=$2
FILTERED_COVERAGE_PATH='./lcov_filtered.info'

if [ ! -z "$3" ]; then
    echo "Excluding $3 from coverage..."
    lcov --remove ${LCOV_PATH} $3 -o ${FILTERED_COVERAGE_PATH}
    CODE_COVERAGE=$(lcov --list ${FILTERED_COVERAGE_PATH} | sed -n "s/.*Total:|\([^%]*\)%.*/\1/p")
else
    CODE_COVERAGE=$(lcov --list ${LCOV_PATH} | sed -n "s/.*Total:|\([^%]*\)%.*/\1/p")
fi

echo "Minumum Coverage Required: ${MINIMUM_COVERAGE}%"
echo "Current Code Coverage: ${CODE_COVERAGE}%"
if (( $(echo "$CODE_COVERAGE < $2" | bc) )); then exit 1; fi
