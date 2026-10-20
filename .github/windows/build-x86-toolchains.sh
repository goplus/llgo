#!/usr/bin/env bash
# Pinned source producer; only the checksum-pinned bootstrap is cached.
# See X86_TOOLCHAINS.md for the source and artifact trust boundaries.
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
downloads="$root/.windows-x86-downloads"
mkdir -p "$downloads"
if [[ ! -f "$downloads/$archive" ]]; then
    curl --fail -L --retry 5 --retry-all-errors -o "$downloads/$archive" \
        "https://github.com/mstorsjo/llvm-mingw/releases/download/$LLVM_MINGW_VERSION/$archive"
fi
# Restored download bytes must match the source-pinned checksum on every use.
printf '%s  %s\n' "$LLVM_MINGW_LINUX_X86_64_SHA256" "$downloads/$archive" | sha256sum -c -
mkdir -p "$bootstrap"
tar -xf "$downloads/$archive" --strip-components=1 -C "$bootstrap"
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
import os
from pathlib import Path
import sys
for archive in Path(sys.argv[1]).glob('*.tar.xz'):
    sidecar = archive.with_suffix(archive.suffix + '.sha256')
    expected, filename = sidecar.read_text().strip().split(maxsplit=1)
    with archive.open('rb') as source:
        digest = hashlib.sha256()
        for chunk in iter(lambda: source.read(1024 * 1024), b''):
            digest.update(chunk)
    actual = digest.hexdigest()
    if actual != expected or Path(filename).name != archive.name:
        raise SystemExit(f'Invalid source-built archive checksum: {archive}')
    sidecar.write_text(f'{expected}  {archive.name}\n')
    # Carry the expected hash outside the downloaded artifact. Consumers
    # compare against the producing job's outputs, not an archive's sidecar.
    if os.environ.get('GITHUB_OUTPUT'):
        kind = 'sdk' if archive.name.startswith('llvm-sdk-') else 'esp'
        with open(os.environ['GITHUB_OUTPUT'], 'a') as output:
            output.write(f'{kind}-sha256={actual}\n')
PYTHON
(cd "$root/.windows-x86-toolchains" && sha256sum -c ./*.sha256)
