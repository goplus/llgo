//go:build !llgo_pass_ctx_by_reg
// +build !llgo_pass_ctx_by_reg

package reflect

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/ffi"
)

func callFunc(sig *ffi.Signature, fn unsafe.Pointer, env unsafe.Pointer, ret unsafe.Pointer, args []unsafe.Pointer) {
	ffi.Call(sig, fn, ret, args...)
}
