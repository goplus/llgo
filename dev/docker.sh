#!/usr/bin/env bash
set -euo pipefail

usage() {
	cat >&2 <<'EOF'
usage: dev/docker.sh <arch> [--go=1.21.13] [command...]

arch must be one of: amd64 arm64 i386

Examples:
  ./dev/docker.sh amd64
  ./dev/docker.sh arm64 bash -lc './dev/llgo.sh test ./test/std/os/signal'
  ./dev/docker.sh amd64 --go=1.21.13 bash -lc 'go version'
EOF
	exit 2
}

if [[ $# -lt 1 ]]; then
	usage
fi

arch="$1"
shift || true

go_version=""
if [[ ${1:-} == --go=* ]]; then
	go_version="${1#--go=}"
	shift || true
fi

case "$arch" in
	amd64) service="llgo-dev-amd64" ;;
	arm64) service="llgo-dev-arm64" ;;
	i386) service="llgo-dev-i386" ;;
	*) usage ;;
esac

if [[ -n "$go_version" ]]; then
	case "$go_version" in
		1.21.13)
			service+="-go121"
			;;
		*)
			echo "error: unsupported Go version: $go_version" >&2
			exit 2
			;;
	esac
fi

LLGO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." >/dev/null 2>&1 && pwd)"
host_pwd="$(pwd -P)"

case "$host_pwd" in
	"$LLGO_ROOT" | "$LLGO_ROOT"/*) ;;
	*)
		echo "error: must run inside LLGO_ROOT ($LLGO_ROOT), got: $host_pwd" >&2
		exit 2
		;;
esac

rel="${host_pwd#"$LLGO_ROOT"}"
rel="${rel#/}"
container_workdir="/repo${rel:+/$rel}"

compose=(
	docker compose
	--file "$LLGO_ROOT/dev/docker-compose.yml"
	--project-directory "$LLGO_ROOT"
)

if [[ $# -eq 0 ]]; then
	"${compose[@]}" run --rm --workdir "$container_workdir" "$service" bash
else
	"${compose[@]}" run --rm --workdir "$container_workdir" "$service" "$@"
fi
