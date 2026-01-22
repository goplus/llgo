//go:build llgo && darwin

package syscall

import _ "unsafe"

// Intrinsic declarations for llgo.

//go:linkname syscall llgo.syscall
func syscall(fn, a1, a2, a3 uintptr) (r1, r2, err uintptr)

//go:linkname syscall6 llgo.syscall6
func syscall6(fn, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, err uintptr)

//go:linkname syscall6X llgo.syscall6X
func syscall6X(fn, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, err uintptr)

//go:linkname syscallPtr llgo.syscallPtr
func syscallPtr(fn, a1, a2, a3 uintptr) (r1, r2, err uintptr)

//go:linkname rawSyscall llgo.rawSyscall
func rawSyscall(fn, a1, a2, a3 uintptr) (r1, r2, err uintptr)

//go:linkname rawSyscall6 llgo.rawSyscall6
func rawSyscall6(fn, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, err uintptr)

// syscallX is like syscall but expects a 64-bit result.
//go:linkname syscallX llgo.syscall
func syscallX(fn, a1, a2, a3 uintptr) (r1, r2, err uintptr)
