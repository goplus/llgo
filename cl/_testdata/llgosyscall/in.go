package llgosyscall

import _ "unsafe"

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

func Use() uintptr {
	r1, _, _ := syscall(0, 1, 2, 3)
	return r1
}

func Use6() uintptr {
	r1, _, _ := syscall6(0, 1, 2, 3, 4, 5, 6)
	return r1
}

func Use6X() uintptr {
	r1, _, _ := syscall6X(0, 1, 2, 3, 4, 5, 6)
	return r1
}

func UsePtr() uintptr {
	r1, _, _ := syscallPtr(0, 1, 2, 3)
	return r1
}

func UseRaw() uintptr {
	r1, _, _ := rawSyscall(0, 1, 2, 3)
	return r1
}

func UseRaw6() uintptr {
	r1, _, _ := rawSyscall6(0, 1, 2, 3, 4, 5, 6)
	return r1
}
