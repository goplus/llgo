#!/bin/bash
# Script to build iwasm with correct options for llgo WASM testing
# This ensures local testing uses the same iwasm configuration as CI

set -e

# Determine cache directory based on platform
if [ "$(uname -s)" = "Darwin" ]; then
    LLGO_CACHE_DIR="${HOME}/Library/Caches/llgo"
else
    LLGO_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/llgo"
fi

IWASM_BIN_DIR="${LLGO_CACHE_DIR}/bin"
WAMR_VERSION="WAMR-2.4.4"

echo "Building iwasm for llgo WASM testing..."
echo "Target directory: ${IWASM_BIN_DIR}"

# Create bin directory if it doesn't exist
mkdir -p "${IWASM_BIN_DIR}"

# Create temp directory for building
TEMP_DIR=$(mktemp -d)
cd "${TEMP_DIR}"

echo "Cloning wasm-micro-runtime ${WAMR_VERSION}..."
git clone --branch ${WAMR_VERSION} --depth 1 https://github.com/bytecodealliance/wasm-micro-runtime.git

# Determine platform
if [[ "$(uname -s)" == "Darwin" ]]; then
    PLATFORM="darwin"
elif [[ "$(uname -s)" == "Linux" ]]; then
    PLATFORM="linux"
else
    echo "Unsupported platform: $(uname -s)"
    exit 1
fi

echo "Building for platform: ${PLATFORM}"

mkdir -p wasm-micro-runtime/product-mini/platforms/${PLATFORM}/build
cd wasm-micro-runtime/product-mini/platforms/${PLATFORM}/build

# Configure with same options as CI
cmake \
    -D WAMR_BUILD_EXCE_HANDLING=1 \
    -D WAMR_BUILD_FAST_INTERP=0 \
    -D WAMR_BUILD_SHARED_MEMORY=1 \
    -D WAMR_BUILD_LIB_WASI_THREADS=1 \
    -D WAMR_BUILD_LIB_PTHREAD=1 \
    -D CMAKE_BUILD_TYPE=Debug \
    -D WAMR_BUILD_DEBUG_INTERP=1 \
    ..

echo "Compiling iwasm..."
make -j$(nproc 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo 4)

# Copy iwasm to cache directory
echo "Installing iwasm to ${IWASM_BIN_DIR}..."
cp iwasm "${IWASM_BIN_DIR}/"

# Cleanup
cd /
rm -rf "${TEMP_DIR}"

echo ""
echo "✓ iwasm successfully built and installed to ${IWASM_BIN_DIR}/iwasm"
echo ""
echo "To use this iwasm, add to your PATH:"
echo "  export PATH=\"${IWASM_BIN_DIR}:\$PATH\""
echo ""
echo "Or run directly:"
echo "  ${IWASM_BIN_DIR}/iwasm --version"
