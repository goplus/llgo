#!/bin/bash

# Build the CABI transformation pass

set -e

# Create build directory
mkdir -p build
cd build

# Configure with CMake
cmake ..

# Build the pass
make -j$(nproc 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo 4)

echo "Build completed. Pass library: build/libInPlaceCABITransformPass.so"