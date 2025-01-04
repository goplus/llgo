package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/os"
)

func main() {
	wd := os.Getcwd(c.Alloca(os.PATH_MAX), os.PATH_MAX)
	c.Printf(c.Str("cwd: %s\n"), wd)
}
