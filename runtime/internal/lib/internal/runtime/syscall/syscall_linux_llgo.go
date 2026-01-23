//go:build llgo && linux

package syscall

import (
	c "github.com/goplus/llgo/runtime/internal/clite"
	cliteos "github.com/goplus/llgo/runtime/internal/clite/os"
	_ "unsafe"
)

//go:linkname c_syscall C.syscall
func c_syscall(sysno c.Long, __llgo_va_list ...any) c.Long

// Syscall6 calls system call number 'num' with arguments a1-6.
func Syscall6(num, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, errno uintptr) {
	r := c_syscall(c.Long(num), c.Long(a1), c.Long(a2), c.Long(a3), c.Long(a4), c.Long(a5), c.Long(a6))
	if r == -1 {
		return uintptr(r), 0, uintptr(cliteos.Errno())
	}
	return uintptr(r), 0, 0
}
