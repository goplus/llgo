#!/bin/bash
set -euo pipefail
if [[ "${LLGO_HARDWARE_CONFIRM:-}" != "flash" ]]; then
    echo "physical debugger test disabled; set LLGO_HARDWARE_CONFIRM=flash to allow halt/load" >&2
    exit 2
fi
script_dir=$(cd "$(dirname "$0")" && pwd)
exec "${PYTHON:-python3}" "$script_dir/runtest.py" "$@"
