//go:build llgo_pass_ctx_by_reg && unix && !darwin && !wasm
// +build llgo_pass_ctx_by_reg,unix,!darwin,!wasm

package ffi

import sys "github.com/goplus/llgo/runtime/internal/clite/syscall"

func mmapFlags() int {
	return sys.MAP_PRIVATE | sys.MAP_ANON
}
