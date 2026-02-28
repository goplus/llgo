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
echo "=== Smoke Tests Passed ==="
echo "✓ ESP32-C3 build + emulator run passed"
echo "✓ ESP32 build + emulator run passed"
