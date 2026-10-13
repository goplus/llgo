//go:build !windows && (darwin || nogc || baremetal || wasm) && (!llgo || !wasip1 || !wasm || !llgo.wasi_threads || !llgo.wasm.gc.linear)

package sync

import c "github.com/xgo-dev/llgo/runtime/internal/clite"

// Darwin keeps waiting threads active in BDWGC: its inactive-stack bounds
// can omit saved registers holding live Go roots (see issue #2780).
func condWait(cond *Cond, mutex *Mutex) c.Int {
	return pthreadCondWait(cond, mutex)
}
