#!/bin/bash
set -e

# Installation directory (from argument or default)
INSTALL_DIR="${1:-.cache/qemu}"

# Detect platform
OS=$(uname -s | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)

# Map architecture names
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

# Map OS names
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

# Download URL
VERSION="esp_develop_9.2.2_20250817"
FILENAME="qemu-riscv32-softmmu-${VERSION}-${PLATFORM}.tar.xz"
URL="https://github.com/espressif/qemu/releases/download/esp-develop-9.2.2-20250817/${FILENAME}"

echo "Detected platform: $PLATFORM"
echo "Installing to: ${INSTALL_DIR}"
echo "Downloading ESP32 RISC-V QEMU from: $URL"

# Download and extract
mkdir -p "$INSTALL_DIR"
curl -fsSL "$URL" | tar -xJ -C "$INSTALL_DIR" --strip-components=1

# Verify installation
if [ ! -f "${INSTALL_DIR}/bin/qemu-system-riscv32" ]; then
  echo "Error: qemu-system-riscv32 not found after extraction"
  exit 1
fi

echo "ESP32 RISC-V QEMU installed successfully to: ${INSTALL_DIR}"
