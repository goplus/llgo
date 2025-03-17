//go:build llgo
// +build llgo

package test

import (
	"testing"

	"github.com/goplus/llgo/c"
)

func foo() string {
	return "foo"
}

func TestCstr(t *testing.T) {
	cstr := c.Str(foo())
	if cstr == nil {
		t.Fatal("cstr() returned nil")
	}
	if c.Strlen(cstr) != 3 {
		t.Fatal("cstr() returned invalid length")
	}
	if c.Strcmp(c.Str("foo"), cstr) != 0 {
		t.Fatal("cstr() returned invalid string")
	}
}
