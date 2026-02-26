package main

import (
	"errors"
	"fmt"
	"os"
	"path/filepath"
	"runtime"
	"syscall"
)

// Regression test for syscall.Open failure path.
// On existing file + O_EXCL, open must return fd=-1 and err=EEXIST.
func main() {
	path := filepath.Join(os.TempDir(), fmt.Sprintf("sysopen-1654-%d.tmp", os.Getpid()))
	if err := os.WriteFile(path, []byte("x"), 0o600); err != nil {
		panic(fmt.Sprintf("prepare temp file failed: %v", err))
	}
	defer os.Remove(path)

	fd, err := syscall.Open(path, syscall.O_CREAT|syscall.O_EXCL|syscall.O_RDWR, 0o600)
	if err == nil {
		panic(fmt.Sprintf("unexpected nil error: fd=%d uintptr=%#x on %s/%s", fd, uintptr(fd), runtime.GOOS, runtime.GOARCH))
	}
	if fd != -1 {
		panic(fmt.Sprintf("unexpected fd on failure: fd=%d uintptr=%#x err=%v on %s/%s", fd, uintptr(fd), err, runtime.GOOS, runtime.GOARCH))
	}
	if !errors.Is(err, syscall.EEXIST) {
		panic(fmt.Sprintf("unexpected error: got=%v want=%v", err, syscall.EEXIST))
	}

	fmt.Println("ok")
}
