//go:build llgo_pass_ctx_by_reg && darwin && !wasm
// +build llgo_pass_ctx_by_reg,darwin,!wasm

package ffi

import sys "github.com/goplus/llgo/runtime/internal/clite/syscall"

func mmapFlags() int {
	// MAP_JIT is required on some hardened setups, and is harmless otherwise.
	return sys.MAP_PRIVATE | sys.MAP_ANON | sys.MAP_JIT
}
