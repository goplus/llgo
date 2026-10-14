#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
version="$(cat "$root/.github/lld/version.txt")"
base_url="https://github.com/xgo-dev/llvm-project/releases/download/lld-$version"
source_commit="$(cat "$root/.github/lld/source-commit.txt")"
work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT
checksums="$work/SHA256SUMS"
curl --fail --location --retry 3 "$base_url/SHA256SUMS" -o "$checksums"

# GoReleaser shares an archive layout across the four Unix platforms. Only
# Darwin arm64 receives a replacement linker; the others get empty directories.
for os in darwin linux; do
  for arch in amd64 arm64; do
    mkdir -p "$root/.sysroot/$os/$arch/libexec/llgo"
  done
done

arch=arm64
filename="lld-$version-darwin-$arch.tar.gz"
checksum="$(awk -v name="$filename" '$2 == name { print $1 }' "$checksums")"
if [[ ! "$checksum" =~ ^[0-9a-f]{64}$ ]]; then
  echo "Missing or invalid Release checksum for $filename" >&2
  exit 1
fi
curl --fail --location --retry 3 "$base_url/$filename" -o "$work/$filename"
(cd "$work" && printf '%s  %s\n' "$checksum" "$filename" | shasum -a 256 -c -)
tar -xzf "$work/$filename" -C "$work"
source_dir="$work/lld-$version-darwin-$arch"
python3 - "$source_dir/manifest.json" "$version" "$arch" "$source_commit" <<'PY'
import json, sys
manifest = json.load(open(sys.argv[1]))
assert manifest["version"] == sys.argv[2], manifest
assert manifest["architecture"] == sys.argv[3], manifest
assert manifest["llvm_version"] == "22.1.8", manifest
assert manifest["source_commit"] == sys.argv[4], manifest
assert manifest["source_repository"] == "https://github.com/xgo-dev/llvm-project", manifest
PY
destination="$root/.sysroot/darwin/$arch/libexec/llgo"
install -m 0755 "$source_dir/bin/ld64.lld" "$destination/ld64.lld"
install -m 0644 "$source_dir/manifest.json" "$destination/lld-manifest.json"
install -m 0644 "$source_dir/LICENSE-LLVM.txt" "$destination/LICENSE-LLVM.txt"
install -m 0644 "$source_dir/LICENSE-LLD.txt" "$destination/LICENSE-LLD.txt"
