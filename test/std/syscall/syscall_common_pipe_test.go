//go:build unix

package syscall_test

import (
	"syscall"
	"testing"
)

func TestPipeReadWrite(t *testing.T) {
	fds := make([]int, 2)
	if err := syscall.Pipe(fds); err != nil {
		t.Fatalf("Pipe: %v", err)
	}
	defer func() {
		_ = syscall.Close(fds[0])
		_ = syscall.Close(fds[1])
	}()

	msg := []byte("llgo-syscall-pipe")
	n, err := syscall.Write(fds[1], msg)
	if err != nil {
		t.Fatalf("Write(pipe): %v", err)
	}
	if n != len(msg) {
		t.Fatalf("Write len = %d, want %d", n, len(msg))
	}

	buf := make([]byte, len(msg))
	n, err = syscall.Read(fds[0], buf)
	if err != nil {
		t.Fatalf("Read(pipe): %v", err)
	}
	if n != len(msg) {
		t.Fatalf("Read len = %d, want %d", n, len(msg))
	}
	if string(buf) != string(msg) {
		t.Fatalf("Read data = %q, want %q", string(buf), string(msg))
	}
}
