//go:build !llgo
// +build !llgo

package testlibc_test

import (
	"runtime"
	"testing"

	"github.com/goplus/llgo/cl/cltest"
)

func TestFrom(t *testing.T) {
	cltest.FromDir(t, "", "./_testlibc")
}

func TestRun(t *testing.T) {
	var ignore []string
	if runtime.GOOS == "linux" {
		ignore = []string{
			"./_testlibc/demangle", // Linux demangle symbol differs (itaniumDemangle linkage mismatch).
		}
	}
	cltest.RunFromDir(t, "", "./_testlibc", ignore)
}
