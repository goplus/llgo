//go:build llgo_pass_ctx_by_reg && (!darwin || !arm64) && !wasm
// +build llgo_pass_ctx_by_reg
// +build !darwin !arm64
// +build !wasm

package ffi

import "unsafe"

func clearICache(start unsafe.Pointer, size uintptr) {
	_ = start
	_ = size
}
