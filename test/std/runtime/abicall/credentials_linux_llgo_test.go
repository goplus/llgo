//go:build llgo && linux && !wasm && !baremetal

package abicall

import (
	"os"
	"syscall"
	"testing"
	"unsafe"
)

//go:linkname cgocaller syscall.cgocaller
func cgocaller(unsafe.Pointer, ...uintptr) uintptr

func TestLibcCredentialWrappers(t *testing.T) {
	uid, gid := os.Getuid(), os.Getgid()
	for _, err := range []error{
		syscall.Setuid(uid), syscall.Seteuid(os.Geteuid()),
		syscall.Setgid(gid), syscall.Setegid(os.Getegid()),
		syscall.Setreuid(-1, -1), syscall.Setregid(-1, -1),
		syscall.Setresuid(-1, -1, -1), syscall.Setresgid(-1, -1, -1),
	} {
		if err != nil {
			t.Fatal(err)
		}
	}
	if err := syscall.Setuid(-1); err != syscall.EINVAL {
		t.Fatalf("Setuid(-1)=%v", err)
	}
	groups, err := syscall.Getgroups()
	if err != nil {
		t.Fatal(err)
	}
	if err := syscall.Setgroups(groups); err != nil && err != syscall.EPERM {
		t.Fatal(err)
	}
	if got := cgocaller(nil); got != uintptr(syscall.ENOTSUP) {
		t.Fatalf("nil cgocaller=%d", got)
	}
}

func TestAllThreadsBuildModeBoundary(t *testing.T) {
	r1, _, err := syscall.AllThreadsSyscall(syscall.SYS_GETPID, 0, 0, 0)
	if !standalone() {
		if err != syscall.ENOTSUP {
			t.Fatalf("C library all-thread call=%d,%v", r1, err)
		}
		return
	}
	// Parallel GC marker threads and emulator helper threads are foreign;
	// they must be rejected. The C protocol test exercises a complete cohort.
	if err != 0 && err != syscall.ENOTSUP && err != syscall.EAGAIN {
		t.Fatal(err)
	}
	if err == 0 && r1 != uintptr(os.Getpid()) {
		t.Fatalf("pid=%d", r1)
	}
}
