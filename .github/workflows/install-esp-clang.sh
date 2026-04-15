#!/bin/bash
set -euo pipefail

INSTALL_DIR="${1:-crosscompile/clang}"
ESP_CLANG_VERSION="19.1.2_20250905-3"
BASE_URL="https://github.com/goplus/espressif-llvm-project-prebuilt/releases/download/${ESP_CLANG_VERSION}"

OS=$(uname -s | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)

case "$ARCH" in
  x86_64|amd64)
    ARCH="x86_64"
    ;;
  aarch64|arm64)
    ARCH="aarch64"
    ;;
  *)
    echo "Unsupported architecture: $ARCH"
    exit 1
    ;;
esac

case "$OS" in
  darwin)
    PLATFORM="${ARCH}-apple-darwin"
    ;;
  linux)
    PLATFORM="${ARCH}-linux-gnu"
    ;;
  *)
    echo "Unsupported OS: $OS"
    exit 1
    ;;
esac

FILENAME="clang-esp-${ESP_CLANG_VERSION}-${PLATFORM}.tar.xz"
URL="${BASE_URL}/${FILENAME}"

echo "Detected platform: ${PLATFORM}"
echo "Installing ESP Clang to: ${INSTALL_DIR}"
echo "Downloading: ${URL}"

rm -rf "${INSTALL_DIR}"
mkdir -p "${INSTALL_DIR}"
curl -fsSL "${URL}" | tar -xJ -C "${INSTALL_DIR}" --strip-components=1

if [ ! -x "${INSTALL_DIR}/bin/clang++" ]; then
  echo "Error: clang++ not found after extraction"
  exit 1
fi

echo "ESP Clang installed successfully to: ${INSTALL_DIR}"
