//go:build llgo && linux

package syscall

// Syscall performs a system call.
func Syscall(trap, a1, a2, a3 uintptr) (r1, r2 uintptr, err Errno) {
	r1, r2, e := syscall(trap, a1, a2, a3)
	err = Errno(e)
	return
}

// Syscall6 performs a system call with 6 arguments.
func Syscall6(trap, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2 uintptr, err Errno) {
	r1, r2, e := syscall6(trap, a1, a2, a3, a4, a5, a6)
	err = Errno(e)
	return
}

// RawSyscall performs a system call without entering the scheduler.
func RawSyscall(trap, a1, a2, a3 uintptr) (r1, r2 uintptr, err Errno) {
	r1, r2, e := rawSyscall(trap, a1, a2, a3)
	err = Errno(e)
	return
}

// RawSyscall6 performs a system call with 6 arguments without entering the scheduler.
func RawSyscall6(trap, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2 uintptr, err Errno) {
	r1, r2, e := rawSyscall6(trap, a1, a2, a3, a4, a5, a6)
	err = Errno(e)
	return
}
