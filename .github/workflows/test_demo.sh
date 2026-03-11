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

# Temporary baseline check: run gogen error_msg with Go first,
# so CI can quickly tell whether failures are from Go itself or llgo.
echo "Baseline (go run) ./_demo/gogen/error_msg"
(cd "./_demo/gogen/error_msg" && go run .)

cases=()
for d in ./_demo/go/* ./_demo/py/* ./_demo/c/* ./_demo/gogen/*; do
  if [ -d "$d" ] && [ -n "$(ls "$d"/*.go 2>/dev/null)" ]; then
    cases+=("$d")
  fi
done

total="${#cases[@]}"
failed=0
failed_cases=""

run_case() {
  local dir="$1"
  echo "Testing $dir"
  if (cd "$dir" && GOWORK=off llgo run .); then
    echo "PASS"
  else
    echo "FAIL"
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

if [ "$failed" -ne 0 ]; then
  echo ":bangbang: Failed demo cases:" | tee -a result.md
  echo -e "$failed_cases" | tee -a result.md
  exit 1
else
  echo ":white_check_mark: All demo tests passed" | tee -a result.md
fi
