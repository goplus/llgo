#!/bin/bash
# Install the pinned LLGo Wasmer fork used by local and CI WASI tests.
set -euo pipefail

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
source "${SCRIPT_DIR}/llgo_cache_dir.sh"
WASMER_BIN_DIR="$(llgo_cache_dir)/bin"
WASMER_REPOSITORY=xgo-dev/wasmer
WASMER_VERSION=llgo-v7.5.0.2
WASMER_NAME=wasmer

case "$(uname -s)-$(uname -m)" in
    Darwin-arm64)
        asset=wasmer-darwin-arm64.tar.gz
        digest=9d49b44647a9c56f352fe40755088ef1275ee1c9f77c8ab72547d3795cdc9a8f ;;
    Linux-x86_64)
        asset=wasmer-linux-amd64.tar.gz
        digest=7878597d48f7e2435b8da1f43e11499fc3073dc0191a6c74c00c27f33849f179 ;;
    Linux-aarch64|Linux-arm64)
        asset=wasmer-linux-aarch64.tar.gz
        digest=9b8032161920d4453b8a91208f500578fa8ae4640cf7f8b5f5203d8335b2e565 ;;
    Linux-riscv64)
        asset=wasmer-linux-riscv64.tar.gz
        digest=0590f470bf07ee3ff85e72df79a7bc5478ea901b46228c87cacb8769c9405e95 ;;
    MINGW*-x86_64|MSYS*-x86_64|CYGWIN*-x86_64)
        # This standalone host executable also runs LLGo's MinGW-built guests.
        asset=wasmer-windows-amd64.tar.gz
        digest=c5c6ae9ee4cc44760308472343eb300dd1c1a4c9f763e00facfbfae362f92e97
        WASMER_NAME=wasmer.exe ;;
    *)
        echo "Wasmer ${WASMER_VERSION} has no supported prebuilt CLI for $(uname -s)-$(uname -m); install it from source and put wasmer on PATH." >&2
        exit 1 ;;
esac

build_id="${WASMER_REPOSITORY}-${WASMER_VERSION}-${digest}"
id_file="${WASMER_BIN_DIR}/${WASMER_NAME}.llgo-build-id"
if [ -x "${WASMER_BIN_DIR}/${WASMER_NAME}" ] && [ -f "${id_file}" ] && \
    [ "$(cat "${id_file}")" = "${build_id}" ]; then
    echo "Using cached Wasmer at ${WASMER_BIN_DIR}/${WASMER_NAME}"
else
    staging=$(mktemp -d)
    trap 'rm -rf "${staging}"' EXIT
    curl --fail --location --retry 3 \
        "https://github.com/${WASMER_REPOSITORY}/releases/download/${WASMER_VERSION}/${asset}" \
        --output "${staging}/${asset}"
    if command -v sha256sum >/dev/null 2>&1; then
        actual=$(sha256sum "${staging}/${asset}")
    else
        actual=$(shasum -a 256 "${staging}/${asset}")
    fi
    if [ "${actual%% *}" != "${digest}" ]; then
        echo "Wasmer archive checksum mismatch: ${asset}" >&2
        exit 1
    fi
    tar -xzf "${staging}/${asset}" -C "${staging}" "bin/${WASMER_NAME}"
    chmod +x "${staging}/bin/${WASMER_NAME}"
    "${staging}/bin/${WASMER_NAME}" --version
    mkdir -p "${WASMER_BIN_DIR}"
    cp "${staging}/bin/${WASMER_NAME}" "${WASMER_BIN_DIR}/${WASMER_NAME}"
    printf '%s\n' "${build_id}" > "${id_file}"
fi

if [ -n "${GITHUB_PATH:-}" ]; then
    printf '%s\n' "${WASMER_BIN_DIR}" >> "${GITHUB_PATH}"
fi
echo "Wasmer ${WASMER_REPOSITORY}@${WASMER_VERSION}"
echo "Add ${WASMER_BIN_DIR} to PATH to run WASI programs with Wasmer."
