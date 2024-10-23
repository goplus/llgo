#!/bin/bash

DIR="$PWD"

LLGO_PATH="$(dirname "$(readlink -f "$0")")"
GOROOT="$(go env GOROOT)"
TEST_GO_PATH="$LLGO_PATH/.golang"
mkdir -p "$TEST_GO_PATH"
rm -rf "${TEST_GO_PATH:?}"/*

# Create symlinks for all directories and files in GOROOT, except for the pkg directory
for item in "$GOROOT"/*; do
    if [ "$(basename "$item")" != "pkg" ]; then
        ln -s "$item" "$TEST_GO_PATH/$(basename "$item")"
    fi
done

# Special handling for the pkg/tool/darwin_arm64 directory
mkdir -p "$TEST_GO_PATH/pkg/tool/darwin_arm64"
for item in "$GOROOT"/pkg/*; do
    if [ "$(basename "$item")" != "tool" ]; then
        ln -s "$item" "$TEST_GO_PATH/pkg/$(basename "$item")"
    fi
done

# Create symlinks for files in pkg/tool/darwin_arm64, excluding cgo, compile and link
for item in "$GOROOT"/pkg/tool/darwin_arm64/*; do
    filename=$(basename "$item")
    if [ "$filename" != "cgo" ] && [ "$filename" != "compile" ] && [ "$filename" != "link" ]; then
        ln -s "$item" "$TEST_GO_PATH/pkg/tool/darwin_arm64/$filename"
    fi
done

set -x
set -e

cd "$LLGO_PATH" || exit
go build -o "$TEST_GO_PATH/pkg/tool/darwin_arm64/cgo" ./cmd/llcgo
go build -o "$TEST_GO_PATH/pkg/tool/darwin_arm64/compile" ./cmd/llgoc
go build -o "$TEST_GO_PATH/pkg/tool/darwin_arm64/link" ./cmd/llgolink

cd "$DIR" || exit
export GOROOT="$TEST_GO_PATH"

"$TEST_GO_PATH/bin/go" env

echo "go build $* ..."

"$TEST_GO_PATH/bin/go" build -x -v -work -p 1 "$@"