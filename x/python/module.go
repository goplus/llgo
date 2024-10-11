package python

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

type Module struct {
	Object
}

func NewModule(obj *py.Object) Module {
	return Module{NewObject(obj)}
}

func ImportModule(name string) Module {
	mod := py.ImportModule(c.AllocaCStr(name))
	return NewModule(mod)
}

func (m Module) ModuleGetDict() Dict {
	return NewDict(m.obj.ModuleGetDict())
}

func (m Module) AddObject(name string, obj Object) int {
	return int(py.ModuleAddObject(m.obj, c.AllocCStr(name), obj.obj))
}

func (m Module) AddFunction(name string, fn c.Pointer, doc string) Func {
	def := &py.MethodDef{
		Name:  c.AllocCStr(name),
		Func:  fn,
		Flags: py.METH_VARARGS,
		Doc:   c.AllocCStr(doc),
	}
	pyFn := def.NewMethod(nil, m.obj, nil)
	return NewFunc(pyFn)
}
