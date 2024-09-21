#!/bin/bash

# Function to find LLDB 18+
find_lldb() {
    local lldb_paths=(
        "/opt/homebrew/bin/lldb"
        "/usr/local/bin/lldb"
        "/usr/bin/lldb"
        "lldb"  # This will use the system PATH
    )

    for lldb_path in "${lldb_paths[@]}"; do
        if command -v "$lldb_path" >/dev/null 2>&1; then
            local version=$("$lldb_path" --version | grep -oE '[0-9]+' | head -1)
            if [ "$version" -ge 18 ]; then
                echo "$lldb_path"
                return 0
            fi
        fi
    done

    echo "Error: LLDB 18 or higher not found" >&2
    exit 1
}

# Find LLDB 18+
LLDB_PATH=$(find_lldb)

# Default package path
DEFAULT_PACKAGE_PATH="./cl/_testdata/debug"

# Function to build the project
build_project() {
    local package_path="$1"
    go run ./cmd/llgo build -o "${package_path}/out" -dbg "${package_path}"
}