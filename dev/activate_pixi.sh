#!/usr/bin/env bash

export GOFLAGS=-tags=byollvm
export GOTOOLCHAIN=local
export CGO_ENABLED=1
export LLGO_CLANG_PREFIX="$CONDA_PREFIX"
export LLGO_PKG_CONFIG_PREFIX="$CONDA_PREFIX"
export PKG_CONFIG="\"$PIXI_PROJECT_ROOT/conda-tools/pkg-config\""
case "$(uname -s)" in
  Linux)
    export CC="\"$PIXI_PROJECT_ROOT/conda-tools/clang\""
    export CXX="\"$PIXI_PROJECT_ROOT/conda-tools/clang++\""
    export PATH="$PIXI_PROJECT_ROOT/conda-tools:$PATH"
    ;;
  Darwin)
    export CC=clang
    export CXX=clang++
    ;;
esac
LLVM_CONFIG="$(command -v llvm-config)"
export LLVM_CONFIG
CGO_CPPFLAGS="$(bash "$PIXI_PROJECT_ROOT/devenv_unix_flags.sh" cppflags)" || return 1
export CGO_CPPFLAGS
export CGO_CXXFLAGS=-std=c++17
CGO_LDFLAGS="$(bash "$PIXI_PROJECT_ROOT/devenv_unix_flags.sh" ldflags)" || return 1
LLGO_ROOT="$(cd "$PIXI_PROJECT_ROOT/.." && pwd)"
export LLGO_ROOT

export CGO_LDFLAGS
