#!/usr/bin/env bash
set -euo pipefail

llvm_config=${LLVM_CONFIG:-llvm-config}
case "${1:-}" in
  cppflags)
    directory="$("$llvm_config" --includedir)"
    flag=-I
    flags="$("$llvm_config" --cppflags)"
    ;;
  ldflags)
    directory="$("$llvm_config" --libdir)"
    flag=-L
    flags="$("$llvm_config" --ldflags --link-shared --libs all --system-libs)"
    ;;
  *)
    echo 'Usage: devenv_unix_flags.sh {cppflags|ldflags}' >&2
    exit 2
    ;;
esac

# llvm-config leaves its directory flag unquoted. Quote the entire argument
# for Go's cgo parser and preserve all the other flags verbatim.
[[ "$flags" == "$flag$directory"* ]]
printf '"%s%s"%s' "$flag" "$directory" "${flags#"$flag$directory"}"
if [[ "$flag" == -L ]]; then
  printf ' "-Wl,-rpath,%s"' "$directory"
fi
printf '\n'
