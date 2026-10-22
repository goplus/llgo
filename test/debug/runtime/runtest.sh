#!/bin/bash

set -e

script_dir=$(cd "$(dirname "$0")" && pwd)

# Source common functions and variables
# shellcheck source=./common.sh
# shellcheck disable=SC1091
source "$script_dir/common.sh" || exit 1

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

(
    cd "$package_path"
    llgo build "${LLDB_TEST_OPTLEVEL}" -ldflags=-w=false -o "debug-mixed.out" ./mixed
) || exit 1

# Set up private paths for test results and auxiliary fixtures.
test_tmp_dir=$(mktemp -d "${TMPDIR:-/tmp}/llgo-lldbtest.XXXXXX")
trap 'rm -rf "$test_tmp_dir"' EXIT
result_file="$test_tmp_dir/exit-code"
result_file_for_lldb="$result_file"
if command -v cygpath >/dev/null 2>&1; then
    result_file_for_lldb=$(cygpath -m "$result_file")
fi

cd "$package_path"

run_test_suite() {
    local executable=$1
    local sources=$2
    local enable_fault=${3:-}
    local lldb_commands=(
        "command script import ./test.py"
        "script test.run_tests_with_result('$executable', $sources, $verbose, $interactive, $plugin_path, '$result_file_for_lldb')"
        "quit"
    )
    local lldb_args=()
    local cmd
    for cmd in "${lldb_commands[@]}"; do
        lldb_args+=("-o" "$cmd")
    done

    rm -f "$result_file"
    if [ -n "$enable_fault" ]; then
        LLGO_LLDB_FAULT_TEST=1 llgo lldb -lldb "$LLDB_PATH" -- "${lldb_args[@]}"
    else
        llgo lldb -lldb "$LLDB_PATH" -- "${lldb_args[@]}"
    fi
    if [ ! -f "$result_file" ]; then
        echo "Error: Could not find exit code file"
        return 1
    fi
    local exit_code
    exit_code=$(cat "$result_file")
    rm "$result_file"
    [ "$exit_code" -eq 0 ]
}

# Keep the mixed Go/C stack fixture separate: adding foreign calls to the large
# variable-formatting fixture can change otherwise unrelated DWARF locations.
run_test_suite './debug.out' "['main.go']"
run_test_suite './debug-mixed.out' "['mixed/mixed.go', 'mixed/_wrap/mixed.c']" fault

llgo lldb -lldb "$LLDB_PATH" -- --batch "./debug.out" \
    -o 'script import os; info = llgo_plugin.inspect_target(lldb.target); (info.schema_version == 1 and info.runtime_layout_version == 2 and info.record_version == 1 and info.pointer_size == lldb.target.GetAddressByteSize() and info.byte_order != "unknown") or os._exit(1)' \
    -o 'script import os; result = lldb.SBCommandReturnObject(); lldb.debugger.GetCommandInterpreter().HandleCommand("llgo status", result); (result.Succeeded() and "LLGo debugger schema v1 (runtime layout v2)" in result.GetOutput()) or os._exit(1)' \
    -o 'script import os; result = lldb.SBCommandReturnObject(); lldb.debugger.GetCommandInterpreter().HandleCommand("llgo vars", result); (not result.Succeeded() and "requires a stopped process" in result.GetError()) or os._exit(1)' \
    -o 'script import os; result = lldb.SBCommandReturnObject(); lldb.debugger.GetCommandInterpreter().HandleCommand("llgo print s", result); (not result.Succeeded() and "requires a stopped process" in result.GetError()) or os._exit(1)'

# The LLGo formatter must not attach itself to an ordinary C target.
non_llgo_dir="$test_tmp_dir/non-llgo"
host_exe_ext=$(go env GOEXE)
mkdir -p "$non_llgo_dir"
# CC may include target and runtime-selection flags (for example, the MSVC
# profile uses "clang --target=... -fms-runtime-lib=dll"). Preserve those as
# separate arguments instead of treating the complete value as a file name.
read -r -a cc_command <<< "${CC:-cc}"
cc_debug_flags=(-g)
marker_attribute='__attribute__((used))'
if [[ "$(go env GOOS)" == windows ]]; then
    # Clang's MSVC target otherwise emits CodeView, while these fixtures test
    # stock LLDB's DWARF presentation. Match LLGo's exported COFF marker so it
    # is also visible through SBModule's symbol table on Windows ARM64.
    cc_debug_flags=(-gdwarf)
    marker_attribute='__declspec(dllexport)'
fi
printf 'typedef struct { const char *data; unsigned long len; } string; string cstring = {"raw", 3}; int main(void) { return 0; }\n' | \
    "${cc_command[@]}" -x c "${cc_debug_flags[@]}" -o "$non_llgo_dir/non-llgo$host_exe_ext" -
llgo lldb -lldb "$LLDB_PATH" -- --batch "$non_llgo_dir/non-llgo$host_exe_ext" \
    -o 'script import os; info = llgo_plugin.inspect_target(lldb.target); (not info.marker_versions and not info.supported) or os._exit(1)' \
    -o 'script import os; value = lldb.target.FindFirstGlobalVariable("cstring"); (value.IsValid() and value.GetSummary() is None and value.GetNumChildren() == 2) or os._exit(1)' \
    -o 'script import os; result = lldb.SBCommandReturnObject(); lldb.debugger.GetCommandInterpreter().HandleCommand("llgo status", result); (result.Succeeded() and "Not an LLGo target" in result.GetOutput()) or os._exit(1)' \
    -o 'script import os; result = lldb.SBCommandReturnObject(); lldb.debugger.GetCommandInterpreter().HandleCommand("p 1+1", result); (result.Succeeded() and "2" in result.GetOutput()) or os._exit(1)'

# An unknown marker must disable only LLGo-specific presentation.
printf 'typedef struct { const char *data; unsigned long len; } string; string cstring = {"raw", 3}; %s int __llgo_debugger_marker_v2 = 2; int main(void) { return 0; }\n' "$marker_attribute" | \
    "${cc_command[@]}" -x c "${cc_debug_flags[@]}" -o "$non_llgo_dir/unsupported-llgo$host_exe_ext" -
llgo lldb -lldb "$LLDB_PATH" -- --batch "$non_llgo_dir/unsupported-llgo$host_exe_ext" \
    -o 'script import os; info = llgo_plugin.inspect_target(lldb.target); (info.marker_versions == (2,) and not info.supported) or os._exit(1)' \
    -o 'script import os; value = lldb.target.FindFirstGlobalVariable("cstring"); (value.IsValid() and value.GetSummary() is None and value.GetNumChildren() == 2) or os._exit(1)' \
    -o 'script import os; result = lldb.SBCommandReturnObject(); lldb.debugger.GetCommandInterpreter().HandleCommand("llgo status", result); (result.Succeeded() and "Unsupported LLGo debugger marker version(s): v2" in result.GetOutput()) or os._exit(1)' \
    -o 'script import os; result = lldb.SBCommandReturnObject(); lldb.debugger.GetCommandInterpreter().HandleCommand("llgo vars", result); (not result.Succeeded() and "Unsupported LLGo debugger marker version(s): v2" in result.GetError()) or os._exit(1)' \
    -o 'script import os; result = lldb.SBCommandReturnObject(); lldb.debugger.GetCommandInterpreter().HandleCommand("p 1+1", result); (result.Succeeded() and "2" in result.GetOutput()) or os._exit(1)'

# Multiple marker versions are ambiguous even when one version is supported.
printf 'typedef struct { const char *data; unsigned long len; } string; string cstring = {"raw", 3}; %s int __llgo_debugger_marker_v1 = 1; %s int __llgo_debugger_marker_v2 = 2; int main(void) { return 0; }\n' "$marker_attribute" "$marker_attribute" | \
    "${cc_command[@]}" -x c "${cc_debug_flags[@]}" -o "$non_llgo_dir/ambiguous-llgo$host_exe_ext" -
llgo lldb -lldb "$LLDB_PATH" -- --batch "$non_llgo_dir/ambiguous-llgo$host_exe_ext" \
    -o 'script import os; info = llgo_plugin.inspect_target(lldb.target); (info.marker_versions == (1, 2) and not info.supported) or os._exit(1)' \
    -o 'script import os; value = lldb.target.FindFirstGlobalVariable("cstring"); (value.IsValid() and value.GetSummary() is None and value.GetNumChildren() == 2) or os._exit(1)' \
    -o 'script import os; result = lldb.SBCommandReturnObject(); lldb.debugger.GetCommandInterpreter().HandleCommand("llgo status", result); (result.Succeeded() and "Unsupported LLGo debugger marker version(s): v1, v2" in result.GetOutput()) or os._exit(1)'

# A legacy marker alone cannot select the newer runtime layout. Reject invalid
# structured records while keeping ordinary LLDB commands available.
for record_case in legacy schema layout pointer reserved; do
    case "$record_case" in
        legacy) record_decl='' ;;
        schema) record_decl="$marker_attribute unsigned char __llgo_debugger_abi_v1[16] = {76,76,71,79,68,66,71,0,1,2,2,1,0,sizeof(void*),1,0};" ;;
        layout) record_decl="$marker_attribute unsigned char __llgo_debugger_abi_v1[16] = {76,76,71,79,68,66,71,0,1,1,1,1,0,sizeof(void*),1,0};" ;;
        pointer) record_decl="$marker_attribute unsigned char __llgo_debugger_abi_v1[16] = {76,76,71,79,68,66,71,0,1,1,2,1,0,sizeof(void*) == 8 ? 4 : 8,1,0};" ;;
        reserved) record_decl="$marker_attribute unsigned char __llgo_debugger_abi_v1[16] = {76,76,71,79,68,66,71,0,1,1,2,1,1,sizeof(void*),1,0};" ;;
    esac
    printf '%s int __llgo_debugger_marker_v1 = 1; %s int main(void) { return 0; }\n' "$marker_attribute" "$record_decl" | \
        "${cc_command[@]}" -x c "${cc_debug_flags[@]}" -o "$non_llgo_dir/record-$record_case$host_exe_ext" -
    llgo lldb -lldb "$LLDB_PATH" -- --batch "$non_llgo_dir/record-$record_case$host_exe_ext" \
        -o 'script import os; info = llgo_plugin.inspect_target(lldb.target); (info.marker_versions == (1,) and not info.supported) or os._exit(1)' \
        -o 'script import os; result = lldb.SBCommandReturnObject(); lldb.debugger.GetCommandInterpreter().HandleCommand("p 1+1", result); (result.Succeeded() and "2" in result.GetOutput()) or os._exit(1)'
done
