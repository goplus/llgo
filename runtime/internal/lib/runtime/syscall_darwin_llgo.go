//go:build llgo && darwin

package runtime

import _ "unsafe"

//go:linkname llgo_syscall llgo.syscall
func llgo_syscall(fn, a1, a2, a3 uintptr) (r1, r2, err uintptr)

//go:linkname llgo_syscall6 llgo.syscall6
func llgo_syscall6(fn, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, err uintptr)

//go:linkname llgo_syscall6X llgo.syscall6X
func llgo_syscall6X(fn, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, err uintptr)

//go:linkname llgo_syscallPtr llgo.syscallPtr
func llgo_syscallPtr(fn, a1, a2, a3 uintptr) (r1, r2, err uintptr)

//go:linkname syscall_syscall syscall.syscall
func syscall_syscall(fn, a1, a2, a3 uintptr) (r1, r2, err uintptr) {
	return llgo_syscall(fn, a1, a2, a3)
}

//go:linkname syscall_syscall6 syscall.syscall6
func syscall_syscall6(fn, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, err uintptr) {
	return llgo_syscall6(fn, a1, a2, a3, a4, a5, a6)
}

//go:linkname syscall_syscall6X syscall.syscall6X
func syscall_syscall6X(fn, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, err uintptr) {
	return llgo_syscall6X(fn, a1, a2, a3, a4, a5, a6)
}

//go:linkname syscall_syscallPtr syscall.syscallPtr
func syscall_syscallPtr(fn, a1, a2, a3 uintptr) (r1, r2, err uintptr) {
	return llgo_syscallPtr(fn, a1, a2, a3)
}

//go:linkname syscall_syscall9 syscall.syscall9
func syscall_syscall9(fn, a1, a2, a3, a4, a5, a6, a7, a8, a9 uintptr) (r1, r2, err uintptr) {
	panic("syscall.syscall9 not implemented for llgo")
}
