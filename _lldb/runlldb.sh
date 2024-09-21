#!/bin/bash

set -e

# Source common functions and variables
source "$(dirname "$0")/common.sh"

# Check if a package path is provided as an argument
package_path="$DEFAULT_PACKAGE_PATH"
if [ $# -eq 1 ]; then
    package_path="$1"
fi

# Build the project
build_project "$package_path"

# Run LLDB
"$LLDB_PATH" "${package_path}/out"
