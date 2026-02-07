//go:build !llgo
// +build !llgo

package testpy_test

import (
	"testing"

	"github.com/goplus/llgo/cl/cltest"
)

func TestFrom(t *testing.T) {
	cltest.FromDir(t, "", "./_testpy")
}

func TestRun(t *testing.T) {
	cltest.RunFromDir(t, "", "./_testpy", nil)
}
