#!/usr/bin/env bash
set -euo pipefail

# Common setup for dev/llgo*.sh wrappers.

_llgo_setup_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LLGO_ROOT="$(cd "${_llgo_setup_dir}/.." && pwd)"
LLGO_WORKDIR="${LLGO_CALLER_PWD:-$(pwd -P)}"

_llgo_require_repo_context() {
	case "$LLGO_WORKDIR" in
		"$LLGO_ROOT" | "$LLGO_ROOT"/*) ;;
		*)
			echo "error: must run inside LLGO_ROOT (${LLGO_ROOT}), got: ${LLGO_WORKDIR}" >&2
			exit 2
			;;
	esac

	for required in go.mod dev/docker-compose.yml; do
		if [ ! -e "${LLGO_ROOT}/${required}" ]; then
			echo "error: invalid LLGO_ROOT (${LLGO_ROOT}); missing ${required}" >&2
			exit 2
		fi
	done
}

_llgo_find_go() {
	if command -v go >/dev/null 2>&1; then
		LLGO_GO="$(command -v go)"
		return
	fi
	if [ -x /usr/local/go/bin/go ]; then
		LLGO_GO="/usr/local/go/bin/go"
		export PATH="/usr/local/go/bin:${PATH}"
		return
	fi
	echo "error: go not found in PATH and /usr/local/go/bin/go missing" >&2
	exit 2
}

_llgo_compute_bin_path() {
	local gobin
	gobin="$(cd "${LLGO_ROOT}" && "${LLGO_GO}" env GOBIN)"
	if [ -z "$gobin" ]; then
		local gopath_raw
		gopath_raw="$(cd "${LLGO_ROOT}" && "${LLGO_GO}" env GOPATH)"
		gobin="${gopath_raw%%:*}/bin"
	fi
	LLGO_BIN="${gobin}/llgo"
}

_llgo_ensure_llgo_cli() {
	_llgo_compute_bin_path

	(
		cd "${LLGO_ROOT}"
		"${LLGO_GO}" install ./cmd/llgo
	)
}

_llgo_require_repo_context
_llgo_find_go

# shellcheck disable=SC2034 # exported for wrappers to use directly
export LLGO_ROOT
