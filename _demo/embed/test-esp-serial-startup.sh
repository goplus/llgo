#!/bin/bash
# ESP serial targets startup smoke + ESP32-C3 startup regression checks.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMP_DIR="$SCRIPT_DIR/.test_tmp_$$"
TEST_GO="$TEMP_DIR/main.go"

ESP32C3_PREFIX="esp32c3_regression"
ESP32_PREFIX="esp32_smoke"
ESP32C3_ELF="${ESP32C3_PREFIX}.elf"
ESP32C3_BIN="${ESP32C3_PREFIX}.bin"

cleanup() {
    rm -rf "$TEMP_DIR"
}
trap cleanup EXIT

require_cmd() {
    local cmd="$1"
    local hint="$2"
    if ! command -v "$cmd" >/dev/null 2>&1; then
        echo "✗ FAIL: $cmd not found"
        echo "$hint"
        exit 1
    fi
}

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
        echo "✗ FAIL: $label emulator run failed (exit code: $run_rc)"
        exit 1
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

require_cmd esptool.py "Please install: pip3 install esptool==5.1.0"
require_cmd llvm-objdump "Please ensure llvm-objdump is available in PATH"
require_cmd llvm-readelf "Please ensure llvm-readelf is available in PATH"
require_cmd llvm-nm "Please ensure llvm-nm is available in PATH"

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
echo "=== Common Smoke Tests: Build + Emulator Run (ESP serial targets) ==="

build_target "esp32c3" "$ESP32C3_PREFIX" "ESP32-C3"
run_emulator_smoke "esp32c3-basic" "ESP32-C3" "Hello World"

build_target "esp32" "$ESP32_PREFIX" "ESP32"
run_emulator_smoke "esp32" "ESP32" "Hello World"

echo ""
echo "=== ESP32-C3 Specific Regression Tests ==="

echo ""
echo "=== Regression 1: Verify newlib startup (calls __libc_init_array) ==="
if llvm-objdump -d "$ESP32C3_ELF" | grep -A50 "<_start>:" | grep "__libc_init_array" >/dev/null; then
    echo "✓ PASS: _start calls __libc_init_array"
    echo "        ESP32-C3 uses newlib's standard startup"
else
    echo "✗ FAIL: _start does NOT call __libc_init_array"
    echo "        ESP32-C3 should use newlib startup flow"
    echo ""
    echo "Current _start disassembly:"
    llvm-objdump -d "$ESP32C3_ELF" | grep -A50 "<_start>:" || true
    exit 1
fi

echo ""
echo "=== Regression 2: Verify .init_array merged into .rodata (ELF) ==="
RODATA_INFO=$(llvm-readelf -S "$ESP32C3_ELF" | grep "\.rodata")
if [ -z "$RODATA_INFO" ]; then
    echo "✗ FAIL: .rodata section not found"
    exit 1
fi

RODATA_ADDR=$(echo "$RODATA_INFO" | awk '{print "0x"$5}')
RODATA_SIZE=$(echo "$RODATA_INFO" | awk '{print "0x"$7}')
RODATA_END=$(printf "0x%x" $((RODATA_ADDR + RODATA_SIZE)))

echo ".rodata section: start=$RODATA_ADDR, size=$RODATA_SIZE, end=$RODATA_END"

INIT_ARRAY_START=$(llvm-nm "$ESP32C3_ELF" | awk '/__init_array_start/ {print "0x"$1; exit}')
if [ -z "$INIT_ARRAY_START" ]; then
    echo "✗ FAIL: __init_array_start symbol not found"
    exit 1
fi

echo "__init_array_start: $INIT_ARRAY_START"

INIT_ADDR_DEC=$((INIT_ARRAY_START))
RODATA_ADDR_DEC=$((RODATA_ADDR))
RODATA_END_DEC=$((RODATA_END))

if [ $INIT_ADDR_DEC -ge $RODATA_ADDR_DEC ] && [ $INIT_ADDR_DEC -lt $RODATA_END_DEC ]; then
    OFFSET=$((INIT_ADDR_DEC - RODATA_ADDR_DEC))
    echo "✓ PASS: __init_array_start is within .rodata (offset: +0x$(printf '%x' $OFFSET))"
else
    echo "✗ FAIL: __init_array_start is NOT within .rodata"
    echo "        .rodata: [$RODATA_ADDR, $RODATA_END)"
    echo "        __init_array_start: $INIT_ARRAY_START"
    exit 1
fi

echo ""
echo "=== Regression 3: Verify .rodata included in BIN file ==="
if ! BIN_INFO=$(esptool.py --chip esp32c3 image_info "$ESP32C3_BIN" 2>&1); then
    echo "✗ FAIL: esptool.py failed to parse BIN file"
    echo "$BIN_INFO"
    exit 1
fi

RODATA_ADDR_CLEAN=$(echo "$RODATA_ADDR" | sed 's/^0x0*//')
RODATA_SEG=$(echo "$BIN_INFO" | grep -i "$RODATA_ADDR_CLEAN" || true)

if [ -z "$RODATA_SEG" ]; then
    echo "✗ FAIL: .rodata segment not found in BIN file"
    echo "Looking for address: $RODATA_ADDR"
    echo ""
    echo "BIN segments:"
    echo "$BIN_INFO" | grep -A20 "Segments Information"
    exit 1
fi

SEG_NUM=$(echo "$RODATA_SEG" | awk '{print $1}')
SEG_LEN=$(echo "$RODATA_SEG" | awk '{print $2}')
SEG_LOAD=$(echo "$RODATA_SEG" | awk '{print $3}')

SEG_LEN_DEC=$((SEG_LEN))
SEG_LOAD_DEC=$((SEG_LOAD))
SEG_END=$((SEG_LOAD_DEC + SEG_LEN_DEC))

echo "BIN Segment $SEG_NUM: start=$SEG_LOAD, length=$SEG_LEN, end=$(printf '0x%x' $SEG_END)"

if [ $INIT_ADDR_DEC -ge $SEG_LOAD_DEC ] && [ $INIT_ADDR_DEC -lt $SEG_END ]; then
    OFFSET=$((INIT_ADDR_DEC - SEG_LOAD_DEC))
    echo "✓ PASS: __init_array_start is within BIN Segment $SEG_NUM (offset: +0x$(printf '%x' $OFFSET))"
else
    echo "✗ FAIL: __init_array_start is NOT within BIN segment"
    echo "        Segment range: [$SEG_LOAD, $(printf '0x%x' $SEG_END))"
    echo "        __init_array_start: $INIT_ARRAY_START"
    exit 1
fi

echo ""
echo "=== All Tests Passed ==="
echo "✓ Common smoke passed for ESP32-C3 and ESP32 (build + emulator run)"
echo "✓ ESP32-C3 uses newlib startup (_start calls __libc_init_array)"
echo "✓ .init_array merged into .rodata section"
echo "✓ .rodata (including .init_array) included in BIN file"
echo "✓ Constructor function pointers are correctly flashed for ESP32-C3"
