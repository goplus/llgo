//go:build linux

package runtime

import (
	c "github.com/goplus/llgo/runtime/internal/clite"
	cliteos "github.com/goplus/llgo/runtime/internal/clite/os"
	_ "unsafe"
)

// internal/runtime/syscall exposes Syscall6 as a declaration implemented in
// assembly upstream. We provide a runtime symbol for llgo so ABI0/1 can avoid
// patching that package while preserving the existing libc-based behavior.
//
//go:linkname internal_runtime_syscall6 internal/runtime/syscall.Syscall6
func internal_runtime_syscall6(num, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, errno uintptr) {
	r := c_syscall(c.Long(num), c.Long(a1), c.Long(a2), c.Long(a3), c.Long(a4), c.Long(a5), c.Long(a6))
	if r == -1 {
		return uintptr(r), 0, uintptr(cliteos.Errno())
	}
	return uintptr(r), 0, 0
}
