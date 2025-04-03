package main

import (
	"github.com/goplus/lib/c"
	"github.com/goplus/lib/c/os"
)

func main() {
	ls := c.Str("ls")
	os.Execlp(ls, ls, c.Str("-l"), nil)
}
