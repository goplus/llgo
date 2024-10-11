package python

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

// ----------------------------------------------------------------------------

func SetProgramName(name string) {
	py.SetProgramName(c.AllocCStr(name))
}

type InputType = py.InputType

const (
	SingleInput InputType = py.SingleInput
	FileInput   InputType = py.FileInput
	EvalInput   InputType = py.EvalInput
)

func CompileString(code, filename string, start InputType) Object {
	return NewObject(py.CompileString(c.AllocCStr(code), c.AllocCStr(filename), start))
}

func EvalCode(code Object, globals, locals Dict) Object {
	return NewObject(py.EvalCode(code.Obj(), globals.Obj(), locals.Obj()))
}

// ----------------------------------------------------------------------------

// llgo:link Cast llgo.staticCast
func Cast[U, T Objecter](obj T) (u U) {
	panic("implement by llgo instruction to avoid heap allocation")
}

// ----------------------------------------------------------------------------

func With[T Objecter](obj T, fn func(v T)) T {
	obj.object().Call("__enter__")
	defer obj.object().Call("__exit__")
	fn(obj)
	return obj
}
