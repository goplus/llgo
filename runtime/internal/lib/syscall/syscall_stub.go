//go:build darwin

package syscall

import (
	"unsafe"

	csys "github.com/goplus/llgo/runtime/internal/clite/syscall"
)

func errnoENOSYS() Errno {
	return Errno(csys.ENOSYS)
}

func Syscall(trap, a1, a2, a3 uintptr) (r1, r2 uintptr, err Errno) {
	return 0, 0, errnoENOSYS()
}

func Syscall6(trap, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2 uintptr, err Errno) {
	return 0, 0, errnoENOSYS()
}

func Syscall6X(trap, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2 uintptr, err Errno) {
	return Syscall6(trap, a1, a2, a3, a4, a5, a6)
}

func Syscall9(trap, a1, a2, a3, a4, a5, a6, a7, a8, a9 uintptr) (r1, r2 uintptr, err Errno) {
	return 0, 0, errnoENOSYS()
}

func SyscallPtr(trap, a1, a2, a3 uintptr) (r1, r2 uintptr, err Errno) {
	return Syscall(trap, a1, a2, a3)
}

func RawSyscall(trap, a1, a2, a3 uintptr) (r1, r2 uintptr, err Errno) {
	return Syscall(trap, a1, a2, a3)
}

func RawSyscall6(trap, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2 uintptr, err Errno) {
	return Syscall6(trap, a1, a2, a3, a4, a5, a6)
}

func RawSyscall6X(trap, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2 uintptr, err Errno) {
	return Syscall6(trap, a1, a2, a3, a4, a5, a6)
}

func RawSyscall9(trap, a1, a2, a3, a4, a5, a6, a7, a8, a9 uintptr) (r1, r2 uintptr, err Errno) {
	return Syscall9(trap, a1, a2, a3, a4, a5, a6, a7, a8, a9)
}

func SyscallN(trap uintptr, args ...uintptr) (r1, r2 uintptr, err Errno) {
	return 0, 0, errnoENOSYS()
}

func RawSyscallN(trap uintptr, args ...uintptr) (r1, r2 uintptr, err Errno) {
	return 0, 0, errnoENOSYS()
}

func PtracePtr(trap uintptr) unsafe.Pointer {
	return nil
}

func Getuid() int  { return 0 }
func Geteuid() int { return 0 }
func Getgid() int  { return 0 }
func Getegid() int { return 0 }
