package python

import (
	"fmt"

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
	if mod == nil {
		py.ErrPrint()
		panic(fmt.Errorf("failed to import module %s", name))
	}
	return NewModule(mod)
}

func (m Module) ModuleGetDict() Dict {
	return NewDict(m.obj.ModuleGetDict())
}

func (m Module) Call(name string, args ...any) Object {
	fn := Cast[Func](m.GetAttrString(name))
	return fn.CallObject(MakeTuple(args...).Object)
}

func (m Module) AddObject(name string, obj Object) int {
	return int(py.ModuleAddObject(m.obj, c.AllocCStr(name), obj.obj))
}
