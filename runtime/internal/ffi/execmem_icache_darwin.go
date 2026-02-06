//go:build llgo_pass_ctx_by_reg && darwin && arm64 && !wasm
// +build llgo_pass_ctx_by_reg,darwin,arm64,!wasm

package ffi

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

//go:linkname c_sys_icache_invalidate C.sys_icache_invalidate
func c_sys_icache_invalidate(start unsafe.Pointer, size c.SizeT)

func clearICache(start unsafe.Pointer, size uintptr) {
	if start == nil || size == 0 {
		return
	}
	c_sys_icache_invalidate(start, c.SizeT(size))
}
