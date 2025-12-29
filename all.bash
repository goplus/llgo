#!/usr/bin/env bash
set -euo pipefail

# all.bash builds and installs llgo with an embedded compiler hash for development builds.
#
# Usage: ./all.bash
#
# For devel builds, this generates a random hash to ensure each build
# gets a unique identifier for cache invalidation.

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$script_dir"

if [ ! -f "go.mod" ]; then
	echo "error: all.bash must be run from the llgo repository root" >&2
	exit 1
fi

log() {
	printf "[all.bash] %s\n" "$1" >&2
}

# Generate a random hash for devel builds
# This ensures each build gets a unique identifier for cache invalidation
compiler_hash=$(head -c 32 /dev/urandom | sha256sum | cut -d' ' -f1)

log "Using compiler hash: $compiler_hash"
log "Installing llgo with embedded hash..."
go install -ldflags "-X 'github.com/goplus/llgo/internal/env.compilerHash=${compiler_hash}'" ./cmd/llgo

log "Installation complete!"
log "llgo is now available with LLGO_COMPILER_HASH=$compiler_hash"
