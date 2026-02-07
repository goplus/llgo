//go:build !llgo
// +build !llgo

package testgo_test

import (
	"testing"

	"github.com/goplus/llgo/cl/cltest"
)

func TestFrom(t *testing.T) {
	cltest.FromDir(t, "", "./_testgo")
}

func TestRun(t *testing.T) {
	cltest.RunFromDir(t, "", "./_testgo", nil)
}
