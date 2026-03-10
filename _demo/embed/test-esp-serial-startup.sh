#!/bin/bash
# ESP serial targets smoke test (build + emulator run only).
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMP_DIR="$SCRIPT_DIR/.test_tmp_$$"
TEST_GO="$TEMP_DIR/main.go"

ESP32C3_PREFIX="esp32c3_smoke"
ESP32_PREFIX="esp32_smoke"

cleanup() {
    rm -rf "$TEMP_DIR"
}
trap cleanup EXIT

build_target() {
    local target="$1"
    local prefix="$2"
    local label="$3"

    echo "==> Building for $label target ($target): ELF + BIN..."
    llgo build -target="$target" -o "$prefix" -obin "$TEST_GO"

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
    local expected="$3"

    echo ""
    echo "=== Smoke: $label emulator output ==="

    local run_out_file
    run_out_file=$(mktemp "${TEMP_DIR}/run_${target}.XXXX.log")

    set +e
    llgo run -a -target="$target" -emulator . 2>&1 | tee "$run_out_file"
    local run_rc=${PIPESTATUS[0]}
    set -e

    local run_out
    run_out=$(cat "$run_out_file")
    rm -f "$run_out_file"

    if [ "$run_rc" -ne 0 ]; then
        echo "[WARN] $label emulator exited with code $run_rc; validating output tail instead"
    fi

    local last_line
    last_line=$(printf "%s\n" "$run_out" | tr -d '\r' | awk 'NF{line=$0} END{print line}')

    if [ "$last_line" = "$expected" ]; then
        echo "✓ PASS: $label output ends with $expected"
    else
        echo "✗ FAIL: $label output mismatch"
        echo "Last line: $last_line"
        echo ""
        echo "Full output:"
        echo "$run_out"
        exit 1
    fi
}

extract_last_nonempty_lines() {
    local n="$1"
    awk -v n="$n" '
    NF { out[++count] = $0 }
    END {
        if (n <= 0 || count == 0) {
            exit
        }
        start = count - n + 1
        if (start < 1) {
            start = 1
        }
        for (i = start; i <= count; i++) {
            print out[i]
        }
    }'
}

run_case_and_compare() {
    local target="$1"
    local case_dir="$2"
    local expected="$3"
    local raw_output
    local actual
    local expected_lines

    echo "Running: llgo run -a -target=${target} -emulator ${case_dir}"
    if ! raw_output=$(llgo run -a -target="${target}" -emulator "${case_dir}" 2>&1); then
        echo "✗ FAIL: command failed for ${case_dir}"
        echo "$raw_output"
        return 1
    fi

    expected_lines=$(printf "%s\n" "$expected" | awk 'NF { n++ } END { print n + 0 }')
    actual=$(printf "%s\n" "$raw_output" | tr -d '\r' | extract_last_nonempty_lines "$expected_lines")
    if [ "$actual" = "$expected" ]; then
        echo "✓ PASS: $case_dir"
        return 0
    fi

    echo "✗ FAIL: output mismatch for $case_dir"
    echo "Expected:"
    printf "%s\n" "$expected"
    echo ""
    echo "Got:"
    printf "%s\n" "$actual"
    echo ""
    echo "Diff:"
    diff -u <(printf "%s\n" "$expected") <(printf "%s\n" "$actual") || true
    return 1
}

mkdir -p "$TEMP_DIR"

echo "==> Creating minimal test program..."
cat > "$TEST_GO" << 'EOGO'
package main

import "github.com/goplus/lib/c"

func main() {
	c.Printf(c.Str("Hello World\n"))
}
EOGO

cd "$TEMP_DIR"

echo ""
echo "=== ESP Serial Smoke Tests: Build + Emulator Run ==="

build_target "esp32c3" "$ESP32C3_PREFIX" "ESP32-C3"
run_emulator_smoke "esp32c3-basic" "ESP32-C3" "Hello World"

build_target "esp32" "$ESP32_PREFIX" "ESP32"
run_emulator_smoke "esp32" "ESP32" "Hello World"

echo ""
echo "=== Regression: ESP32 float output (temporary) ==="
pushd "$SCRIPT_DIR" > /dev/null
run_case_and_compare "esp32" "./esp32/float-1685" $'+5.000000e+00 +8.000000e+00\n1 +2.000000e+00\n0x0 +0.000000e+00 notOk: true\n0x0 +0.000000e+00 true\n3 +6.280000e+00'
popd > /dev/null

echo ""
echo "=== Smoke Tests Passed ==="
echo "✓ ESP32-C3 build + emulator run passed"
echo "✓ ESP32 build + emulator run passed"
echo "✓ ESP32 float output regression cases match expected output"
