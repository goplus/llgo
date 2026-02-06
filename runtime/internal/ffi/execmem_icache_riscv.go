//go:build llgo_pass_ctx_by_reg && unix && (riscv64 || riscv32) && !wasm
// +build llgo_pass_ctx_by_reg
// +build unix
// +build riscv64 riscv32
// +build !wasm

package ffi

import (
	"unsafe"
)

// __clear_cache is provided by compiler-rt/libgcc and is the backing
// implementation for __builtin___clear_cache on many targets.
//
//go:linkname c___clear_cache __clear_cache
func c___clear_cache(start unsafe.Pointer, end unsafe.Pointer)

func clearICache(start unsafe.Pointer, size uintptr) {
	if start == nil || size == 0 {
		return
	}
	c___clear_cache(start, unsafe.Add(start, size))
}
