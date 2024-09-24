#!/bin/bash

set -e

# Source common functions and variables
# shellcheck source=./_lldb/common.sh
# shellcheck disable=SC1091
source "$(dirname "$0")/common.sh" || exit 1

# Parse command-line arguments
package_path="$DEFAULT_PACKAGE_PATH"
verbose=False
interactive=False
plugin_path=None

while [[ $# -gt 0 ]]; do
    case $1 in
        -v|--verbose)
            verbose=True
            shift
            ;;
        -i|--interactive)
            interactive=True
            shift
            ;;
        -p|--plugin)
            plugin_path="\"$2\""
            shift 2
            ;;
        *)
            package_path="$1"
            shift
            ;;
    esac
done

# Build the project
build_project "$package_path" || exit 1

# Prepare LLDB commands
lldb_commands=(
    "command script import _lldb/test.py"
    "script test.run_tests(\\\"${package_path}/out\\\", [\\\"${package_path}/in.go\\\"], ${verbose}, ${interactive}, ${plugin_path})"
)

# Add quit command if not in interactive mode
if [ "$interactive" = False ]; then
    lldb_commands+=("quit")
fi

# Run LLDB with prepared commands 
lldb_command_string=""
for cmd in "${lldb_commands[@]}"; do
    lldb_command_string+=" -O \"$cmd\""
done

eval "$LLDB_PATH $lldb_command_string" || exit 1
