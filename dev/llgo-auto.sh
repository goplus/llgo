#!/usr/bin/env bash
set -euo pipefail

usage() {
	cat >&2 <<'EOT'
usage: dev/llgo-auto.sh --os=linux-amd64|linux-arm64|linux-i386|macos-amd64|macos-arm64 [--go=1.21|1.22|1.23|1.24|1.25|1.21.13|1.22.12|1.23.6|1.24.2|1.25.2] <run|test|build> [args...]

Examples:
  ./dev/llgo-auto.sh --os=linux-amd64 --go=1.24 run .
  ./dev/llgo-auto.sh --os=linux-arm64 --go=1.21 test ./test
  ./dev/llgo-auto.sh --os=macos-arm64 --go=1.25 run ./_demo/go/commandrun
EOT
	exit 2
}

os_target=""
go_version=""

while [[ $# -gt 0 ]]; do
	case "$1" in
		--os=*)
			os_target="${1#--os=}"
			shift
			;;
		--go=*)
			go_version="${1#--go=}"
			shift
			;;
		--help|-h)
			usage
			;;
		--)
			shift
			break
			;;
		*)
			break
			;;
	esac
done

if [[ -z "$os_target" ]]; then
	usage
fi

if [[ $# -lt 1 ]]; then
	usage
fi

action="$1"
shift || true

case "$action" in
	run|test|build) ;;
	*)
		echo "error: unsupported action: $action" >&2
		exit 2
		;;
esac

case "$go_version" in
	1.21|1.21.*) go_version="1.21.13" ;;
	1.22|1.22.*) go_version="1.22.12" ;;
	1.23|1.23.*) go_version="1.23.6" ;;
	1.25|1.25.*) go_version="1.25.2" ;;
	1.24|1.24.*) go_version="" ;;
esac

LLGO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." >/dev/null 2>&1 && pwd)"

host_os="$(uname -s)"
host_arch="$(uname -m)"
case "$host_os" in
	Darwin) host_os="macos" ;;
	Linux) host_os="linux" ;;
	*) host_os="" ;;
esac

case "$host_arch" in
	x86_64) host_arch="amd64" ;;
	arm64|aarch64) host_arch="arm64" ;;
	i386|i686) host_arch="i386" ;;
	*) host_arch="" ;;
esac

os_part="${os_target%%-*}"
arch_part="${os_target#*-}"

if [[ "$os_part" != "linux" && "$os_part" != "macos" ]]; then
	echo "error: unsupported --os value: $os_target" >&2
	exit 2
fi

case "$arch_part" in
	amd64|arm64|i386) ;;
	*)
		echo "error: unsupported arch in --os: $os_target" >&2
		exit 2
		;;
esac

run_local() {
	local go_bin=""
	local go_prefix=""
	local toolchain="local"

	if [[ -n "${GO_BIN:-}" ]]; then
		go_bin="$GO_BIN"
	elif [[ -n "$go_version" ]]; then
		case "$go_version" in
			1.21|1.21.*)
				go_prefix="go@1.21"
				;;
			1.22|1.22.*)
				go_prefix="go@1.22"
				;;
			1.23|1.23.*)
				go_prefix="go@1.23"
				;;
			1.24|1.24.*)
				go_prefix="go@1.24"
				;;
			1.25|1.25.*)
				go_prefix="go@1.25"
				;;
			*)
				go_prefix=""
				;;
		esac
		if [[ -n "$go_prefix" ]]; then
			for prefix in "/opt/homebrew/opt/${go_prefix}" "/usr/local/opt/${go_prefix}"; do
				if [[ -x "${prefix}/bin/go" ]]; then
					go_bin="${prefix}/bin/go"
					break
				fi
			done
		fi
	fi

	if [[ -z "$go_bin" ]]; then
		if command -v go >/dev/null 2>&1; then
			go_bin="$(command -v go)"
		else
			echo "error: go not found; set GO_BIN or install go" >&2
			exit 1
		fi
	fi

	if [[ "$go_version" == "1.21.13" || "$go_version" == "1.22.12" ]]; then
		toolchain="auto"
	fi

	PATH="$(dirname "$go_bin"):$PATH" GOTOOLCHAIN="$toolchain" \
		"$go_bin" install -C "$LLGO_ROOT" ./cmd/llgo

	PATH="$(dirname "$go_bin"):$PATH" GOTOOLCHAIN="$toolchain" \
		llgo "$action" "$@"
}

run_docker() {
	local arch="$1"
	shift
	local llgo_bin="/repo/_bin/llgo-${arch}"
	if [[ ! -x "$LLGO_ROOT/_bin/llgo-${arch}" ]]; then
		"$LLGO_ROOT/dev/compose.sh" "$arch" \
			bash -lc "cd /repo && go install ./cmd/llgo && mkdir -p /repo/_bin && cp \"$(go env GOPATH)\"/bin/llgo \"$llgo_bin\""
	fi
	local env_prefix=""
	if [[ "$go_version" == "1.21.13" || "$go_version" == "1.22.12" ]]; then
		env_prefix="GOTOOLCHAIN=auto"
	fi
	if [[ -n "$go_version" ]]; then
		"$LLGO_ROOT/dev/compose.sh" "$arch" --go="$go_version" \
			bash -lc "$env_prefix $llgo_bin $action $*"
	else
		"$LLGO_ROOT/dev/compose.sh" "$arch" \
			bash -lc "$env_prefix $llgo_bin $action $*"
	fi
}

if [[ "$os_part" == "linux" ]]; then
	run_docker "$arch_part" "$@"
	exit 0
fi

if [[ "$os_part" == "macos" ]]; then
	if [[ "$host_os" != "macos" ]]; then
		echo "error: macos target requires running on macOS" >&2
		exit 1
	fi
	if [[ "$arch_part" != "$host_arch" ]]; then
		echo "error: host arch $host_arch does not match target $arch_part" >&2
		exit 1
	fi
	run_local "$@"
	exit 0
fi

usage
