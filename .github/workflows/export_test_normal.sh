#!/bin/bash

# Test script for //export on normal (non-baremetal) targets
# This ensures that //export with different symbol names does NOT work on normal targets

set -e  # Exit on any error

# Use current working directory (workflow already cd's to the test directory)
WORK_DIR="$(pwd)"

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

print_status "Starting export symbol name test for normal targets..."
print_status "Working directory: $WORK_DIR"
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

# For normal targets, //export SymbolName should export the FUNCTION NAME, not the symbol name
# So we expect LPSPI2_IRQHandler, SysTick_Handler, Add (the function names)

# Verify LPSPI2_IRQHandler symbol exists (function name)
if echo "$NM_OUTPUT" | grep -q "LPSPI2_IRQHandler"; then
    print_status "✓ Symbol LPSPI2_IRQHandler found (function name)"
else
    print_error "✗ Symbol LPSPI2_IRQHandler not found"
    echo "Available symbols:"
    echo "$NM_OUTPUT"
    exit 1
fi

# Verify SysTick_Handler symbol exists (function name)
if echo "$NM_OUTPUT" | grep -q "SysTick_Handler"; then
    print_status "✓ Symbol SysTick_Handler found (function name)"
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

echo ""
print_status "=== All symbol name tests passed for normal targets! ==="

# Cleanup
rm -f test_export

print_status "Export symbol name test for normal targets completed successfully!"
