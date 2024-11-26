#!/bin/bash
set -e

if pkg=$(brew list | grep -E "pkg-config"); then
    brew uninstall "$pkg" || true
fi
