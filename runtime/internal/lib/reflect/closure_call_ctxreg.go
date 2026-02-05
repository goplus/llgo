//go:build llgo_pass_ctx_by_reg
// +build llgo_pass_ctx_by_reg

package reflect

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/abi"
)

func closureCallInfo(v Value, ft *abi.FuncType, args []unsafe.Pointer) (unsafe.Pointer, unsafe.Pointer, []*abi.Type, []*abi.Type, int, []unsafe.Pointer) {
	c := (*closure)(v.ptr)
	return c.fn, c.env, ft.In, ft.Out, 0, args
}
