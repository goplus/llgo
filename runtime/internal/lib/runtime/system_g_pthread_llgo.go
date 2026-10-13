//go:build !baremetal && (!wasm || (wasip1 && llgo.wasi_threads))

package runtime

import llruntime "github.com/xgo-dev/llgo/runtime/internal/runtime"

func markSystemGoroutine() { llruntime.MarkSystemGoroutine() }
