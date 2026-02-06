//go:build llgo_pass_ctx_by_reg
// +build llgo_pass_ctx_by_reg

package reflect

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/abi"
	"github.com/goplus/llgo/runtime/internal/ffi"
)

//go:linkname setClosurePtr llgo.setClosurePtr
func setClosurePtr(ptr unsafe.Pointer)

func closureCallInfo(v Value, ft *abi.FuncType, args []unsafe.Pointer) (unsafe.Pointer, unsafe.Pointer, []*abi.Type, []*abi.Type, int, []unsafe.Pointer) {
	c := (*closure)(v.ptr)
	return c.fn, c.env, ft.In, ft.Out, 0, args
}

func wrapClosureForCall(sig *ffi.Signature, fn, env unsafe.Pointer) unsafe.Pointer {
	if env == nil {
		return fn
	}
	if fn2, ok := ffi.WrapClosure(fn, env, uint32(sig.Bytes)); ok {
		return fn2
	}
	// Fallback: write ctx reg in Go and call the target directly.
	// This may be sufficient on targets where the C call path doesn't clobber
	// the ctx register.
	setClosurePtr(env)
	return fn
}
