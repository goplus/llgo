#!/bin/bash

# Test script for CABI transformation
# Fixed input: test_large.ll
# Fixed outputs: test_large_cabi.ll (intermediate) and test_large_abi (final)

set -e

# Fixed file names
INPUT_FILE="test_large.ll"
INTERMEDIATE_FILE="test_large_cabi.ll"
OUTPUT_FILE="test_large_abi.out"

# Check if input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file $INPUT_FILE not found"
    exit 1
fi

./build.sh

# Check if pass library exists
PASS_LIB="build/libInPlaceCABITransformPass.so"
if [ ! -f "$PASS_LIB" ]; then
    echo "Error: CABI pass library not found at $PASS_LIB"
    echo "Please run ./build.sh first"
    exit 1
fi

echo "🔧 Applying CABI transformation: $INPUT_FILE -> $INTERMEDIATE_FILE ..."

# Apply CABI transformation with optional threshold parameter
THRESHOLD_ARG=""
if [ -n "$LARGE_TYPE_THRESHOLD" ]; then
    THRESHOLD_ARG="--large-type-threshold=$LARGE_TYPE_THRESHOLD"
fi

if ! opt --load-pass-plugin="$PASS_LIB" --passes="inplace-cabi-transform" $THRESHOLD_ARG -S "$INPUT_FILE" -o "$INTERMEDIATE_FILE"; then
    echo "Error: CABI transformation failed"
    exit 1
fi

echo "✅ CABI transformation completed: $INTERMEDIATE_FILE"
echo "🔨 Compiling with clang: $INTERMEDIATE_FILE -> $OUTPUT_FILE ..."

# Compile with clang using transformed IR
if ! clang "$INTERMEDIATE_FILE" -o "$OUTPUT_FILE"; then
    echo "Error: Compilation failed"
    exit 1
fi

echo "✅ Compilation completed: $OUTPUT_FILE"
echo ""
echo "Files generated:"
echo "  - Intermediate IR: $INTERMEDIATE_FILE"
echo "  - Final executable: $OUTPUT_FILE"