#!/bin/bash
set -e
testcmd=/tmp/test
llgo build -o $testcmd ./_test
total=$($testcmd)
succ=0
for idx in $(seq 0 $((total-1))); do
  echo "=== Running test: $idx"
  set +e
  out=$("$testcmd" "$idx" 2>&1)
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
