//go:build !llgo
// +build !llgo

package testgo_test

import (
	"testing"

	"github.com/goplus/llgo/cl/cltest"
)

func TestFrom(t *testing.T) {
	cltest.FromDir(t, "", "../cl/_testgo")
}
