//go:build baremetal || (wasm && (!wasip1 || !llgo.wasi_threads))

package runtime

// These backends do not use the pthread user-thread exit counter.
func markSystemGoroutine() {}
