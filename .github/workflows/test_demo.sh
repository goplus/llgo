#!/bin/bash
set -e

# llgo run subdirectories under _demo that contain *.go files
total=0
failed=0
failed_cases=""
for d in ./_demo/go/* ./_demo/py/* ./_demo/c/*; do
  if [ -d "$d" ] && [ -n "$(ls "$d"/*.go 2>/dev/null)" ]; then
    total=$((total+1))
    echo "Testing $d"
    if ! (cd "$d" && llgo run .); then
      echo "FAIL"
      failed=$((failed+1))
      failed_cases="$failed_cases\n* :x: $d"
    else
      echo "PASS"
    fi
  fi
done
echo "=== Done"
echo "$((total-failed))/$total tests passed"

if [ "$failed" -ne 0 ]; then
  echo ":bangbang: Failed demo cases:" | tee -a result.md
  echo -e "$failed_cases" | tee -a result.md
  exit 1
else
  echo ":white_check_mark: All demo tests passed" | tee -a result.md
fi
