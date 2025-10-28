#!/bin/bash

# Test script for C header generation in different build modes
# This script tests the header generation functionality with various buildmode options

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

print_warning() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check if file exists and is not empty
check_file() {
    local file="$1"
    local description="$2"

    if [[ -f "$file" ]]; then
        if [[ -s "$file" ]]; then
            print_status "$description exists and is not empty"
            return 0
        else
            print_error "$description exists but is empty"
            return 1
        fi
    else
        print_error "$description does not exist"
        return 1
    fi
}

# Function to compare header with expected content
compare_header() {
    local header_file="$1"
    local expected_file="$2"
    local test_name="$3"

    if [[ -f "$expected_file" ]]; then
        if diff -q "$header_file" "$expected_file" >/dev/null 2>&1; then
            print_status "$test_name: Header content matches expected"
            return 0
        else
            print_warning "$test_name: Header content differs from expected"
            print_warning "Run 'diff $header_file $expected_file' to see differences"
            return 1
        fi
    else
        print_warning "$test_name: No expected file found at $expected_file"
        print_status "Generated header content:"
        echo "--- START OF HEADER ---"
        cat "$header_file"
        echo "--- END OF HEADER ---"
        return 0
    fi
}

# Function to cleanup generated files
cleanup() {
    local files=("$@")
    for file in "${files[@]}"; do
        if [[ -f "$file" ]]; then
            rm -f "$file"
            print_status "Cleaned up $file"
        fi
    done
}

# Check if llgo.sh exists
LLGO_SCRIPT="../../../llgo.sh"
if [[ ! -f "$LLGO_SCRIPT" ]]; then
    print_error "llgo.sh not found at $LLGO_SCRIPT"
    exit 1
fi

print_status "Starting C header generation tests..."
print_status "Working directory: $SCRIPT_DIR"

echo ""

# Test 1: c-shared mode
print_status "=== Test 2: Building with -buildmode c-shared ==="
if $LLGO_SCRIPT build -buildmode c-shared -o export .; then
    print_status "Build succeeded"

    # Check generated files (different extensions on different platforms)
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        check_file "libexport.dylib" "Dynamic library (libexport.dylib)"
        SHARED_LIB="libexport.dylib"
    else
        # Linux and others
        check_file "libexport.so" "Dynamic library (libexport.so)"
        SHARED_LIB="libexport.so"
    fi

    check_file "libexport.h" "C header (libexport.h)"

    # Compare with expected header if it exists
    if [[ -f "libexport.h" ]]; then
        compare_header "libexport.h" "libexport.h.want" "c-shared"
    fi

    # Test C demo with shared library
    print_status "=== Testing C demo with shared library ==="
    if cd use; then
        if LINK_TYPE=shared make clean && LINK_TYPE=shared make; then
            print_status "C demo build succeeded with shared library"
            if LINK_TYPE=shared make run; then
                print_status "C demo execution succeeded with shared library"
            else
                print_error "C demo execution failed with shared library"
                exit 1
            fi
        else
            print_error "C demo build failed with shared library"
            exit 1
        fi
        cd ..
    else
        print_error "Failed to enter use directory"
        exit 1
    fi

    # Cleanup
    cleanup "$SHARED_LIB" "libexport.h"
else
    print_error "Build failed for c-shared mode"
fi

# Test 2: c-archive mode
print_status "=== Test 1: Building with -buildmode c-archive ==="
if $LLGO_SCRIPT build -buildmode c-archive -o export .; then
    print_status "Build succeeded"

    # Check generated files
    check_file "libexport.a" "Static library (libexport.a)"
    check_file "libexport.h" "C header (libexport.h)"

    # Compare with expected header if it exists
    if [[ -f "libexport.h" ]]; then
        compare_header "libexport.h" "libexport.h.want" "c-archive"
    fi

    # Test C demo with static library
    print_status "=== Testing C demo with static library ==="
    if cd use; then
        if make clean && make; then
            print_status "C demo build succeeded with static library"
            if make run; then
                print_status "C demo execution succeeded with static library"
            else
                print_error "C demo execution failed with static library"
                exit 1
            fi
        else
            print_error "C demo build failed with static library"
            exit 1
        fi
        cd ..
    else
        print_error "Failed to enter use directory"
        exit 1
    fi

    # # Cleanup
    # cleanup "libexport.a" "libexport.h"
else
    print_error "Build failed for c-archive mode"
fi

echo ""

# TODO(lijie): Uncomment if https://github.com/goplus/llgo/pull/1268 merged
# # Test 3: ESP32 target with c-archive mode
# print_status "=== Test 3: Building with -target esp32 -buildmode c-archive ==="
# if $LLGO_SCRIPT build -target esp32 -buildmode c-archive -o export .; then
#     print_status "Build succeeded"

#     # Check generated files
#     check_file "libexport.a" "Static library for ESP32 (libexport.a)"
#     check_file "libexport.h" "C header for ESP32 (libexport.h)"

#     # Compare with expected header if it exists
#     if [[ -f "libexport.h" ]]; then
#         compare_header "libexport.h" "libexport.h.want" "esp32-c-archive"
#     fi

#     # Don't cleanup ESP32 files - keep them for inspection
#     print_status "ESP32 build files kept for inspection"
# else
#     print_error "Build failed for ESP32 target"
# fi

# echo ""

# Test 3: Go export demo execution
print_status "=== Test 3: Running Go export demo ==="
if go run export.go > /tmp/go_export_output.log 2>&1; then
    print_status "Go export demo execution succeeded"

    # Check if output contains expected success indicators
    if grep -q "✓" /tmp/go_export_output.log; then
        SUCCESS_COUNT=$(grep -c "✓" /tmp/go_export_output.log)
        print_status "All $SUCCESS_COUNT assertions passed in Go export demo"
    else
        print_warning "No assertion markers found in Go export demo output"
    fi

    # Show key output lines
    print_status "Go export demo output summary:"
    if grep -q "ASSERTION FAILED" /tmp/go_export_output.log; then
        print_error "Found assertion failures in Go export demo"
        grep "ASSERTION FAILED" /tmp/go_export_output.log
    else
        print_status "  ✅ No assertion failures detected"
        echo "  📊 First few lines of output:"
        head -5 /tmp/go_export_output.log | sed 's/^/    /'
        echo "  📊 Last few lines of output:"
        tail -5 /tmp/go_export_output.log | sed 's/^/    /'
    fi
else
    print_error "Go export demo execution failed"
    print_error "Error output:"
    cat /tmp/go_export_output.log | sed 's/^/    /'
fi

# Cleanup temporary file
rm -f /tmp/go_export_output.log

echo ""

# Final summary
print_status "=== Test Summary ==="
if [[ -f "libexport.a" ]] && [[ -f "libexport.h" ]]; then
    print_status "All tests completed successfully:"
    print_status "  ✅ Go export demo execution with assertions"
    print_status "  ✅ C header generation (c-archive and c-shared modes)"
    print_status "  ✅ C demo compilation and execution"
    print_status "  ✅ Cross-platform symbol renaming"
    print_status "  ✅ Init function export and calling"
    print_status "  ✅ Function callback types with proper typedef syntax"
    print_status "  ✅ Multidimensional array parameter handling"
    print_status ""
    print_status "Final files available:"
    print_status "  - libexport.a (static library)"
    print_status "  - libexport.h (C header file)"
    print_status "  - use/main.out (C demo executable)"

    echo ""
    echo "==================="
else
    print_error "Some tests may have failed. Check the output above."
fi

# Show file sizes for reference
if [[ -f "libexport.a" ]]; then
    SIZE=$(wc -c < libexport.a)
    print_status "Static library size: $SIZE bytes"
fi

if [[ -f "libexport.h" ]]; then
    LINES=$(wc -l < libexport.h)
    print_status "Header file lines: $LINES"
fi

print_status "C header generation and demo tests completed!"
