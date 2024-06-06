#!/bin/bash
set -e
testcmd=/tmp/test
llgo build -o $testcmd ./_test
cases=$($testcmd)
total=$(echo "$cases" | wc -l | tr -d ' ')
succ=0
for idx in $(seq 1 $((total))); do
  case=$(echo "$cases" | sed -n "${idx}p")
  case_id=$(echo "$case" | cut -d',' -f1)
  case_name=$(echo "$case" | cut -d',' -f2)
  echo "=== Test case: $case_name"
  set +e
  out=$("$testcmd" "$((idx-1))" 2>&1)
  exit_code=$?
  set -e
  if [ "${exit_code:-0}" -ne 0 ]; then
    echo "failed: $out"
  else
    succ=$((succ+1))
    echo "passed"
  fi
done
echo "=== Done"
echo "$succ/$total tests passed"
if [ "$total" -ne "$succ" ]; then
  exit 1
fi
