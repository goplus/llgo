//go:build llgo && wasip1 && wasm && llgo.wasi_threads && !llgo.wasm.gc.linear

package sync

import (
	_ "unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
)

//go:linkname wasiWaitUint32 C.llgo_wasi_wait_uint32
func wasiWaitUint32(addr *uint32, value uint32) c.Int

// WaitUint32 atomically checks addr and waits while it contains value.
func WaitUint32(addr *uint32, value uint32) c.Int { return wasiWaitUint32(addr, value) }
