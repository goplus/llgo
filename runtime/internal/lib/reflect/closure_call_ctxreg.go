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

func closureCallInfo(v Value, ft *abi.FuncType, args []unsafe.Pointer) (unsafe.Pointer, []*abi.Type, []*abi.Type, int, []unsafe.Pointer) {
	c := (*closure)(v.ptr)
	if fn, ok := ffi.WrapClosure(c.fn, c.env); ok {
		return fn, ft.In, ft.Out, 0, args
	}
	// Fallback: write ctx reg in Go and call the target directly.
	// This may be sufficient on targets where the C call path doesn't clobber
	// the ctx register.
	setClosurePtr(c.env)
	return c.fn, ft.In, ft.Out, 0, args
}
