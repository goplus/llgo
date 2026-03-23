#!/bin/bash
#
# verify_builtin_debugtrap.sh - Compile __builtin_debugtrap() for every target.
#
# Usage:
#   ./verify_builtin_debugtrap.sh
#   ./verify_builtin_debugtrap.sh esp32 cortex-m4 atmega328p
#
# Notes:
# - With no arguments, this script walks every targets/*.json file in the repo.
# - Optional target arguments only exist for local debugging; the default mode
#   is intentionally "run all targets".
# - Targets without an effective llvm-target after resolving inherits are still
#   listed, but marked as SKIP. These files are overlay/base targets such as
#   softdevice or shared board configuration layers, not standalone codegen
#   targets that clang can compile by themselves.
# - xtensa and riscv32-esp targets are compiled with the ESP clang cached by
#   llgo when available.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/../../.." && pwd)"

SYS_CLANG="${CLANG:-clang}"
ESP_CLANG_DEFAULT="${HOME}/Library/Caches/llgo/crosscompile/esp-clang-19.1.2_20250905-3/bin/clang"
ESP_CLANG="${ESP_CLANG:-${ESP_CLANG_DEFAULT}}"

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

SRC_FILE="${TMP_DIR}/debugtrap.c"
TARGETS_TSV="${TMP_DIR}/targets.tsv"

cat > "${SRC_FILE}" <<'EOF'
void f(void) { __builtin_debugtrap(); }
EOF

classify_asm() {
    local text="$1"
    if grep -Eq '(^|[[:space:]])bkpt([[:space:]]|$)' <<<"${text}"; then
        echo "bkpt"
    elif grep -Eq '(^|[[:space:]])ebreak([[:space:]]|$)' <<<"${text}"; then
        echo "ebreak"
    elif grep -Eq '(^|[[:space:]])break([[:space:]]|$)' <<<"${text}"; then
        echo "break"
    elif grep -Eq '(^|[[:space:]])brk([[:space:]]|$)' <<<"${text}"; then
        echo "brk"
    elif grep -Eq '(^|[[:space:]])int3([[:space:]]|$)' <<<"${text}"; then
        echo "int3"
    elif grep -Eq '(^|[[:space:]])udf([[:space:]]|$)' <<<"${text}"; then
        echo "udf"
    elif grep -Eq '(^|[[:space:]])abort([[:space:]]|$)' <<<"${text}"; then
        echo "abort"
    elif grep -Eq '(^|[[:space:]])unreachable([[:space:]]|$)' <<<"${text}"; then
        echo "unreachable"
    else
        echo "other"
    fi
}

run_and_capture() {
    local __outvar="$1"
    shift

    printf '+ ' >&2
    printf '%q ' "$@" >&2
    printf '\n' >&2

    local __out
    if ! __out="$("$@" 2>&1)"; then
        printf -v "${__outvar}" '%s' "${__out}"
        return 1
    fi
    printf -v "${__outvar}" '%s' "${__out}"
}

python3 - "$REPO_ROOT" "$@" > "${TARGETS_TSV}" <<'PY'
import glob
import json
import os
import sys
from functools import lru_cache

repo_root = sys.argv[1]
selected = set(sys.argv[2:])
targets_dir = os.path.join(repo_root, "targets")
files = {
    os.path.basename(path)[:-5]: path
    for path in glob.glob(os.path.join(targets_dir, "*.json"))
}

@lru_cache(None)
def load(name: str):
    with open(files[name], "r", encoding="utf-8") as f:
        data = json.load(f)
    out = {}
    for parent in data.get("inherits", []):
        out.update(load(parent))
    out.update(data)
    return out

names = sorted(files)
if selected:
    missing = sorted(selected - set(names))
    if missing:
        print("Unknown targets: " + ", ".join(missing), file=sys.stderr)
        sys.exit(1)
    names = [name for name in names if name in selected]

for name in names:
    cfg = load(name)
    llvm_target = cfg.get("llvm-target", "")
    cpu = cfg.get("cpu", "")
    features = cfg.get("features", "")
    print("\t".join([name, llvm_target, cpu, features]))
PY

cd "${REPO_ROOT}"

printf "%-28s %-28s %-16s %-10s %-12s %-10s %s\n" \
    "TARGET" "LLVM-TARGET" "CPU" "COMPILER" "IR" "ASM" "STATUS"
printf "%s\n" "--------------------------------------------------------------------------------------------------------------"

pass_count=0
skip_count=0
fail_count=0

while IFS=$'\t' read -r name llvm_target cpu features; do
    if [[ -z "${name}" ]]; then
        continue
    fi

    # Keep overlay/base targets in the report so the output covers every file in
    # targets/*.json, but make the reason explicit instead of treating them as a
    # compilation failure.
    if [[ -z "${llvm_target}" ]]; then
        printf "%-28s %-28s %-16s %-10s %-12s %-10s %s\n" \
            "${name}" "-" "-" "-" "-" "-" "SKIP overlay/no-llvm-target"
        skip_count=$((skip_count + 1))
        continue
    fi

    compiler="${SYS_CLANG}"
    if [[ "${llvm_target}" == xtensa* || "${llvm_target}" == riscv32-esp-* ]]; then
        compiler="${ESP_CLANG}"
    fi

    if ! command -v "${compiler}" >/dev/null 2>&1 && [[ ! -x "${compiler}" ]]; then
        printf "%-28s %-28s %-16s %-10s %-12s %-10s %s\n" \
            "${name}" "${llvm_target}" "${cpu:-"-"}" "$(basename "${compiler}")" "-" "-" "FAIL compiler-not-found"
        fail_count=$((fail_count + 1))
        continue
    fi

    asm_flags=(--target="${llvm_target}" -S -O0 "${SRC_FILE}" -o -)
    ir_flags=(--target="${llvm_target}" -S -emit-llvm -O0 "${SRC_FILE}" -o -)

    if [[ -n "${cpu}" ]]; then
        if [[ "${llvm_target}" == avr* ]]; then
            asm_flags=(-mmcu="${cpu}" "${asm_flags[@]}")
            ir_flags=(-mmcu="${cpu}" "${ir_flags[@]}")
        else
            asm_flags=(-mcpu="${cpu}" "${asm_flags[@]}")
            ir_flags=(-mcpu="${cpu}" "${ir_flags[@]}")
        fi
    fi

    case "${llvm_target}" in
        avr*)
            asm_flags=(-mdouble=64 "${asm_flags[@]}")
            ir_flags=(-mdouble=64 "${ir_flags[@]}")
            ;;
        riscv32-esp-elf)
            asm_flags=(-march=rv32imc -fforce-enable-int128 "${asm_flags[@]}")
            ir_flags=(-march=rv32imc -fforce-enable-int128 "${ir_flags[@]}")
            ;;
        riscv32-*)
            asm_flags=(-march=rv32imac -fforce-enable-int128 "${asm_flags[@]}")
            ir_flags=(-march=rv32imac -fforce-enable-int128 "${ir_flags[@]}")
            ;;
        riscv64-*)
            asm_flags=(-march=rv64gc "${asm_flags[@]}")
            ir_flags=(-march=rv64gc "${ir_flags[@]}")
            ;;
    esac

    run_and_capture asm_out "${compiler}" "${asm_flags[@]}" || {
        printf "%-28s %-28s %-16s %-10s %-12s %-10s %s\n" \
            "${name}" "${llvm_target}" "${cpu:-"-"}" "$(basename "${compiler}")" "-" "-" "FAIL asm-compile"
        fail_count=$((fail_count + 1))
        continue
    }

    run_and_capture ir_out "${compiler}" "${ir_flags[@]}" || {
        printf "%-28s %-28s %-16s %-10s %-12s %-10s %s\n" \
            "${name}" "${llvm_target}" "${cpu:-"-"}" "$(basename "${compiler}")" "-" "-" "FAIL ir-compile"
        fail_count=$((fail_count + 1))
        continue
    }

    ir_status="no-debugtrap"
    if grep -q 'llvm\.debugtrap' <<<"${ir_out}"; then
        ir_status="debugtrap"
    fi

    asm_status="$(classify_asm "${asm_out}")"

    printf "%-28s %-28s %-16s %-10s %-12s %-10s %s\n" \
        "${name}" "${llvm_target}" "${cpu:-"-"}" "$(basename "${compiler}")" "${ir_status}" "${asm_status}" "PASS"
    pass_count=$((pass_count + 1))
done < "${TARGETS_TSV}"

printf "%s\n" ""
printf "PASS=%d SKIP=%d FAIL=%d\n" "${pass_count}" "${skip_count}" "${fail_count}"

if [[ "${fail_count}" -ne 0 ]]; then
    exit 1
fi
