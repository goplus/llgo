#!/bin/bash

DIR="$PWD"

LLGOROOT="$(dirname "$(readlink -f "$0")")"
GOROOT="$(go env GOROOT)"
WRAPPED_GOROOT="$LLGOROOT/.golang"
mkdir -p "$WRAPPED_GOROOT"
rm -rf "${WRAPPED_GOROOT:?}"/*

# Create symlinks for all directories and files in GOROOT, except for the pkg directory
for item in "$GOROOT"/*; do
    if [ "$(basename "$item")" != "pkg" ] && [ "$(basename "$item")" != "src" ]; then
        ln -s "$item" "$WRAPPED_GOROOT/$(basename "$item")"
    fi
done

# Special handling for the pkg/tool/darwin_arm64 directory
mkdir -p "$WRAPPED_GOROOT/pkg/tool/darwin_arm64"
for item in "$GOROOT"/pkg/*; do
    if [ "$(basename "$item")" != "tool" ]; then
        ln -s "$item" "$WRAPPED_GOROOT/pkg/$(basename "$item")"
    fi
done

# Create symlinks for files in pkg/tool/darwin_arm64, excluding cgo, compile and link
for item in "$GOROOT"/pkg/tool/darwin_arm64/*; do
    filename=$(basename "$item")
    if [ "$filename" != "cgo" ] && [ "$filename" != "compile" ] && [ "$filename" != "link" ]; then
        ln -s "$item" "$WRAPPED_GOROOT/pkg/tool/darwin_arm64/$filename"
    fi
done

mkdir -p "$WRAPPED_GOROOT/src"
rm -rf "$WRAPPED_GOROOT/src"/*
go run ./chore/cpskip "$GOROOT"/src "$LLGOROOT"/internal/lib "$WRAPPED_GOROOT"/src

mkdir -p "$WRAPPED_GOROOT/src/vendor/github.com/goplus"
ln -s "$LLGOROOT" "$WRAPPED_GOROOT/src/vendor/github.com/goplus/llgo"

set -x
set -e

cd "$LLGOROOT" || exit
go build -o "$WRAPPED_GOROOT/pkg/tool/darwin_arm64/cgo" ./cmd/llcgo
go build -o "$WRAPPED_GOROOT/pkg/tool/darwin_arm64/compile" ./cmd/llgoc
go build -o "$WRAPPED_GOROOT/pkg/tool/darwin_arm64/link" ./cmd/llgolink

cd "$DIR" || exit
export GOROOT="$WRAPPED_GOROOT"

"$WRAPPED_GOROOT/bin/go" env

echo "go build $* ..."

"$WRAPPED_GOROOT/bin/go" build -x -v -work -p 1 "$@"
