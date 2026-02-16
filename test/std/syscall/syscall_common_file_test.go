//go:build unix

package syscall_test

import (
	"os"
	"path/filepath"
	"syscall"
	"testing"
)

func TestOpenSeekReadWrite(t *testing.T) {
	dir := t.TempDir()
	path := filepath.Join(dir, "x.txt")

	fd, err := syscall.Open(path, syscall.O_CREAT|syscall.O_RDWR|syscall.O_TRUNC, 0o644)
	if err != nil {
		t.Fatalf("Open: %v", err)
	}
	defer func() { _ = syscall.Close(fd) }()

	payload := []byte("hello-syscall")
	n, err := syscall.Write(fd, payload)
	if err != nil {
		t.Fatalf("Write(file): %v", err)
	}
	if n != len(payload) {
		t.Fatalf("Write len = %d, want %d", n, len(payload))
	}

	off, err := syscall.Seek(fd, 0, 0)
	if err != nil {
		t.Fatalf("Seek: %v", err)
	}
	if off != 0 {
		t.Fatalf("Seek off = %d, want 0", off)
	}

	buf := make([]byte, len(payload))
	n, err = syscall.Read(fd, buf)
	if err != nil {
		t.Fatalf("Read(file): %v", err)
	}
	if n != len(payload) {
		t.Fatalf("Read len = %d, want %d", n, len(payload))
	}
	if string(buf) != string(payload) {
		t.Fatalf("Read data = %q, want %q", string(buf), string(payload))
	}

	st, err := os.Stat(path)
	if err != nil {
		t.Fatalf("os.Stat: %v", err)
	}
	if st.Size() != int64(len(payload)) {
		t.Fatalf("size = %d, want %d", st.Size(), len(payload))
	}
}
