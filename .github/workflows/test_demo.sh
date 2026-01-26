#!/bin/bash
set -e

# llgo run subdirectories under _demo that contain *.go files
jobs="${LLGO_DEMO_JOBS:-1}"
if [ "${jobs}" -gt 1 ]; then
  if [ "${BASH_VERSINFO[0]}" -lt 5 ] || { [ "${BASH_VERSINFO[0]}" -eq 5 ] && [ "${BASH_VERSINFO[1]}" -lt 1 ]; }; then
    echo "warning: LLGO_DEMO_JOBS=${jobs} requested but bash ${BASH_VERSION} lacks 'wait -n -p'; running sequentially" >&2
    jobs=1
  fi
fi
tmp_root="$(mktemp -d)"
trap 'rm -rf "$tmp_root"' EXIT

cases=()
for d in ./_demo/go/* ./_demo/py/* ./_demo/c/*; do
  if [ -d "$d" ] && [ -n "$(ls "$d"/*.go 2>/dev/null)" ]; then
    cases+=("$d")
  fi
done

total="${#cases[@]}"
failed=0
failed_cases=""

# File to collect size information
size_report="$tmp_root/size_report.txt"
touch "$size_report"

run_case() {
  local dir="$1"
  local bin_name
  bin_name="$(basename "$dir")"
  local bin_path="$tmp_root/$bin_name"
  echo "Testing $dir"
  if (cd "$dir" && llgo build -o "$bin_path" .); then
    # Get binary size
    local size
    if [[ "$(uname)" == "Darwin" ]]; then
      size=$(stat -f%z "$bin_path" 2>/dev/null || echo "0")
    else
      size=$(stat -c%s "$bin_path" 2>/dev/null || echo "0")
    fi
    local size_kb=$((size / 1024))
    echo "Binary size: ${size_kb} KB ($size bytes)"
    # Write size to report file (using flock for parallel safety)
    (
      flock 200
      echo "$dir $size" >> "$size_report"
    ) 200>"$size_report.lock"
    # Run the binary
    if "$bin_path"; then
      echo "PASS"
    else
      echo "FAIL"
      return 1
    fi
  else
    echo "FAIL (build)"
    return 1
  fi
}

if [ "$jobs" -le 1 ] || [ "$total" -le 1 ]; then
  for d in "${cases[@]}"; do
    if ! run_case "$d"; then
      failed=$((failed+1))
      failed_cases="$failed_cases\n* :x: $d"
    fi
  done
else
  active_pids=()
  active_dirs=()
  active_logs=()
  idx=0

  for d in "${cases[@]}"; do
    idx=$((idx+1))
    log="$tmp_root/$(printf '%04d' "$idx").log"
    (run_case "$d") >"$log" 2>&1 &
    pid=$!
    active_pids+=("$pid")
    active_dirs+=("$d")
    active_logs+=("$log")

    while [ "${#active_pids[@]}" -ge "$jobs" ]; do
      finished_pid=""
      if wait -n -p finished_pid; then
        finished_status=0
      else
        finished_status=$?
      fi
      for i in "${!active_pids[@]}"; do
        if [ "${active_pids[$i]}" = "$finished_pid" ]; then
          cat "${active_logs[$i]}"
          if [ "$finished_status" -ne 0 ]; then
            failed=$((failed+1))
            failed_cases="$failed_cases\n* :x: ${active_dirs[$i]}"
          fi
          unset 'active_pids[i]' 'active_dirs[i]' 'active_logs[i]'
          active_pids=("${active_pids[@]}")
          active_dirs=("${active_dirs[@]}")
          active_logs=("${active_logs[@]}")
          break
        fi
      done
    done
  done

  while [ "${#active_pids[@]}" -gt 0 ]; do
    finished_pid=""
    if wait -n -p finished_pid; then
      finished_status=0
    else
      finished_status=$?
    fi
    for i in "${!active_pids[@]}"; do
      if [ "${active_pids[$i]}" = "$finished_pid" ]; then
        cat "${active_logs[$i]}"
        if [ "$finished_status" -ne 0 ]; then
          failed=$((failed+1))
          failed_cases="$failed_cases\n* :x: ${active_dirs[$i]}"
        fi
        unset 'active_pids[i]' 'active_dirs[i]' 'active_logs[i]'
        active_pids=("${active_pids[@]}")
        active_dirs=("${active_dirs[@]}")
        active_logs=("${active_logs[@]}")
        break
      fi
    done
  done
fi

echo "=== Done"
echo "$((total-failed))/$total tests passed"

# Output binary size report
echo ""
echo "=== Binary Size Report ===" | tee -a result.md
echo "| Demo | Size (KB) | Size (bytes) |" | tee -a result.md
echo "|------|-----------|--------------|" | tee -a result.md
total_size=0
if [ -f "$size_report" ]; then
  while IFS=' ' read -r dir size; do
    if [ -n "$dir" ] && [ -n "$size" ]; then
      size_kb=$((size / 1024))
      total_size=$((total_size + size))
      echo "| $dir | $size_kb | $size |" | tee -a result.md
    fi
  done < <(sort "$size_report")
fi
total_size_kb=$((total_size / 1024))
total_size_mb=$((total_size / 1024 / 1024))
echo "|------|-----------|--------------|" | tee -a result.md
echo "| **Total** | **${total_size_kb}** | **${total_size}** |" | tee -a result.md
echo "" | tee -a result.md
echo "Total size: ${total_size_mb} MB (${total_size_kb} KB)" | tee -a result.md

if [ "$failed" -ne 0 ]; then
  echo ":bangbang: Failed demo cases:" | tee -a result.md
  echo -e "$failed_cases" | tee -a result.md
  exit 1
else
  echo ":white_check_mark: All demo tests passed" | tee -a result.md
fi
