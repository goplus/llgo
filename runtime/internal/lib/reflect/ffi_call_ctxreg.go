//go:build llgo_pass_ctx_by_reg
// +build llgo_pass_ctx_by_reg

package reflect

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/ffi"
)

//go:linkname closureCall C.llgo_ffi_call_closure
func closureCall(cif *ffi.Signature, fn unsafe.Pointer, env unsafe.Pointer, ret unsafe.Pointer, avalue *unsafe.Pointer)

func callFunc(sig *ffi.Signature, fn unsafe.Pointer, env unsafe.Pointer, ret unsafe.Pointer, args []unsafe.Pointer) {
	if env == nil {
		ffi.Call(sig, fn, ret, args...)
		return
	}
	var avalues *unsafe.Pointer
	if len(args) > 0 {
		avalues = &args[0]
	}
	closureCall(sig, fn, env, ret, avalues)
}
