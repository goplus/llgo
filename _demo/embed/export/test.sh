#!/bin/bash

# Test script for //export with different symbol names
# This is essential for embedded development where hardware specifications require
# specific symbol names (e.g., ARM Cortex-M interrupt handlers).

set -e  # Exit on any error

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if llgo command is available
if ! command -v llgo &> /dev/null; then
    print_error "llgo command not found, please install llgo first"
    exit 1
fi

# Check if LLGO_ROOT is set
if [[ -z "$LLGO_ROOT" ]]; then
    print_error "LLGO_ROOT environment variable is not set"
    exit 1
fi

print_status "Starting export symbol name test..."
print_status "Working directory: $SCRIPT_DIR"
print_status "LLGO_ROOT: $LLGO_ROOT"

echo ""

# Build the test program
print_status "=== Building test program ==="
if llgo build -o test_export main.go; then
    print_status "Build succeeded"
else
    print_error "Build failed"
    exit 1
fi

# Check for expected symbols using nm
print_status "=== Checking exported symbols with nm ==="
if ! command -v nm &> /dev/null; then
    print_error "nm command not found, skipping symbol verification"
    exit 1
fi

NM_OUTPUT=$(nm test_export)

# Verify LPSPI2_IRQHandler symbol exists (not interruptLPSPI2)
if echo "$NM_OUTPUT" | grep -q "LPSPI2_IRQHandler"; then
    print_status "✓ Symbol LPSPI2_IRQHandler found"
else
    print_error "✗ Symbol LPSPI2_IRQHandler not found"
    echo "Available symbols:"
    echo "$NM_OUTPUT"
    exit 1
fi

# Verify SysTick_Handler symbol exists (not systemTickHandler)
if echo "$NM_OUTPUT" | grep -q "SysTick_Handler"; then
    print_status "✓ Symbol SysTick_Handler found"
else
    print_error "✗ Symbol SysTick_Handler not found"
    echo "Available symbols:"
    echo "$NM_OUTPUT"
    exit 1
fi

# Verify Add symbol exists (same name)
if echo "$NM_OUTPUT" | grep -q "Add"; then
    print_status "✓ Symbol Add found"
else
    print_error "✗ Symbol Add not found"
    echo "Available symbols:"
    echo "$NM_OUTPUT"
    exit 1
fi

# Verify that the original function names are NOT exported as main symbols
# (they should only appear as internal symbols, not as exported text symbols 'T')
EXPORTED_SYMBOLS=$(echo "$NM_OUTPUT" | grep " T " || true)

if echo "$EXPORTED_SYMBOLS" | grep -q "interruptLPSPI2"; then
    print_error "✗ Unexpected exported symbol: interruptLPSPI2 (should be LPSPI2_IRQHandler)"
    exit 1
else
    print_status "✓ interruptLPSPI2 not exported as main symbol"
fi

if echo "$EXPORTED_SYMBOLS" | grep -q "systemTickHandler"; then
    print_error "✗ Unexpected exported symbol: systemTickHandler (should be SysTick_Handler)"
    exit 1
else
    print_status "✓ systemTickHandler not exported as main symbol"
fi

echo ""
print_status "=== All symbol name tests passed! ==="

# Cleanup
rm -f test_export

print_status "Export symbol name test completed successfully!"
