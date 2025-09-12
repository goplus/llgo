#!/bin/bash

set -e

# Change to script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# Function to check if running locally with proper module
check_local_install() {
    if [ -f "go.mod" ]; then
        FIRST_LINE=$(head -n 1 go.mod)
        if [ "$FIRST_LINE" = "module github.com/goplus/llgo" ]; then
            return 0
        fi
    fi
    return 1
}

# Function to get latest release version
get_latest_version() {
    curl --silent "https://api.github.com/repos/goplus/llgo/releases/latest" |
    grep '"tag_name":' |
    sed -E 's/.*"([^"]+)".*/\1/'
}

# Function to get system information
get_system_info() {
    ARCH=$(uname -m)
    OS=$(uname -s | tr '[:upper:]' '[:lower:]')

    case $ARCH in
        x86_64) ARCH="amd64" ;;
        aarch64) ARCH="arm64" ;;
    esac

    echo "${OS}-${ARCH}"
}

# Function to install from local source (basic)
install_local() {
    echo "Installing llgo from local source..."
    go install ./cmd/llgo
    echo "Local installation complete."
    echo "llgo is now available in your GOPATH."
    if [ -n "$GITHUB_ENV" ]; then
        echo "LLGO_ROOT=$GITHUB_WORKSPACE" >> $GITHUB_ENV
    fi
}

# Function to install from local source with ESP Clang
install_local_with_esp() {
    echo "Installing llgo from local source with ESP Clang toolchain..."
    go install ./cmd/llgo
    
    # Download ESP Clang toolchain for current platform
    echo "Downloading ESP Clang toolchain for current platform..."
    SYSTEM=$(get_system_info)
    if [ -x ".github/workflows/download_esp_clang.sh" ]; then
        ./.github/workflows/download_esp_clang.sh "$SYSTEM"
        echo "ESP Clang toolchain installed to crosscompile/clang/"
    else
        echo "Error: ESP Clang download script not found at .github/workflows/download_esp_clang.sh"
        exit 1
    fi
    
    echo "Local installation with ESP Clang complete."
    echo "llgo is now available in your GOPATH."
    echo "ESP Clang toolchain is available in crosscompile/clang/"
    if [ -n "$GITHUB_ENV" ]; then
        echo "LLGO_ROOT=$GITHUB_WORKSPACE" >> $GITHUB_ENV
    fi
}

# Function to install from remote release
install_remote() {
    VERSION=$(get_latest_version)
    VERSION_NO_V=${VERSION#v}  # Remove the 'v' prefix
    SYSTEM=$(get_system_info)
    INSTALL_DIR="$HOME/.llgo"
    DOWNLOAD_URL="https://github.com/goplus/llgo/releases/download/${VERSION}/llgo${VERSION_NO_V}.${SYSTEM}"

    echo "Installing llgo ${VERSION} for ${SYSTEM}..."

    # Create installation directory
    mkdir -p "$INSTALL_DIR"

    # Download and extract
    curl -L "$DOWNLOAD_URL.tar.gz" | tar xz -C "$INSTALL_DIR"

    # Handle old package structures
    if [ -f "$INSTALL_DIR/llgo" ]; then
        mkdir -p "$INSTALL_DIR/bin"
        mv "$INSTALL_DIR/llgo" "$INSTALL_DIR/bin/"
    fi

    echo "Installation complete!"
    echo
    echo "Please add the following line to your shell configuration file (.bashrc, .zshrc, etc.):"
    echo "export PATH=\$PATH:$INSTALL_DIR/bin"
    echo
    echo "Then restart your shell or run:"
    echo "source ~/.bashrc  # or source ~/.zshrc"
}

# Main installation logic
if check_local_install; then
    if [[ "$1" == "--with-esp" ]]; then
        install_local_with_esp
    else
        install_local
    fi
else
    install_remote
fi
