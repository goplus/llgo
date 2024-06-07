package main

import (
	"github.com/goplus/llgo/c/setjmp"
	"github.com/goplus/llgo/c/setjmp/demo"
)

func main() {
	var jb setjmp.SigjmpBuf
	switch ret := setjmp.Sigsetjmp(&jb, 0); ret {
	case 0:
		println("Hello, setjmp!")
		demo.ThrowCppException()
		setjmp.Siglongjmp(&jb, 1)
	default:
		println("exception:", ret)
	}
}
