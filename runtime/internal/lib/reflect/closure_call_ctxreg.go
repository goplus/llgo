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
	// This is only correct if the ctx register is preserved across the libffi
	// call path. If libffi clobbers the ctx register, this will misbehave.
	// This fallback is best-effort for targets without a ctx-reg stub.
	setClosurePtr(env)
	return fn
}
