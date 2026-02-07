#!/usr/bin/env bash
set -euo pipefail

usage() {
	cat >&2 <<'EOT'
usage: dev/compose.sh <arch> [--go=1.21.13|1.22.12|1.23.6|1.25.2] [command...]

arch must be one of: amd64 arm64 i386

Examples:
  ./dev/compose.sh amd64
  ./dev/compose.sh arm64 bash -lc './dev/llgo.sh test ./test/std/os/signal'
  ./dev/compose.sh amd64 --go=1.21.13 bash -lc 'go version'
  ./dev/compose.sh arm64 --go=1.22.12 bash -lc 'go version'
  ./dev/compose.sh amd64 --go=1.23.6 bash -lc 'go version'
  ./dev/compose.sh arm64 --go=1.25.2 bash -lc 'go version'
EOT
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
case "$go_version" in
	1.21|1.21.*) go_version="1.21.13" ;;
	1.22|1.22.*) go_version="1.22.12" ;;
	1.23|1.23.*) go_version="1.23.6" ;;
	1.25|1.25.*) go_version="1.25.2" ;;
	1.24|1.24.*) go_version="" ;;
esac

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
		1.22.12)
			service+="-go122"
			;;
		1.23.6)
			service+="-go123"
			;;
		1.25.2)
			service+="-go125"
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

running="$("${compose[@]}" ps -q --status=running "$service" 2>/dev/null || true)"
if [[ -z "$running" ]]; then
	"${compose[@]}" up -d "$service" >/dev/null
fi

if [[ $# -eq 0 ]]; then
	"${compose[@]}" exec -w "$container_workdir" -it "$service" bash
else
	"${compose[@]}" exec -w "$container_workdir" -T "$service" "$@"
fi
