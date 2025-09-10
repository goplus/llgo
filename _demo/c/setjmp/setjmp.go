package main

import (
	"github.com/goplus/lib/c/setjmp"
)

func main() {
	var jb setjmp.SigjmpBuf
	switch ret := setjmp.Sigsetjmp(&jb, 0); ret {
	case 0:
		println("Hello, setjmp!")
		setjmp.Siglongjmp(&jb, 1)
	default:
		println("exception:", ret)
	}
}
