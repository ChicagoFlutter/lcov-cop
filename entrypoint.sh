#!/bin/sh -l

LCOV_PATH=$1

code_coverage=$(lcov --list ${LCOV_PATH} | sed -n "s/.*Total:|\(.*\)%.*/\1/p")

echo "Code Coverage: ${code_coverage}%"
if (( $(echo "$code_coverage < 100" | bc) )); then exit 1; fi