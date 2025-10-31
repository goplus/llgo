#!/bin/bash
set -e

echo "Testing //export with different symbol names..."

# Set LLGO_ROOT to repository root
export LLGO_ROOT=/workspace

# Build the test program
echo "Building test program..."
/workspace/llgo build -o test_export main.go || exit 1

# Check for expected symbols using nm
echo "Verifying symbols with nm..."

# Should find LPSPI2_IRQHandler (not interruptLPSPI2)
if nm test_export | grep -q "T LPSPI2_IRQHandler"; then
    echo "✓ Symbol LPSPI2_IRQHandler found"
else
    echo "✗ Symbol LPSPI2_IRQHandler not found"
    echo "Available symbols:"
    nm test_export | grep " T "
    exit 1
fi

# Should find SysTick_Handler (not systemTickHandler)
if nm test_export | grep -q "T SysTick_Handler"; then
    echo "✓ Symbol SysTick_Handler found"
else
    echo "✗ Symbol SysTick_Handler not found"
    exit 1
fi

# Should find Add (same name)
if nm test_export | grep -q "T Add"; then
    echo "✓ Symbol Add found"
else
    echo "✗ Symbol Add not found"
    exit 1
fi

echo ""
echo "All symbol checks passed! ✓"
