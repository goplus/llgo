package python

import (
	"fmt"
	"unsafe"

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

func Cast[U, T Objecter](obj T) (ret U) {
	if unsafe.Sizeof(obj) != unsafe.Sizeof(ret) {
		panic(fmt.Errorf("size mismatch: %T %d and %T %d", obj, unsafe.Sizeof(obj), ret, unsafe.Sizeof(ret)))
	}
	// TODO(lijie): avoid heap allocation
	rret := *(*U)(unsafe.Pointer(&obj))
	ret = rret
	return
}

// ----------------------------------------------------------------------------

func With[T Objecter](obj T, fn func(v T)) T {
	obj.object().Call("__enter__")
	defer obj.object().Call("__exit__")
	fn(obj)
	return obj
}
