//go:build unix

package syscall_test

import (
	"syscall"
	"testing"
)

func TestBasicIDs(t *testing.T) {
	if syscall.Getpid() <= 0 {
		t.Fatalf("Getpid = %d", syscall.Getpid())
	}
	if syscall.Getppid() <= 0 {
		t.Fatalf("Getppid = %d", syscall.Getppid())
	}
	if syscall.Getuid() < 0 || syscall.Geteuid() < 0 || syscall.Getgid() < 0 || syscall.Getegid() < 0 {
		t.Fatalf("invalid ids uid=%d euid=%d gid=%d egid=%d", syscall.Getuid(), syscall.Geteuid(), syscall.Getgid(), syscall.Getegid())
	}
}
