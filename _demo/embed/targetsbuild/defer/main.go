package main

import (
	"github.com/goplus/lib/c"
	_ "github.com/goplus/llgo/_demo/embed/targetsbuild/C"
)

func main() {
	defer c.Printf(c.Str("defer 1\n"))
	defer c.Printf(c.Str("defer 2\n"))
	var counter int = 1

	if counter > 0 {
		defer c.Printf(c.Str("defer in if\n"))
	} else {
		defer c.Printf(c.Str("defer in else\n"))
	}

	// FIXME(zzy): When defer in loop captures variables (e.g., defer c.Printf(c.Str("%d\n"), i)),
	// panic exit will cause issues with preceding defer normal execution.
	// Without variable capture, it works correctly.
	for i := 0; i < 3; i++ {
		defer c.Printf(c.Str("defer in loop\n"))
	}
	panic("panic occured")
}
