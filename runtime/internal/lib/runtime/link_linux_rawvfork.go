//go:build linux && !(arm64 && !go1.23)
// +build linux
// +build !arm64 go1.23

package runtime

import (
	c "github.com/goplus/llgo/runtime/internal/clite"
	cliteos "github.com/goplus/llgo/runtime/internal/clite/os"
	_ "unsafe"
)

//go:linkname syscall_rawVforkSyscall syscall.rawVforkSyscall
func syscall_rawVforkSyscall(trap, a1, a2, a3 uintptr) (r1 uintptr, err uintptr) {
	r := c_syscall(c.Long(trap), c.Long(a1), c.Long(a2), c.Long(a3))
	if r == -1 {
		return uintptr(r), uintptr(cliteos.Errno())
	}
	return uintptr(r), 0
}
