//go:build linux && (amd64 || arm64)

package runtime

import (
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	cliteos "github.com/goplus/llgo/runtime/internal/clite/os"
)

//go:linkname internal_runtime_syscall_Syscall6 internal/runtime/syscall.Syscall6
func internal_runtime_syscall_Syscall6(num, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, errno uintptr) {
	r := c_syscall(
		c.Long(num),
		c.Long(a1),
		c.Long(a2),
		c.Long(a3),
		c.Long(a4),
		c.Long(a5),
		c.Long(a6),
	)
	if r == -1 {
		return uintptr(r), 0, uintptr(cliteos.Errno())
	}
	return uintptr(r), 0, 0
}

//go:linkname runtime_internal_syscall_Syscall6 runtime/internal/syscall.Syscall6
func runtime_internal_syscall_Syscall6(num, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, errno uintptr) {
	return internal_runtime_syscall_Syscall6(num, a1, a2, a3, a4, a5, a6)
}
