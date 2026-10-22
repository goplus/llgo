//go:build llgo && wasip1 && wasm && llgo.wasi_threads && llgo.wasm.gc.linear

package runtime

import llruntime "github.com/xgo-dev/llgo/runtime/internal/runtime"

// The initializer may allocate while other threads wait for its publication.
// Those waiters must acknowledge GC instead of keeping it blocked in C sleep.
func pollRuntimeTableWait() { llruntime.CooperativeSafepoint() }
