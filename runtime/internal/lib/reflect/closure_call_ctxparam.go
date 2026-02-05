//go:build !llgo_pass_ctx_by_reg
// +build !llgo_pass_ctx_by_reg

package reflect

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/abi"
)

func closureCallInfo(v Value, ft *abi.FuncType, args []unsafe.Pointer) (unsafe.Pointer, unsafe.Pointer, []*abi.Type, []*abi.Type, int, []unsafe.Pointer) {
	c := (*closure)(v.ptr)
	if c.env == nil {
		return c.fn, nil, ft.In, ft.Out, 0, args
	}
	tin := append([]*abi.Type{rtypeOf(unsafe.Pointer(nil))}, ft.In...)
	tout := ft.Out
	args = append(args, unsafe.Pointer(&c.env))
	return c.fn, c.env, tin, tout, 1, args
}
