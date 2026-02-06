#!/bin/bash
set -e

# Build and test all _demo subdirectories with both normal and DCE modes,
# then print a size comparison table.

tmp_root="$(mktemp -d)"
trap 'rm -rf "$tmp_root"' EXIT

file_size() {
  if stat --version >/dev/null 2>&1; then
    stat -c%s "$1"
  else
    stat -f%z "$1"
  fi
}

cases=()
for d in ./_demo/go/* ./_demo/py/* ./_demo/c/*; do
  if [ -d "$d" ] && [ -n "$(ls "$d"/*.go 2>/dev/null)" ]; then
    cases+=("$d")
  fi
done

total="${#cases[@]}"
failed=0
failed_cases=""

# Collect rows for the summary table: "dir normal_kb dce_kb savings_kb"
table_rows=()

run_case() {
  local dir="$1"
  local name
  local normal_bin
  local dce_bin
  local size_normal
  local size_dce

  name="$(basename "$dir")"
  normal_bin="$tmp_root/${name}-normal"
  dce_bin="$tmp_root/${name}-dce"

  echo "Testing $dir (normal)"
  if ! (cd "$dir" && llgo build -o "$normal_bin" . && "$normal_bin"); then
    echo "FAIL (normal)"
    return 1
  fi
  echo "PASS"

  echo "Testing $dir (-dce)"
  if ! (cd "$dir" && llgo build -dce -o "$dce_bin" . && "$dce_bin"); then
    echo "FAIL (-dce)"
    return 1
  fi
  echo "PASS"

  size_normal="$(file_size "$normal_bin")"
  size_dce="$(file_size "$dce_bin")"
  local kb_normal=$(( size_normal / 1024 ))
  local kb_dce=$(( size_dce / 1024 ))
  local kb_savings=$(( kb_normal - kb_dce ))
  # Print a machine-readable line for the table collector.
  echo "TABLE_ROW:${dir}:${kb_normal}:${kb_dce}:${kb_savings}"
}

for d in "${cases[@]}"; do
  output="$(run_case "$d" 2>&1)" || {
    failed=$((failed+1))
    failed_cases="$failed_cases\n* :x: $d"
  }
  echo "$output"
  # Extract table row from output.
  row="$(echo "$output" | grep '^TABLE_ROW:' || true)"
  if [ -n "$row" ]; then
    table_rows+=("$row")
  fi
done

# Print summary table.
echo ""
echo "=== DCE Size Comparison ==="
printf "%-45s | %10s | %10s | %10s\n" "Directory" "Normal(KB)" "DCE(KB)" "Savings(KB)"
printf "%-45s-|-%10s-|-%10s-|-%10s\n" "---------------------------------------------" "----------" "----------" "----------"
for row in "${table_rows[@]}"; do
  IFS=':' read -r _ dir kb_normal kb_dce kb_savings <<< "$row"
  printf "%-45s | %10s | %10s | %10s\n" "$dir" "$kb_normal" "$kb_dce" "$kb_savings"
done
echo ""

echo "=== Done"
echo "$((total-failed))/$total tests passed"

if [ "$failed" -ne 0 ]; then
  echo ":bangbang: Failed demo cases:" | tee -a result.md
  echo -e "$failed_cases" | tee -a result.md
  exit 1
else
  echo ":white_check_mark: All demo tests passed" | tee -a result.md
fi
