package main

import (
	"github.com/goplus/llgo/c/setjmp"
	"github.com/goplus/llgo/c/setjmp/trycatch"
)

func main() {
	var jb setjmp.SigjmpBuf
	switch ret := setjmp.Sigsetjmp(&jb, 0); ret {
	case 0:
		println("Hello, setjmp!")
		trycatch.ThrowCppException()
		setjmp.Siglongjmp(&jb, 1)
	default:
		println("exception:", ret)
	}
}
