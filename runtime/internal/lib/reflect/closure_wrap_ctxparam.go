//go:build !llgo_pass_ctx_by_reg
// +build !llgo_pass_ctx_by_reg

package reflect

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/ffi"
)

func wrapClosureForCall(sig *ffi.Signature, fn, env unsafe.Pointer) unsafe.Pointer {
	_ = sig
	_ = env
	return fn
}
