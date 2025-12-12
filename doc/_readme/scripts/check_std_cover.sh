#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
cd "${ROOT_DIR}"

module_path="$(go list -m)"

packages=()
while IFS= read -r pkg; do
  packages+=("${pkg}")
done < <(go list ./test/std/... | sort)

if [ "${#packages[@]}" -eq 0 ]; then
  echo "No stdlib test packages discovered under test/std" >&2
  exit 0
fi

args=()
for pkg in "${packages[@]}"; do
  rel_path="${pkg#${module_path}/}"
  if [[ "${rel_path}" != test/std/* ]]; then
    continue
  fi
  stdlib_pkg="${rel_path#test/std/}"
  args+=("-pkg" "${stdlib_pkg}")
done

printf '+ go run ./chore/check_std_symbols'
for arg in "${args[@]}"; do
  printf ' %q' "${arg}"
done
printf '\n'

go run ./chore/check_std_symbols "${args[@]}"
