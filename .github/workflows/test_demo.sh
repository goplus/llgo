#!/bin/bash

# llgo run subdirectories under _demo and _pydemo
total=0
failed=0
failed_cases=""
fail_case() {
  echo "FAIL: $2"
  failed=$((failed+1))
  failed_cases="$failed_cases\n* :x: $1"
}
for d in ./_demo/* ./_pydemo/*; do
  total=$((total+1))
  if [ -d "$d" ]; then
    echo "Testing $d"

    # Build
    bin_file="$(mktemp "$d/bin_XXXXXX")"
    if ! llgo build -o "$bin_file" -v "$d"; then
      fail_case "$d" "Build"
      continue
    fi

    # Run
    actual_output_file="$d/actual_output.txt"
    if ! "$bin_file" &> "$actual_output_file"; then
      fail_case "$d" "Run"
      continue
    fi

    # Compare output if expected_output.txt exists
    if [ -f "$d/expected_output.txt" ] && ! diff -u "$d/expected_output.txt" "$actual_output_file"; then
      fail_case "$d" "CompareOutput"
      continue
    fi

    echo "PASS"
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
