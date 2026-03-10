#!/bin/bash
# ESP serial targets smoke test (build + emulator run only).
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMP_DIR="$SCRIPT_DIR/.test_tmp_$$"

ESP32C3_PREFIX="esp32c3_smoke"
ESP32_PREFIX="esp32_smoke"
CASE_ROOT="$SCRIPT_DIR/esp32"

cleanup() {
    rm -rf "$TEMP_DIR"
}
trap cleanup EXIT

build_target() {
    local target="$1"
    local prefix="$2"
    local label="$3"
    local test_go="$4"

    echo "==> Building for $label target ($target): ELF + BIN..."
    llgo build -target="$target" -o "$prefix" -obin "$test_go"

    if [ ! -f "${prefix}.elf" ]; then
        echo "✗ FAIL: Build failed, ${prefix}.elf not found"
        exit 1
    fi

    if [ ! -f "${prefix}.bin" ]; then
        echo "✗ FAIL: Build failed, ${prefix}.bin not found"
        exit 1
    fi

    echo "✓ PASS: $label build artifacts generated"
}

run_emulator_smoke() {
    local target="$1"
    local label="$2"
    local case_dir="$3"
    local expected_file="$4"

    echo ""
    echo "=== Smoke: $label emulator output ==="

    local run_out_file
    run_out_file=$(mktemp "${TEMP_DIR}/run_${target}.XXXX.log")

    set +e
    llgo run -a -target="$target" -emulator "$case_dir" 2>&1 | tee "$run_out_file"
    local run_rc=${PIPESTATUS[0]}
    set -e

    local run_out
    run_out=$(cat "$run_out_file")
    rm -f "$run_out_file"

    if [ "$run_rc" -ne 0 ]; then
        echo "[WARN] $label emulator exited with code $run_rc; validating output tail instead"
    fi

    local normalized_out
    normalized_out=$(printf "%s\n" "$run_out" | tr -d '\r')

    local expected_tail
    expected_tail=$(cat "$expected_file")

    local normalized_expected
    normalized_expected=$(printf "%s" "$expected_tail" | tr -d '\r')

    local n
    n=$(printf "%s\n" "$normalized_expected" | awk 'END{print NR}')
    if [ -z "$n" ] || [ "$n" -le 0 ]; then
        echo "✗ FAIL: invalid expected tail for $label"
        exit 1
    fi

    local actual_tail
    actual_tail=$(printf "%s\n" "$normalized_out" | awk 'NF{print}' | tail -n "$n")

    if [ "$actual_tail" = "$normalized_expected" ]; then
        echo "✓ PASS: $label output tail (last $n line(s)) matched"
    else
        echo "✗ FAIL: $label output mismatch"
        echo "Expected tail (last $n line(s)):"
        printf "%s\n" "$normalized_expected"
        echo "Actual tail:"
        printf "%s\n" "$actual_tail"
        echo ""
        echo "Full output:"
        echo "$run_out"
        exit 1
    fi
}

run_case() {
    local case_dir="$1"
    local case_name
    case_name="$(basename "$case_dir")"

    local test_go="$case_dir/main.go"
    local expected_file="$case_dir/expect.txt"
    if [ ! -f "$test_go" ]; then
        echo "✗ FAIL: missing testcase source: $test_go"
        exit 1
    fi

    build_target "esp32c3" "$TEMP_DIR/${ESP32C3_PREFIX}_${case_name}" "ESP32-C3 [$case_name]" "$test_go"
    build_target "esp32" "$TEMP_DIR/${ESP32_PREFIX}_${case_name}" "ESP32 [$case_name]" "$test_go"

    if [ -f "$expected_file" ]; then
        run_emulator_smoke "esp32c3-basic" "ESP32-C3 [$case_name]" "$case_dir" "$expected_file"
        run_emulator_smoke "esp32" "ESP32 [$case_name]" "$case_dir" "$expected_file"
    else
        echo ""
        echo "=== Skip emulator assertions for [$case_name] (missing expect.txt) ==="
        echo "✓ PASS: Build-only smoke passed for ESP32-C3 and ESP32"
    fi
}

run_all_cases() {
    local found=0
    local case_dir
    exec 3< <(find "$CASE_ROOT" -mindepth 1 -maxdepth 1 -type d | sort)
    while IFS= read -r case_dir <&3; do
        if [ -f "$case_dir/main.go" ]; then
            found=1
            run_case "$case_dir"
        fi
    done
    exec 3<&-

    if [ "$found" -eq 0 ]; then
        echo "✗ FAIL: no testcase found under $CASE_ROOT (need main.go)"
        exit 1
    fi
}

mkdir -p "$TEMP_DIR"
if [ ! -d "$CASE_ROOT" ]; then
    echo "✗ FAIL: testcase root not found: $CASE_ROOT"
    exit 1
fi

cd "$SCRIPT_DIR"

echo ""
echo "=== ESP Serial Smoke Tests: Build + Emulator Run ==="
run_all_cases

echo ""
echo "=== Smoke Tests Passed ==="
echo "✓ ESP32-C3 and ESP32 build smoke passed for all esp32 demo cases (main.go)"
echo "✓ Emulator output assertions passed for cases with expect.txt"
