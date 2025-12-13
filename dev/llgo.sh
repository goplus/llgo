#!/usr/bin/env bash
set -euo pipefail

LLGO_CALLER_PWD="$(pwd -P)"
source "$(dirname "${BASH_SOURCE[0]}")/_llgo_setup.sh"

_llgo_ensure_llgo_cli

cd "$LLGO_CALLER_PWD"
"$LLGO_BIN" "$@"
