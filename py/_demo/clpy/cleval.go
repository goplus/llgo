package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

func main() {
	py.Initialize()
	py.SetProgramName(*c.Argv)
	code := py.CompileString(c.Str(`print('Hello, World!')`), c.Str(`hello.py`), py.EvalInput)
	if code != nil {
		mod := py.ImportModule(c.Str("__main__"))
		gbl := mod.ModuleGetDict()

		result := py.EvalCode(code, gbl, nil)

		result.DecRef()
		mod.DecRef()
		code.DecRef()
	}
	py.Finalize()
}
