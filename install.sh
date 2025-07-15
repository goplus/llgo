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

# Function to install from local source
install_local() {
    echo "Installing llgo from local source..."
    
    export PATH="/Users/zhangzhiyang/Documents/Code/temp/tinygo/llvm-build/bin:$PATH"
    export CGO_CPPFLAGS="-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I/Users/zhangzhiyang/Documents/Code/temp/tinygo/llvm-project/llvm/include -I/Users/zhangzhiyang/Documents/Code/temp/tinygo/llvm-build/include -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS -I/Users/zhangzhiyang/Documents/Code/temp/tinygo/llvm-build/tools/clang/include -I/Users/zhangzhiyang/Documents/Code/temp/tinygo/llvm-project/clang/include -I/Users/zhangzhiyang/Documents/Code/temp/tinygo/llvm-project/lld/include"
    export CGO_LDFLAGS="-Wl,-rpath,/Users/zhangzhiyang/Documents/Code/temp/tinygo/llvm-build/lib -F/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks -L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/lib -lxar -L/Users/zhangzhiyang/Documents/Code/temp/tinygo/llvm-build/lib -lclang -lclangAnalysis -lclangAPINotes -lclangAST -lclangASTMatchers -lclangBasic -lclangCodeGen -lclangCrossTU -lclangDriver -lclangDynamicASTMatchers -lclangEdit -lclangExtractAPI -lclangFormat -lclangFrontend -lclangFrontendTool -lclangHandleCXX -lclangHandleLLVM -lclangIndex -lclangInstallAPI -lclangLex -lclangParse -lclangRewrite -lclangRewriteFrontend -lclangSema -lclangSerialization -lclangSupport -lclangTooling -lclangToolingASTDiff -lclangToolingCore -lclangToolingInclusions -lstdc++ -llldCOFF -llldCommon -llldELF -llldMachO -llldMinGW -llldWasm -L/Users/zhangzhiyang/Documents/Code/temp/tinygo/llvm-build/lib -Wl,-search_paths_first -Wl,-headerpad_max_install_names -lLLVMWindowsManifest -lLLVMWindowsDriver -lLLVMMCJIT -lLLVMLTO -lLLVMExtensions -lLLVMLibDriver -lLLVMOption -lLLVMInterpreter -lLLVMFrontendHLSL -lLLVMFrontendDriver -lLLVMExecutionEngine -lLLVMRuntimeDyld -lLLVMOrcTargetProcess -lLLVMOrcShared -lLLVMCoverage -lLLVMXtensaDisassembler -lLLVMXtensaAsmParser -lLLVMXtensaCodeGen -lLLVMXtensaDesc -lLLVMXtensaInfo -lLLVMWebAssemblyDisassembler -lLLVMWebAssemblyAsmParser -lLLVMWebAssemblyCodeGen -lLLVMWebAssemblyUtils -lLLVMWebAssemblyDesc -lLLVMWebAssemblyInfo -lLLVMRISCVTargetMCA -lLLVMRISCVDisassembler -lLLVMRISCVAsmParser -lLLVMRISCVCodeGen -lLLVMPasses -lLLVMHipStdPar -lLLVMCoroutines -lLLVMRISCVDesc -lLLVMRISCVInfo -lLLVMMipsDisassembler -lLLVMMipsAsmParser -lLLVMMipsCodeGen -lLLVMMipsDesc -lLLVMMipsInfo -lLLVMAVRDisassembler -lLLVMAVRAsmParser -lLLVMAVRCodeGen -lLLVMAVRDesc -lLLVMAVRInfo -lLLVMAArch64Disassembler -lLLVMAArch64AsmParser -lLLVMAArch64CodeGen -lLLVMAArch64Desc -lLLVMAArch64Utils -lLLVMAArch64Info -lLLVMARMDisassembler -lLLVMARMAsmParser -lLLVMARMCodeGen -lLLVMipo -lLLVMVectorize -lLLVMLinker -lLLVMFrontendOpenMP -lLLVMFrontendOffloading -lLLVMARMDesc -lLLVMARMUtils -lLLVMARMInfo -lLLVMX86TargetMCA -lLLVMMCA -lLLVMX86Disassembler -lLLVMX86AsmParser -lLLVMX86CodeGen -lLLVMX86Desc -lLLVMX86Info -lLLVMMCDisassembler -lLLVMInstrumentation -lLLVMIRPrinter -lLLVMGlobalISel -lLLVMSelectionDAG -lLLVMCFGuard -lLLVMAsmPrinter -lLLVMCodeGen -lLLVMTarget -lLLVMScalarOpts -lLLVMInstCombine -lLLVMAggressiveInstCombine -lLLVMObjCARCOpts -lLLVMTransformUtils -lLLVMCodeGenTypes -lLLVMBitWriter -lLLVMAnalysis -lLLVMProfileData -lLLVMSymbolize -lLLVMDebugInfoBTF -lLLVMDebugInfoPDB -lLLVMDebugInfoMSF -lLLVMDebugInfoDWARF -lLLVMObject -lLLVMTextAPI -lLLVMMCParser -lLLVMIRReader -lLLVMAsmParser -lLLVMMC -lLLVMDebugInfoCodeView -lLLVMBitReader -lLLVMCore -lLLVMRemarks -lLLVMBitstreamReader -lLLVMBinaryFormat -lLLVMTargetParser -lLLVMSupport -lLLVMDemangle -lm -lstdc++"

    go install -tags="byollvm" -ldflags="-X github.com/goplus/llgo/xtool/env/llvm.ldLLVMConfigBin=/Users/zhangzhiyang/Documents/Code/temp/tinygo/llvm-build/bin/llvm-config"  ./cmd/llgo
    echo "Local installation complete."
    echo "llgo is now available in your GOPATH."
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
    install_local
else
    install_remote
fi
