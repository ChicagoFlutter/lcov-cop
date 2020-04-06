#!/bin/sh -l

LCOV_PATH=$1
MINIMUM_COVERAGE=$2

CODE_COVERAGE=$(lcov --list ${LCOV_PATH} | sed -n "s/.*Total:|\(.*\)%.*/\1/p")

echo "Minumum Coverage: ${MINIMUM_COVERAGE}$"
echo "Code Coverage: ${CODE_COVERAGE}%"
if (( $(echo "$CODE_COVERAGE < $2" | bc) )); then
    exit 1;
fi