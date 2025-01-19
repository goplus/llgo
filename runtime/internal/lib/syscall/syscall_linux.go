package syscall

/*
#include <stdint.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <errno.h>

static void raw_syscall(uintptr_t trap, uintptr_t a1, uintptr_t a2, uintptr_t a3, uintptr_t *r1, uintptr_t *r2) {
    long ret = syscall(trap, a1, a2, a3);
    *r1 = ret;
    *r2 = 0;  // syscall() only returns one value
}
*/
import "C"

//go:nosplit
func rawSyscallNoError(trap, a1, a2, a3 uintptr) (r1, r2 uintptr) {
	var r1out, r2out C.uintptr_t
	C.raw_syscall(C.uintptr_t(trap), C.uintptr_t(a1), C.uintptr_t(a2), C.uintptr_t(a3), &r1out, &r2out)
	return uintptr(r1out), uintptr(r2out)
}
