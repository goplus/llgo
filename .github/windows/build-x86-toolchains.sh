#!/usr/bin/env bash
# Pinned source producer; release correctness uses the per-run artifact.
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
source_root="${RUNNER_TEMP:?}/llgo-x86-toolchains"
revision=7a8f8827f2413161e58d7d2968dae22c47556573
if [[ ! -d "$source_root/.git" ]]; then
    git init "$source_root"
    git -C "$source_root" remote add origin https://github.com/cpunion/espressif-llvm-project-prebuilt.git
    git -C "$source_root" fetch --depth=1 origin "$revision"
    git -C "$source_root" checkout --detach FETCH_HEAD
fi
[[ "$(git -C "$source_root" rev-parse HEAD)" == "$revision" ]]
source "$source_root/toolchain.env"
archive="llvm-mingw-${LLVM_MINGW_VERSION}-ucrt-ubuntu-22.04-x86_64.tar.xz"
bootstrap="$RUNNER_TEMP/llgo-x86-bootstrap"
curl --fail -L --retry 5 --retry-all-errors -o "$RUNNER_TEMP/$archive" \
    "https://github.com/mstorsjo/llvm-mingw/releases/download/$LLVM_MINGW_VERSION/$archive"
printf '%s  %s\n' "$LLVM_MINGW_LINUX_X86_64_SHA256" "$RUNNER_TEMP/$archive" | sha256sum -c -
mkdir -p "$bootstrap"
tar -xf "$RUNNER_TEMP/$archive" --strip-components=1 -C "$bootstrap"
export PATH="$bootstrap/bin:$PATH"
export LLVM_SDK_JOBS=2
"$source_root/scripts/build_windows_sdk.sh"
(cd "$source_root" && ./release.sh i686-w64-mingw32)
mkdir -p "$root/.windows-x86-toolchains"
cp "$source_root/dist/"*.tar.xz "$source_root/dist/"*.sha256 "$root/.windows-x86-toolchains/"
# Older ESP builders write an absolute filename into the checksum sidecar.
# Verify the bytes, then make that sidecar portable across cache/runner paths.
python3 - "$root/.windows-x86-toolchains" <<'PYTHON'
import hashlib
from pathlib import Path
import sys
for archive in Path(sys.argv[1]).glob('*.tar.xz'):
    sidecar = archive.with_suffix(archive.suffix + '.sha256')
    expected, filename = sidecar.read_text().strip().split(maxsplit=1)
    actual = hashlib.file_digest(archive.open('rb'), 'sha256').hexdigest()
    if actual != expected or Path(filename).name != archive.name:
        raise SystemExit(f'Invalid source-built archive checksum: {archive}')
    sidecar.write_text(f'{expected}  {archive.name}\n')
PYTHON
(cd "$root/.windows-x86-toolchains" && sha256sum -c ./*.sha256)
