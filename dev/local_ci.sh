#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
[ -f "$repo_root/go.mod" ] && [ -f "$repo_root/dev/docker-compose.yml" ] || {
	echo "error: dev/local_ci.sh must live inside LLGO_ROOT (missing go.mod or dev/docker-compose.yml)" >&2
	exit 2
}
tmp_root="$(mktemp -d)"
workdir="$repo_root"

cleanup() {
	rm -rf "$tmp_root"
}
trap cleanup EXIT

export LLGO_ROOT="$workdir"
demo_skip=()

log_section() {
	printf "\n==== %s ====\n" "$1"
}

setup_python3_embed_pc() {
	# Some packages expect `python3-embed.pc`; create a shim that
	# points at whichever python-X.Y-embed pkg-config file exists.
	if pkg-config --exists python-3.12-embed; then
		local pcdir="$tmp_root/pc"
		mkdir -p "$pcdir"
		local libdir
		libdir=$(pkg-config --variable=libdir python-3.12-embed)
		ln -sf "$libdir/pkgconfig/python-3.12-embed.pc" "$pcdir/python3-embed.pc"
		export PKG_CONFIG_PATH="$pcdir${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
		return
	fi
	if pkg-config --exists python3-embed; then
		return
	fi

	local candidates=()
	if command -v python3 >/dev/null 2>&1; then
		local detected
		detected="$(python3 -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")' 2>/dev/null || true)"
		[ -n "$detected" ] && candidates+=("$detected")
	fi
	candidates+=("3.13" "3.12" "3.11" "3.10")

	local chosen=""
	for ver in "${candidates[@]}"; do
		local pkg="python-${ver}-embed"
		if pkg-config --exists "$pkg"; then
			chosen="$pkg"
			break
		fi
	done
	if [ -z "$chosen" ]; then
		return
	fi

	local pcdir="$tmp_root/pc"
	mkdir -p "$pcdir"
	local libdir
	libdir=$(pkg-config --variable=libdir "$chosen")
	ln -sf "$libdir/pkgconfig/${chosen}.pc" "$pcdir/python3-embed.pc"
	export PKG_CONFIG_PATH="$pcdir${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
}

setup_python3_embed_pc

install_python_demo_deps() {
	local pkgs=("numpy" "torch")
	local pip_cmd=()
	if command -v pip3.12 >/dev/null 2>&1; then
		pip_cmd=(pip3.12)
	elif command -v python3.12 >/dev/null 2>&1; then
		pip_cmd=(python3.12 -m pip)
	elif command -v python3 >/dev/null 2>&1; then
		pip_cmd=(python3 -m pip)
	else
		echo "warning: python3 not available; skipping python demo deps" >&2
		return
	fi
	if "${pip_cmd[@]}" install --break-system-packages "${pkgs[@]}" 2>/dev/null; then
		return
	fi
	"${pip_cmd[@]}" install "${pkgs[@]}"
}

ensure_cargs_libs() {
	local cargs_dir="$workdir/_demo/c/cargs/libs"
	if [ -d "$cargs_dir/lib/pkgconfig" ]; then
		export PKG_CONFIG_PATH="$cargs_dir/lib/pkgconfig${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
		return
	fi

	if [ -n "${LLGO_ASSETS_DIR:-}" ] && [ -d "$LLGO_ASSETS_DIR/cargs/lib/pkgconfig" ]; then
		mkdir -p "$cargs_dir"
		rsync -a "$LLGO_ASSETS_DIR/cargs/" "$cargs_dir/"
	else
		local goos goarch demo_pkg url
		goos=$(go env GOOS)
		goarch=$(go env GOARCH)
		case "${goos}-${goarch}" in
		darwin-arm64) demo_pkg="cargs_darwin_arm64.zip" ;;
		darwin-amd64) demo_pkg="cargs_darwin_amd64.zip" ;;
		linux-amd64) demo_pkg="cargs_linux_amd64.zip" ;;
		linux-arm64) demo_pkg="cargs_linux_arm64.zip" ;;
		linux-386) demo_pkg="cargs_linux_386.zip" ;;
		*) demo_pkg="" ;;
		esac
		if [ -z "$demo_pkg" ]; then
			echo "warning: unsupported platform for cargs demo: ${goos}-${goarch}" >&2
			demo_skip+=("_demo/c/cargs")
			return
		fi
		mkdir -p "$cargs_dir"
		url="https://github.com/goplus/llpkg/releases/download/cargs/v1.0.0/${demo_pkg}"
		if command -v curl >/dev/null 2>&1; then
			if ! curl -fL "$url" -o "$cargs_dir/$demo_pkg"; then
				echo "warning: failed to download cargs demo package; skipping cargs demo" >&2
				demo_skip+=("_demo/c/cargs")
				return
			fi
		elif command -v wget >/dev/null 2>&1; then
			if ! wget -O "$cargs_dir/$demo_pkg" "$url"; then
				echo "warning: failed to download cargs demo package; skipping cargs demo" >&2
				demo_skip+=("_demo/c/cargs")
				return
			fi
		else
			echo "warning: missing curl/wget for cargs demo download; skipping cargs demo" >&2
			demo_skip+=("_demo/c/cargs")
			return
		fi
		( cd "$cargs_dir" && unzip -q "$demo_pkg" && rm -f "$demo_pkg" )
	fi

	local prefix
	prefix=$(cd "$cargs_dir" && pwd)
	if [ -d "$prefix/lib/pkgconfig" ]; then
		for tmpl in "$prefix"/lib/pkgconfig/*.pc.tmpl; do
			[ -f "$tmpl" ] || continue
			pc_file="${tmpl%.tmpl}"
			sed "s|{{.Prefix}}|${prefix}|g" "$tmpl" > "$pc_file"
		done
		export PKG_CONFIG_PATH="$prefix/lib/pkgconfig${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
	fi
}

ensure_llama2_model() {
	local dst="$workdir/_demo/c/llama2-c/stories15M.bin"
	if [ -f "$dst" ]; then
		return
	fi

	local assets_dir="${LLGO_ASSETS_DIR:-/opt/llgo-assets}"
	local src="$assets_dir/llama2-c/stories15M.bin"
	if [ -f "$src" ]; then
		mkdir -p "$(dirname "$dst")"
		cp -f "$src" "$dst"
		return
	fi

	mkdir -p "$(dirname "$dst")"
	local url="${LLGO_LLAMA2_URL:-https://huggingface.co/karpathy/tinyllamas/resolve/main/stories15M.bin}"
	local tmp="${dst}.tmp.$$"
	if command -v curl >/dev/null 2>&1; then
		if ! curl -fL "$url" -o "$tmp"; then
			rm -f "$tmp"
			echo "warning: failed to download llama2 model; skipping llama2 demo" >&2
			demo_skip+=("_demo/c/llama2-c")
			return
		fi
	elif command -v wget >/dev/null 2>&1; then
		if ! wget -O "$tmp" "$url"; then
			rm -f "$tmp"
			echo "warning: failed to download llama2 model; skipping llama2 demo" >&2
			demo_skip+=("_demo/c/llama2-c")
			return
		fi
	else
		echo "warning: missing llama2 model and neither curl nor wget is available; skipping llama2 demo" >&2
		demo_skip+=("_demo/c/llama2-c")
		return
	fi
	mv -f "$tmp" "$dst"
}

ensure_llama2_model

run_hello() {
	local mod_version="$1"
	local hello_dir="$tmp_root/helloworld-$mod_version"
	rm -rf "$hello_dir" || true
	mkdir -p "$hello_dir"
	cat >"$hello_dir/go.mod" <<EOF
module hello
go $mod_version
EOF
	cat >"$hello_dir/main.go" <<'EOF'
package main

import (
	"fmt"
	"github.com/goplus/lib/c"
	"github.com/goplus/lib/cpp/std"
)

func main() {
	fmt.Println("Hello from fmt.Println")
	println("Hello from builtin println")
	c.Printf(c.Str("Hello from c printf\n"))
	c.Printf(std.Str("Hello from cpp/std.Str\n").CStr())
}
EOF
	(cd "$hello_dir" && go mod tidy)
	local output
	if ! output=$(cd "$hello_dir" && llgo run . 2>&1); then
		printf "%s\n" "$output"
		exit 1
	fi
	local expected=(
		"Hello from fmt.Println"
		"Hello from builtin println"
		"Hello from c printf"
		"Hello from cpp/std.Str"
	)
	for want in "${expected[@]}"; do
		if ! grep -Fqx "$want" <<<"$output"; then
			printf "%s\n" "$output"
			echo "missing output: $want" >&2
			exit 1
		fi
	done
}

log_section "Format"
for dir in . runtime; do
	pushd "$workdir/$dir" >/dev/null
	fmt_output="$(
		find . -name '*.go' -type f ! -name 'xgo_autogen.go' -print0 \
			| xargs -0 gofmt -l \
			| sed 's|^\\./||' \
			|| true
	)"
	if [ -n "$fmt_output" ]; then
		printf "Detected gofmt differences in %s:\n%s\n" "$dir" "$fmt_output"
		exit 1
	fi
	popd >/dev/null
done

log_section "Go Build"
(cd "$workdir" && go build ./...)

log_section "Go Test"
install_python_demo_deps
go_test_timeout="${LLGO_GO_TEST_TIMEOUT:-20m}"
(cd "$workdir" && go test -timeout="${go_test_timeout}" ./...)

log_section "Install llgo"
(cd "$workdir" && go install ./cmd/llgo)
gobin="$(cd "$workdir" && go env GOBIN)"
if [ -z "$gobin" ]; then
	gopath_raw="$(cd "$workdir" && go env GOPATH)"
	gobin="${gopath_raw%%:*}/bin"
fi
export PATH="$gobin:$PATH"

log_section "llgo test"
(cd "$workdir" && llgo test ./...)

log_section "Demo Tests"
ensure_cargs_libs
export LLGO_FULL_RPATH=true
demo_skip_env=""
if [ "${#demo_skip[@]}" -gt 0 ]; then
	demo_skip_env="$(IFS=,; echo "${demo_skip[*]}")"
fi
demo_jobs="${LLGO_DEMO_JOBS:-}"
if [ -z "$demo_jobs" ]; then
	if command -v nproc >/dev/null 2>&1; then
		demo_jobs="$(nproc)"
	elif command -v getconf >/dev/null 2>&1; then
		demo_jobs="$(getconf _NPROCESSORS_ONLN 2>/dev/null || echo 1)"
	else
		demo_jobs=1
	fi
	if [ "$demo_jobs" -gt 4 ]; then
		demo_jobs=4
	fi
fi
(cd "$workdir" && LLGO_DEMO_JOBS="$demo_jobs" LLGO_DEMO_SKIP="$demo_skip_env" bash .github/workflows/test_demo.sh)

log_section "Build targets"
(cd "$workdir/_demo/embed/targetsbuild" && bash build.sh empty)
(cd "$workdir/_demo/embed/targetsbuild" && bash build.sh defer)

log_section "Hello World"
hello_logs=()
for mod in 1.21 1.22 1.23 1.24; do
	log="$tmp_root/hello-${mod}.log"
	(run_hello "$mod") >"$log" 2>&1 &
	hello_logs+=("$log:$!")
done
for item in "${hello_logs[@]}"; do
	log="${item%%:*}"
	pid="${item##*:}"
	if ! wait "$pid"; then
		cat "$log"
		exit 1
	fi
done

log_section "Build Cache"
(cd "$workdir/test/buildcache" && bash test.sh)

log_section "Done"
