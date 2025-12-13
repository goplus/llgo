#!/usr/bin/env bash
set -euo pipefail

LLGO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." >/dev/null 2>&1 && pwd)"
workdir="$(pwd -P)"

case "$workdir" in
	"$LLGO_ROOT" | "$LLGO_ROOT"/*) ;;
	*)
		echo "error: must run inside LLGO_ROOT ($LLGO_ROOT), got: $workdir" >&2
		exit 2
		;;
esac

export LLGO_ROOT

cd "$LLGO_ROOT"
go install ./cmd/llgo
cd "$workdir"

llgo "$@"
