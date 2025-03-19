//go:build llgo
// +build llgo

package test

import (
	"testing"

	"github.com/goplus/llgo/c"
)

// Can't put it in c/ package because it is marked as 'decl'
func TestCstr(t *testing.T) {
	cstr := c.Str("foo")
	if cstr == nil {
		t.Fatal("cstr() returned nil")
	}
	if c.Strlen(cstr) != 3 {
		t.Fatal("cstr() returned invalid length")
	}
}
