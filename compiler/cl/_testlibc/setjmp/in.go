package main

import (
	"github.com/goplus/llgo/c"
)

func main() {
	jb := c.AllocaSigjmpBuf()
	switch ret := c.Sigsetjmp(jb, 0); ret {
	case 0:
		cstr := c.Str("??Hello, setjmp!\n")
		c.Fprintf(c.Stderr, c.Str("%s"), c.Advance(c.Pointer(c.Advance(cstr, 1)), 1))
		c.Siglongjmp(jb, 1)
	default:
		println("exception:", ret)
	}
}
