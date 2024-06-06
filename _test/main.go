package main

import (
	"github.com/goplus/llgo/_test/testing"
	"github.com/goplus/llgo/c"
)

type TestCase struct {
	Name string
	F    func(*testing.T)
}

func main() {
	tests := []TestCase{
		{"TestMalloc", TestMalloc},
		{"TestFinalizer", TestFinalizer},
	}
	if c.Argc == 1 {
		for _, test := range tests {
			c.Printf(c.Str("%s\n"), c.AllocaCStr(test.Name))
		}
		return
	}
	c.Fprintf(c.Stderr, c.Str("arg: %s\n"), c.Index(c.Argv, 1))
	idx := int(c.Atoi(c.Index(c.Argv, 1)))
	if idx < 0 || idx >= len(tests) {
		c.Printf(c.Str("invalid test index %d"), idx)
		panic("invalid test index")
	}
	tests[idx].F(nil)
}
