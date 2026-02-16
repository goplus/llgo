//go:build unix

package syscall_test

import (
	"os"
	"runtime"
	"syscall"
	"testing"
)

func TestErrnoMethods(t *testing.T) {
	e := syscall.ENOENT
	if e.Error() == "" {
		t.Fatal("Errno.Error returned empty string")
	}
	if !e.Is(os.ErrNotExist) {
		t.Fatal("ENOENT should match os.ErrNotExist")
	}
	if e.Is(os.ErrPermission) {
		t.Fatal("ENOENT should not match os.ErrPermission")
	}
	if e.Timeout() {
		t.Fatal("ENOENT should not be timeout")
	}
	if e.Temporary() {
		t.Fatal("ENOENT should not be temporary")
	}
}

func TestSignalMethods(t *testing.T) {
	s := syscall.SIGTERM
	s.Signal()
	if s.String() == "" {
		t.Fatal("Signal.String returned empty string")
	}
}

func TestTimespecAndTimevalMethods(t *testing.T) {
	const nsTS = int64(1_234_567_891)
	ts := syscall.NsecToTimespec(nsTS)
	if got := ts.Nano(); got != nsTS {
		t.Fatalf("Timespec.Nano() = %d, want %d", got, nsTS)
	}
	sec, nsec := ts.Unix()
	if sec != 1 || nsec != 234_567_891 {
		t.Fatalf("Timespec.Unix() = (%d,%d), want (1,234567891)", sec, nsec)
	}

	const nsTV = int64(2_234_567_000)
	tv := syscall.NsecToTimeval(nsTV)
	if got := tv.Nano(); got != nsTV {
		t.Fatalf("Timeval.Nano() = %d, want %d", got, nsTV)
	}
	sec, nsec = tv.Unix()
	if sec != 2 || nsec != 234_567_000 {
		t.Fatalf("Timeval.Unix() = (%d,%d), want (2,234567000)", sec, nsec)
	}
}

func TestSetLenMethods(t *testing.T) {
	var c syscall.Cmsghdr
	c.SetLen(64)
	if got := uint64(c.Len); got != 64 {
		t.Fatalf("Cmsghdr.SetLen did not set Len, got %d", got)
	}

	var buf [8]byte
	iov := syscall.Iovec{Base: &buf[0]}
	iov.SetLen(7)
	if got := uint64(iov.Len); got != 7 {
		t.Fatalf("Iovec.SetLen did not set Len, got %d", got)
	}

	var m syscall.Msghdr
	m.SetControllen(128)
	if got := uint64(m.Controllen); got != 128 {
		t.Fatalf("Msghdr.SetControllen did not set Controllen, got %d", got)
	}
}

func TestWaitStatusMethods(t *testing.T) {
	exited := syscall.WaitStatus(7 << 8)
	if !exited.Exited() || exited.ExitStatus() != 7 {
		t.Fatalf("exit status decode failed: Exited=%v ExitStatus=%d", exited.Exited(), exited.ExitStatus())
	}
	if exited.Signaled() {
		t.Fatal("exited status should not be signaled")
	}

	signaled := syscall.WaitStatus(syscall.SIGTERM)
	if !signaled.Signaled() {
		t.Fatal("signaled status should report Signaled()")
	}
	if signaled.Signal() != syscall.SIGTERM {
		t.Fatalf("Signal() = %v, want %v", signaled.Signal(), syscall.SIGTERM)
	}

	coredump := syscall.WaitStatus(syscall.SIGABRT | 0x80)
	if !coredump.CoreDump() {
		t.Fatal("core bit status should report CoreDump()")
	}

	switch runtime.GOOS {
	case "linux":
		stopped := syscall.WaitStatus(0x7F | (uint32(syscall.SIGSTOP) << 8))
		if !stopped.Stopped() {
			t.Fatal("linux stop status should report Stopped()")
		}
		if stopped.StopSignal() != syscall.SIGSTOP {
			t.Fatalf("StopSignal() = %v, want %v", stopped.StopSignal(), syscall.SIGSTOP)
		}
		if stopped.Continued() {
			t.Fatal("linux stop status should not report Continued()")
		}

		continued := syscall.WaitStatus(0xFFFF)
		if !continued.Continued() {
			t.Fatal("linux continued status should report Continued()")
		}

		trap := syscall.WaitStatus(0x7F | (uint32(syscall.SIGTRAP) << 8) | (2 << 16))
		if trap.TrapCause() != 2 {
			t.Fatalf("TrapCause() = %d, want 2", trap.TrapCause())
		}
	case "darwin":
		continued := syscall.WaitStatus(0x7F | (uint32(syscall.SIGSTOP) << 8))
		if !continued.Continued() {
			t.Fatal("darwin continued status should report Continued()")
		}
		if continued.Stopped() {
			t.Fatal("darwin continued status should not report Stopped()")
		}
		if continued.StopSignal() != -1 {
			t.Fatalf("StopSignal() = %v, want -1", continued.StopSignal())
		}
		if continued.TrapCause() != -1 {
			t.Fatalf("TrapCause() = %d, want -1", continued.TrapCause())
		}
	}
}
