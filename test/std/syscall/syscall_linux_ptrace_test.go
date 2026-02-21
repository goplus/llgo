//go:build linux

package syscall_test

import (
	"syscall"
	"testing"
)

func TestLinuxPtraceRegsPCMethods(t *testing.T) {
	var r syscall.PtraceRegs
	const wantPC = uint64(0x1234ABCD)
	r.SetPC(wantPC)
	if got := r.PC(); got != wantPC {
		t.Fatalf("PtraceRegs.PC() = %#x, want %#x", got, wantPC)
	}
}
