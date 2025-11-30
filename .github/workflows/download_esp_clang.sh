#!/bin/bash
set -e

ESP_CLANG_VERSION="19.1.2_20250905-3"
BASE_URL="https://github.com/goplus/espressif-llvm-project-prebuilt/releases/download/${ESP_CLANG_VERSION}"

get_esp_clang_platform() {
    local platform="$1"
    local os="${platform%-*}"
    local arch="${platform##*-}"
    
    case "${os}" in
        "darwin")
            case "${arch}" in
                "amd64") echo "x86_64-apple-darwin" ;;
                "arm64") echo "aarch64-apple-darwin" ;;
                *) echo "Error: Unsupported darwin architecture: ${arch}" >&2; exit 1 ;;
            esac
            ;;
        "linux")
            case "${arch}" in
                "amd64") echo "x86_64-linux-gnu" ;;
                "arm64") echo "aarch64-linux-gnu" ;;
                *) echo "Error: Unsupported linux architecture: ${arch}" >&2; exit 1 ;;
            esac
            ;;
        *)
            echo "Error: Unsupported OS: ${os}" >&2
            exit 1
            ;;
    esac
}

get_filename() {
    local platform="$1"
    local platform_suffix=$(get_esp_clang_platform "${platform}")
    echo "clang-esp-${ESP_CLANG_VERSION}-${platform_suffix}.tar.xz"
}

download_and_extract() {
    local platform="$1"
    local install_path="$2"
    local os="${platform%-*}"
    local arch="${platform##*-}"
    local filename=$(get_filename "${platform}")
    local download_url="${BASE_URL}/${filename}"
    
    echo "Downloading ESP Clang for ${platform}..."
    echo "  URL: ${download_url}"
    echo "  Install path: ${install_path}"
    
    mkdir -p "${install_path}"
    curl -fsSL "${download_url}" | tar -xJ -C "${install_path}" --strip-components=1
    
    if [[ ! -f "${install_path}/bin/clang++" ]]; then
        echo "Error: clang++ not found in ${platform} toolchain at ${install_path}"
        exit 1
    fi
    
    echo "${platform} ESP Clang ready in ${install_path}"
}

echo "Downloading ESP Clang toolchain version ${ESP_CLANG_VERSION}..."

# Check if platform is specified as argument
if [[ $# -eq 1 ]]; then
    # Single platform specified - install to crosscompile/clang
    PLATFORM="$1"
    
    # Validate platform
    case "${PLATFORM}" in
        "darwin-amd64"|"darwin-arm64"|"linux-amd64"|"linux-arm64")
            echo "Installing ESP Clang for platform: ${PLATFORM}"
            download_and_extract "${PLATFORM}" "crosscompile/clang"
            ;;
        *)
            echo "Error: Unsupported platform: ${PLATFORM}" >&2
            echo "Supported platforms: darwin-amd64, darwin-arm64, linux-amd64, linux-arm64" >&2
            exit 1
            ;;
    esac
elif [[ $# -eq 0 ]]; then
    # No platform specified - install all platforms to .sysroot
    echo "Installing ESP Clang for all platforms"
    for platform in "darwin-amd64" "darwin-arm64" "linux-amd64" "linux-arm64"; do
        local os="${platform%-*}"
        local arch="${platform##*-}"
        download_and_extract "${platform}" ".sysroot/${os}/${arch}/crosscompile/clang"
    done
else
    echo "Usage: $0 [platform]" >&2
    echo "  platform: darwin-amd64, darwin-arm64, linux-amd64, linux-arm64" >&2
    echo "  If no platform specified, all platforms will be downloaded" >&2
    exit 1
fi

echo "ESP Clang toolchain completed successfully!"
