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

_llgo_compute_bin_path() {
	local gobin
	gobin="$(cd "${LLGO_ROOT}" && go env GOBIN)"
	if [ -z "$gobin" ]; then
		local gopath_raw
		gopath_raw="$(cd "${LLGO_ROOT}" && go env GOPATH)"
		gobin="${gopath_raw%%:*}/bin"
	fi
	LLGO_BIN="${gobin}/llgo"
}

_llgo_ensure_llgo_cli() {
	_llgo_compute_bin_path

	local needs_install=0
	if [ ! -x "${LLGO_BIN}" ]; then
		needs_install=1
	else
		if find "${LLGO_ROOT}/cmd/llgo" -type f -newer "${LLGO_BIN}" -print -quit | grep -q .; then
			needs_install=1
		fi
	fi

	if [ "${needs_install}" -eq 1 ]; then
		(
			cd "${LLGO_ROOT}"
			./all.bash
		)
	fi
}

_llgo_require_repo_context

# shellcheck disable=SC2034 # exported for wrappers to use directly
export LLGO_ROOT
