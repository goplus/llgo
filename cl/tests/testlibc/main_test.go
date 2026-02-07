//go:build !llgo
// +build !llgo

package testlibc_test

import (
	"os"
	"path/filepath"
	"runtime"
	"testing"
)

func TestMain(m *testing.M) {
	_, file, _, ok := runtime.Caller(0)
	if !ok {
		panic("runtime.Caller failed")
	}
	clDir := filepath.Clean(filepath.Join(filepath.Dir(file), "..", ".."))
	if err := os.Chdir(clDir); err != nil {
		panic(err)
	}
	os.Exit(m.Run())
}
