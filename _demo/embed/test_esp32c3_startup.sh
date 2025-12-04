#!/bin/bash

# ESP32-C3 Startup Regression Test
# Verify that _start uses newlib's __libc_init_array (not TinyGo's start.S)

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMP_DIR=$(mktemp -d)
TEST_GO="$TEMP_DIR/main.go"
TEST_ELF="$TEMP_DIR/test.elf"

cleanup() {
    rm -rf "$TEMP_DIR"
}
trap cleanup EXIT

echo "==> Creating minimal test program..."
cat > "$TEST_GO" << 'EOF'
package main

func main() {}
EOF

echo "==> Building for ESP32-C3 target..."
cd "$TEMP_DIR"
llgo build -target=esp32c3 -o "$TEST_ELF" "$TEST_GO"

if [ ! -f "$TEST_ELF" ]; then
    echo "✗ FAIL: Build failed, $TEST_ELF not found"
    exit 1
fi

echo "==> Checking for __libc_init_array call in _start..."

# Disassemble _start and check for __libc_init_array call
if llvm-objdump -d "$TEST_ELF" | grep -A50 "<_start>:" | grep "__libc_init_array" > /dev/null; then
    echo "✓ PASS: _start calls __libc_init_array"
    echo "        This confirms ESP32-C3 uses newlib's standard startup"
    echo "        (crt0-riscv32-unknown-none, not TinyGo's start.S)"
    exit 0
else
    echo "✗ FAIL: _start does NOT call __libc_init_array"
    echo "        ESP32-C3 should use newlib's startup flow"
    echo "        Check targets/esp32c3.json inheritance chain"
    echo ""
    echo "Expected: esp32c3 → riscv32-llgo → riscv-llgo → riscv-basic"
    echo "Current _start disassembly:"
    llvm-objdump -d "$TEST_ELF" | grep -A50 "<_start>:" || true
    exit 1
fi
