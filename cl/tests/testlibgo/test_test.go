//go:build !llgo
// +build !llgo

package testlibgo_test

import (
	"testing"

	"github.com/goplus/llgo/cl/cltest"
)

func TestFrom(t *testing.T) {
	cltest.FromDir(t, "", "./_testlibgo")
}

func TestRun(t *testing.T) {
	cltest.RunFromDir(t, "", "./_testlibgo", nil)
}
