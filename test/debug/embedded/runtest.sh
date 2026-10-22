#!/bin/bash
set -euo pipefail
script_dir=$(cd "$(dirname "$0")" && pwd)
exec "${PYTHON:-python3}" "$script_dir/runtest.py" "$@"
