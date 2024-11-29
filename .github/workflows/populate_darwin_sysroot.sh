#!/bin/bash

set -e

TMPDIR="$(mktemp -d)"
export TMPDIR
trap 'rm -rf "${TMPDIR}"' EXIT

DARWIN_AMD64_LLVM_PREFIX=.sysroot/darwin/amd64/usr/local/opt/llvm@18
DARWIN_ARM64_LLVM_PREFIX=.sysroot/darwin/arm64/opt/homebrew/opt/llvm@18
mkdir -p "${DARWIN_AMD64_LLVM_PREFIX}" "${DARWIN_ARM64_LLVM_PREFIX}"

BREW_LLVM_FORMULA_JSON="$(mktemp)"
curl -fsSL https://formulae.brew.sh/api/formula/llvm@18.json > "${BREW_LLVM_FORMULA_JSON}"
BREW_LLVM_AMD64_BOTTLE_URL=$(jq -r '.bottle.stable.files.sonoma.url' "${BREW_LLVM_FORMULA_JSON}")
BREW_LLVM_ARM64_BOTTLE_URL=$(jq -r '.bottle.stable.files.arm64_sonoma.url' "${BREW_LLVM_FORMULA_JSON}")
curl -fsSL -H "Authorization: Bearer QQ==" "${BREW_LLVM_AMD64_BOTTLE_URL}" | tar -xzf - --strip-components=2 -C "${DARWIN_AMD64_LLVM_PREFIX}"
curl -fsSL -H "Authorization: Bearer QQ==" "${BREW_LLVM_ARM64_BOTTLE_URL}" | tar -xzf - --strip-components=2 -C "${DARWIN_ARM64_LLVM_PREFIX}"

patch_homebrew_lib_dir() {
	local LIB_DIR="$1"
	local HOMEBREW_PREFIX="$2"
	for DYLIB_FILE in "${LIB_DIR}"/*.dylib; do
		if [[ -f "${DYLIB_FILE}" ]]; then
			ID=$(otool -D "${DYLIB_FILE}" | grep '@@HOMEBREW_PREFIX@@' | awk '{print $1}')
			if [[ -n "${ID}" ]]; then
				NEW_ID=${ID/'@@HOMEBREW_PREFIX@@'/${HOMEBREW_PREFIX}}
				install_name_tool -id "${NEW_ID}" "${DYLIB_FILE}"
			fi

			DEPS=$(otool -L "${DYLIB_FILE}" | grep '@@HOMEBREW_PREFIX@@' | awk '{print $1}')
			for DEP in ${DEPS}; do
				NEW_DEP=${DEP/'@@HOMEBREW_PREFIX@@'/${HOMEBREW_PREFIX}}
				install_name_tool -change "${DEP}" "${NEW_DEP}" "${DYLIB_FILE}"
			done
		fi
	done
}
patch_homebrew_lib_dir "${DARWIN_AMD64_LLVM_PREFIX}/lib" /usr/lib
patch_homebrew_lib_dir "${DARWIN_ARM64_LLVM_PREFIX}/lib" /opt/homebrew
