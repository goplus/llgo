package python

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

// ----------------------------------------------------------------------------

func SetProgramName(name string) {
	py.SetProgramName(c.AllocCStr(name))
}

func ErrPrint() {
	py.ErrPrint()
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

// ----------------------------------------------------------------------------

func EvalCode(code Object, globals, locals Dict) Object {
	return NewObject(py.EvalCode(code.Obj(), globals.Obj(), locals.Obj()))
}

func Cast[U, T PyObjecter](obj T) (ret U) {
	// TODO(lijie): avoid heap allocation
	rret := *(*U)(unsafe.Pointer(&obj))
	ret = rret
	return
}
