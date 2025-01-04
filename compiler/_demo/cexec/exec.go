package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/os"
)

func main() {
	ls := c.Str("ls")
	os.Execlp(ls, ls, c.Str("-l"), nil)
}
