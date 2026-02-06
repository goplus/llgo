//go:build llgo_pass_ctx_by_reg && (!unix || (!arm64 && !amd64))
// +build llgo_pass_ctx_by_reg
// +build !unix !arm64,!amd64

package ffi

import "unsafe"

func makeClosureStub(fn, env unsafe.Pointer, stackBytes uint32) unsafe.Pointer {
	_ = fn
	_ = env
	_ = stackBytes
	return nil
}
