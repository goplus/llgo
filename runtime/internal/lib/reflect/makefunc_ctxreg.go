//go:build llgo_pass_ctx_by_reg
// +build llgo_pass_ctx_by_reg

package reflect

import "github.com/goplus/llgo/runtime/internal/ffi"

func makeFuncSig(ftyp *funcType) (*ffi.Signature, error) {
	return toFFISig(ftyp.In, ftyp.Out)
}

func makeFuncArgIndex(i int) uintptr {
	return uintptr(i)
}
