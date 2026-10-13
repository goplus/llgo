//go:build windows && !nogc && !baremetal

package sync

import _ "github.com/xgo-dev/llgo/runtime/internal/clite/bdwgc"

const LLGoFiles = "_wrap/sync_windows_gc.c"
