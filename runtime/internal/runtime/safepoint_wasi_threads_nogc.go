//go:build llgo && wasip1 && wasm && llgo.wasi_threads && !llgo.wasm.gc.linear

package runtime

// CooperativeSafepoint is a no-op when the WASI pthread build disables GC.
func CooperativeSafepoint() {}
