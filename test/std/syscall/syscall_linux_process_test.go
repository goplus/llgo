//go:build linux

package syscall_test

import (
	"syscall"
	"testing"
)

func TestLinuxGetrlimitNoFile(t *testing.T) {
	var lim syscall.Rlimit
	if err := syscall.Getrlimit(syscall.RLIMIT_NOFILE, &lim); err != nil {
		t.Fatalf("Getrlimit(RLIMIT_NOFILE): %v", err)
	}
	if lim.Cur == 0 || lim.Max == 0 {
		t.Fatalf("unexpected rlimit values: cur=%d max=%d", lim.Cur, lim.Max)
	}
}

func TestLinuxKillSignal0(t *testing.T) {
	if err := syscall.Kill(syscall.Getpid(), 0); err != nil {
		t.Fatalf("Kill(getpid, 0): %v", err)
	}
}
