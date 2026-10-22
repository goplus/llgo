//go:build llgo && wasip1 && wasm && llgo.wasi_threads

package sync

import _ "unsafe"

const LLGoFiles = "_wrap/sync_wasi_threads.c"

//go:linkname wasiWakeUint32 C.llgo_wasi_wake_uint32
func wasiWakeUint32(addr *uint32)

// WakeUint32 wakes one thread waiting for addr.
func WakeUint32(addr *uint32) { wasiWakeUint32(addr) }
