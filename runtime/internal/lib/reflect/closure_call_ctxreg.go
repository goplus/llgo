//go:build llgo_pass_ctx_by_reg
// +build llgo_pass_ctx_by_reg

package reflect

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/abi"
)

//go:linkname setClosurePtr llgo.setClosurePtr
func setClosurePtr(ptr unsafe.Pointer)

func closureCallInfo(v Value, ft *abi.FuncType, args []unsafe.Pointer) (unsafe.Pointer, []*abi.Type, []*abi.Type, int, []unsafe.Pointer) {
	c := (*closure)(v.ptr)
	setClosurePtr(c.env)
	return c.fn, ft.In, ft.Out, 0, args
}
