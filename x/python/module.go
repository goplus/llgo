package python

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/python/py"
)

type Module struct {
	Object
}

func newModule(obj *py.Object) Module {
	return Module{newObject(obj)}
}

func ImportModule(name string) Module {
	mod := py.ImportImportModule(c.AllocaCStr(name))
	return newModule(mod)
}

func (m Module) Dict() Dict {
	return newDict(py.ModuleGetDict(m.obj))
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
	return newFunc(pyFn)
}
