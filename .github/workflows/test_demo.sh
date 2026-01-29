#!/bin/bash
set -e

# llgo run subdirectories under _demo that contain *.go files
mode="demo"
for arg in "$@"; do
  case "$arg" in
    -dce)
      mode="deadcode"
      ;;
    *)
      echo "unknown argument: $arg" >&2
      exit 2
      ;;
  esac
done

jobs="${LLGO_DEMO_JOBS:-1}"
if [ "${jobs}" -gt 1 ]; then
  if [ "${BASH_VERSINFO[0]}" -lt 5 ] || { [ "${BASH_VERSINFO[0]}" -eq 5 ] && [ "${BASH_VERSINFO[1]}" -lt 1 ]; }; then
    echo "warning: LLGO_DEMO_JOBS=${jobs} requested but bash ${BASH_VERSION} lacks 'wait -n -p'; running sequentially" >&2
    jobs=1
  fi
fi
tmp_root="$(mktemp -d)"
trap 'rm -rf "$tmp_root"' EXIT

file_size() {
  if stat --version >/dev/null 2>&1; then
    stat -c%s "$1"
  else
    stat -f%z "$1"
  fi
}

run_deadcode_case() {
  local dir="$1"
  local name
  local normal_bin
  local dce_bin
  local size_normal
  local size_dce
  local delta
  local kb

  name="$(basename "$dir")"
  normal_bin="$tmp_root/${name}-normal"
  dce_bin="$tmp_root/${name}-dce"

  echo "Testing $dir (normal)"
  if (cd "$dir" && llgo build -o "$normal_bin" . && "$normal_bin"); then
    echo "PASS"
  else
    echo "FAIL"
    return 1
  fi

  echo "Testing $dir (-dce)"
  if (cd "$dir" && llgo build -dce -o "$dce_bin" . && "$dce_bin"); then
    echo "PASS"
  else
    echo "FAIL"
    return 1
  fi

  size_normal="$(file_size "$normal_bin")"
  size_dce="$(file_size "$dce_bin")"
  delta=$((size_normal - size_dce))
  kb=$((delta / 1024))
  if [ "$delta" -ge 0 ]; then
    echo "DCE savings: ${delta}B(${kb}KB)"
  else
    echo "DCE savings: ${delta}B(${kb}KB) (dce larger)"
  fi
}

if [ "$mode" = "deadcode" ]; then
  cases=()
  for d in ./cl/deadcode/_testdata/*; do
    if [ -d "$d" ] && [ -n "$(ls "$d"/*.go 2>/dev/null)" ]; then
      cases+=("$d")
    fi
  done
  # Extra demo cases for DCE comparison.
  extra_dce_cases=(
    "./_demo/c/asmcall"
    "./_demo/c/asmfullcall"
    "./_demo/c/cabi"
    "./_demo/c/cabisret"
    "./_demo/c/cargs"
    "./_demo/c/catomic"
    "./_demo/c/cexec"
    "./_demo/c/cgofull"
    "./_demo/c/concat"
    "./_demo/c/cppintf"
    "./_demo/c/cppmintf"
    "./_demo/c/cppstr"
    "./_demo/c/crand"
    "./_demo/c/ctime"
    "./_demo/c/fcntl"
    "./_demo/c/genints"
    "./_demo/c/getcwd"
    "./_demo/c/hello"
    "./_demo/c/helloc"
    "./_demo/c/linkname"
    "./_demo/c/llama2-c"
    "./_demo/c/netdbdemo"
    "./_demo/c/qsort"
    "./_demo/c/setjmp"
    "./_demo/c/stacksave"
    "./_demo/c/syncdebug"
    "./_demo/c/thread"
    "./_demo/go/abimethod"
    "./_demo/go/async"
    "./_demo/go/cabi"
    "./_demo/go/checkfile"
    "./_demo/go/commandrun"
    "./_demo/go/complex"
    "./_demo/go/defer"
    "./_demo/go/export"
    "./_demo/go/failed"
    "./_demo/go/gobuild"
    "./_demo/go/gobuild-1389"
    "./_demo/go/goimporter-1389"
    "./_demo/go/goroutine"
    "./_demo/go/gotime"
    "./_demo/go/gotoken"
    "./_demo/go/gotypes"
    "./_demo/go/ifaceconv"
    "./_demo/go/ifaceprom-1559"
    "./_demo/go/issue1538"
    "./_demo/go/issue1538-floatcvtuint-over"
    "./_demo/go/logdemo"
    "./_demo/go/mapclosure"
    "./_demo/go/maphash"
    "./_demo/go/math"
    "./_demo/go/mimeheader"
    "./_demo/go/mkdirdemo"
    "./_demo/go/netip"
    "./_demo/go/osfile"
    "./_demo/go/oslookpath"
    "./_demo/go/oswritestring"
    "./_demo/go/randcrypt"
    "./_demo/go/randdemo"
    "./_demo/go/readdir"
    "./_demo/go/reflectfunc"
    "./_demo/go/reflectindirect"
    "./_demo/go/reflectmake"
    "./_demo/go/reflectname-1412"
    "./_demo/go/statefn"
    "./_demo/go/sync"
    "./_demo/go/sysexec"
    "./_demo/go/texttemplate"
    "./_demo/go/timedur"
    "./_demo/go/timer"
  )
  for d in "${extra_dce_cases[@]}"; do
    if [ -d "$d" ] && [ -n "$(ls "$d"/*.go 2>/dev/null)" ]; then
      cases+=("$d")
    fi
  done
  total="${#cases[@]}"
  failed=0
  failed_cases=""

  for d in "${cases[@]}"; do
    if ! run_deadcode_case "$d"; then
      failed=$((failed+1))
      failed_cases="$failed_cases\n* :x: $d"
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
  exit 0
fi

cases=()
for d in ./_demo/go/* ./_demo/py/* ./_demo/c/*; do
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
  if (cd "$dir" && llgo run .); then
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
