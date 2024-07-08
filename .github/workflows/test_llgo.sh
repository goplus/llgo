#!/bin/bash
set -e

export LLGOROOT=$PWD

testcmd=/tmp/test
llgo build -o $testcmd ./c/bdwgc/_test
cases=$($testcmd)
total=$(echo "$cases" | wc -l | tr -d ' ')
failed=0
failed_cases=""

for idx in $(seq 1 $((total))); do
  case=$(echo "$cases" | sed -n "${idx}p")
  case_name=$(echo "$case" | cut -d',' -f2)
  echo "=== Test case: $case_name"
  set +e
  out=$("$testcmd" "$((idx-1))" 2>&1)
  exit_code=$?
  set -e
  if [ "${exit_code:-0}" -ne 0 ]; then
    echo "failed: $out"
    failed=$((failed+1))
    failed_cases="$failed_cases\n* :x: $case_name"
  else
    echo "passed"
  fi
done
echo "=== Done"
echo "$((total-failed))/$total tests passed"

if [ "$failed" -ne 0 ]; then
  echo ":bangbang: Failed llgo cases:" | tee -a result.md
  echo -e "$failed_cases" | tee -a result.md
  exit 1
else
  echo ":white_check_mark: All llgo tests passed" | tee -a result.md
fi
