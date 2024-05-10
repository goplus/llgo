package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

func main() {
	py.Initialize()
	py.SetProgramName(*c.Argv)
	py.RunSimpleString(c.Str(`print('Hello, World!')`))
	py.Finalize()
}
