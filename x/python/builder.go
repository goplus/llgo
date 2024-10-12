package python

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

// ModuleBuilder helps to build Python modules
type ModuleBuilder struct {
	name    string
	doc     string
	methods []py.MethodDef
}

// NewModuleBuilder creates a new ModuleBuilder
func NewModuleBuilder(name, doc string) *ModuleBuilder {
	return &ModuleBuilder{
		name: name,
		doc:  doc,
	}
}

// AddMethod adds a method to the module
func (mb *ModuleBuilder) AddMethod(name string, fn c.Pointer, doc string) *ModuleBuilder {
	mb.methods = append(mb.methods, py.MethodDef{
		Name:  c.AllocCStr(name),
		Func:  fn,
		Flags: py.METH_VARARGS,
		Doc:   c.AllocCStr(doc),
	})
	return mb
}

// Build creates and returns a new Python module
func (mb *ModuleBuilder) Build() Module {
	// Add a null terminator to the methods slice
	mb.methods = append(mb.methods, py.MethodDef{})

	m := py.ModuleCreate2(&py.ModuleDef{
		Base:    py.PyModuleDef_HEAD_INIT(),
		Name:    c.AllocCStr(mb.name),
		Doc:     c.AllocCStr(mb.doc),
		Size:    -1,
		Methods: &mb.methods[0],
	}, 1013)

	if m == nil {
		panic("failed to create module")
	}

	return newModule(m)
}
