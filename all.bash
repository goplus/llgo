#!/usr/bin/env bash
set -euo pipefail

# all.bash builds and installs llgo with an embedded compiler hash for development builds.
#
# Usage: ./all.bash
#
# This script:
# 1. Computes a deterministic hash of all llgo compiler dependencies
# 2. Installs llgo with the hash embedded via ldflags
# 3. Ensures cache fingerprints correctly invalidate when sources change

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$script_dir"

if [ ! -f "go.mod" ]; then
	echo "error: all.bash must be run from the llgo repository root" >&2
	exit 1
fi

log() {
	printf "[all.bash] %s\n" "$1" >&2
}

# compute_dep_hash generates a deterministic hash of all compiler dependencies
# and the llgo workspace itself (to capture uncommitted local changes)
compute_dep_hash() {
	local tmpdir
	tmpdir="$(mktemp -d)"
	trap 'rm -rf "$tmpdir"' RETURN

	local deps_json="$tmpdir/deps.json"
	local digest_input="$tmpdir/digest.txt"

	# Get all dependencies of cmd/llgo in JSON format
	go list -deps -json ./cmd/llgo > "$deps_json"

	# Extract module information and build a sorted, deterministic list
	{
		# Process each dependency's module information
		jq -r '
			select(.Module != null) |
			.Module |
			if .Replace != null then
				# For replaced modules, use replacement info
				if .Replace.Version != "" then
					# Replaced with a versioned module
					"\(.Replace.Path)@\(.Replace.Version)@\(.Replace.Sum // "")"
				else
					# Replaced with a local directory - handled separately
					"\(.Replace.Path)@LOCAL@\(.Replace.Dir)"
				end
			else
				# Regular module
				"\(.Path)@\(.Version)@\(.Sum // "")"
			end
		' "$deps_json" | sort -u

		# For local directory replacements, hash the workspace content
		jq -r '
			select(.Module != null and .Module.Replace != null and .Module.Replace.Version == "") |
			.Module.Replace.Dir
		' "$deps_json" | sort -u | while IFS= read -r local_dir; do
			if [ -d "$local_dir" ]; then
				# Hash the local directory content
				local dir_hash
				dir_hash=$(cd "$local_dir" && find . -type f -name '*.go' -print0 | sort -z | xargs -0 sha256sum | sha256sum | cut -d' ' -f1)
				echo "LOCAL:$local_dir:$dir_hash"
			fi
		done

		# Hash the llgo workspace itself to capture uncommitted local changes
		# This ensures that any edits to compiler source files invalidate the cache
		echo "WORKSPACE_HASH_START"
		find . -type f \( -name '*.go' -o -name 'go.mod' -o -name 'go.sum' \) \
			! -path './.git/*' \
			! -path './.*' \
			-print0 | sort -z | xargs -0 sha256sum | sha256sum | cut -d' ' -f1
	} > "$digest_input"

	# Generate final hash from the sorted dependency list
	sha256sum "$digest_input" | cut -d' ' -f1
}

log "Computing compiler hash..."
compiler_hash="$(compute_dep_hash)"
log "Compiler hash: $compiler_hash"

log "Installing llgo with embedded hash..."
go install -ldflags "-X 'github.com/goplus/llgo/internal/env.compilerHash=${compiler_hash}'" ./cmd/llgo

log "Installation complete!"
log "llgo is now available with LLGO_COMPILER_HASH=$compiler_hash"
