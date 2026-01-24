package llgosyscall

import _ "unsafe"

//go:linkname syscall llgo.syscall
func syscall(fn uintptr, args ...uintptr) (r1, r2, err uintptr)

func Use() uintptr {
	r1, _, _ := syscall(0, 1, 2, 3)
	return r1
}

func Use6() uintptr {
	r1, _, _ := syscall(0, 1, 2, 3, 4, 5, 6)
	return r1
}

func Use6X() uintptr {
	r1, _, _ := syscall(0, 1, 2, 3, 4, 5, 6)
	return r1
}

func UsePtr() uintptr {
	r1, _, _ := syscall(0, 1, 2, 3)
	return r1
}

func UseRaw() uintptr {
	r1, _, _ := syscall(0, 1, 2, 3)
	return r1
}

func UseRaw6() uintptr {
	r1, _, _ := syscall(0, 1, 2, 3, 4, 5, 6)
	return r1
}
