package main

import (
	"github.com/goplus/llgo/_test/testing"
	"github.com/goplus/llgo/c"
)

func main() {
	tests := []func(*testing.T){
		TestMalloc,
		TestFinalizer,
	}
	if c.Argc == 1 {
		c.Printf(c.Str("%d"), len(tests))
		return
	}
	idx := int(c.Atoi(c.Index(c.Argv, 1)))
	if idx < 0 || idx >= len(tests) {
		c.Printf(c.Str("invalid test index %d"), idx)
		panic("invalid test index")
	}
	tests[idx](nil)
}
