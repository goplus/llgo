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
    local os="${platform%-*}"
    local arch="${platform##*-}"
    local filename=$(get_filename "${platform}")
    local download_url="${BASE_URL}/${filename}"
    
    echo "Downloading ESP Clang for ${platform}..."
    echo "  URL: ${download_url}"
    
    mkdir -p ".sysroot/${os}/${arch}/crosscompile/clang"
    curl -fsSL "${download_url}" | tar -xJ -C ".sysroot/${os}/${arch}/crosscompile/clang" --strip-components=1
    
    if [[ ! -f ".sysroot/${os}/${arch}/crosscompile/clang/bin/clang++" ]]; then
        echo "Error: clang++ not found in ${platform} toolchain"
        exit 1
    fi
    
    echo "${platform} ESP Clang ready in .sysroot/${os}/${arch}/crosscompile/clang"
}

echo "Downloading ESP Clang toolchain version ${ESP_CLANG_VERSION}..."

for platform in "darwin-amd64" "darwin-arm64" "linux-amd64" "linux-arm64"; do
    download_and_extract "${platform}"
done

echo "ESP Clang toolchain completed successfully!"
