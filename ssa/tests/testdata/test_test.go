//go:build !llgo
// +build !llgo

package testdata_test

import (
	"testing"

	"github.com/goplus/llgo/cl/cltest"
)

func TestFrom(t *testing.T) {
	cltest.FromDir(t, "", "../cl/_testdata")
}
