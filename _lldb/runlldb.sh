#!/bin/bash

set -e

# Source common functions and variables
# shellcheck source=./_lldb/common.sh
source "$(dirname "$0")/common.sh"

executable="$1"

# Get the directory of the current script
script_dir="$(dirname "$0")"

# Run LLDB with the LLGO plugin
"$LLDB_PATH" -O "command script import ${script_dir}/llgo_plugin.py" "$executable"
