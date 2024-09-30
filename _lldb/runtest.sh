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

# Set up the result file path
result_file="/tmp/lldb_exit_code"

# Run LLDB with the test script
"$LLDB_PATH" -o "command script import _lldb/test.py" -o "script test.run_tests_with_result('${package_path}/debug.out', ['${package_path}/in.go'], $verbose, $interactive, $plugin_path, '$result_file')" -o "quit"

# Read the exit code from the result file
if [ -f "$result_file" ]; then
    exit_code=$(cat "$result_file")
    rm "$result_file"
    exit "$exit_code"
else
    echo "Error: Could not find exit code file"
    exit 1
fi
