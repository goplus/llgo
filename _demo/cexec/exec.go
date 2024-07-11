package main

import (
	"runtime"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/os"
)

func main() {
	ls := c.Str("ls")
	args := []*c.Char{ls, c.Str("-l"), nil}
	if runtime.GOOS == "windows" {
		ls = c.Str("dir")
		args = []*c.Char{ls, nil}
	}

	os.Execvp(ls, unsafe.SliceData(args))
}
