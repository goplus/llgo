#!/bin/bash

set -e

# Source common functions and variables
# shellcheck source=./_lldb/common.sh
source "$(dirname "$0")/common.sh"

executable="$1"

# Run LLDB
"$LLDB_PATH" "$executable"
