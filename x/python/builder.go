package python

import (
	"fmt"

	"github.com/goplus/llgo/x/python/py"
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
func (mb *ModuleBuilder) AddMethod(name string, fn py.Pointer, doc string) *ModuleBuilder {
	mb.methods = append(mb.methods, py.MethodDef{
		Name:  AllocCStr(name),
		Func:  fn,
		Flags: py.METH_VARARGS,
		Doc:   AllocCStr(doc),
	})
	return mb
}

// Build creates and returns a new Python module
func (mb *ModuleBuilder) Build() Module {
	// Add a null terminator to the methods slice
	mb.methods = append(mb.methods, py.MethodDef{})
	def := &py.ModuleDef{
		Base:    py.PyModuleDef_HEAD_INIT(),
		Name:    AllocCStr(mb.name),
		Doc:     AllocCStr(mb.doc),
		Size:    -1,
		Methods: &mb.methods[0],
	}
	fmt.Printf("name: %s, doc: %s, size: %d\n", GoString(def.Name), GoString(def.Doc), def.Size)
	for _, m := range mb.methods {
		fmt.Printf("method: %s, doc: %s\n", GoString(m.Name), GoString(m.Doc))
	}

	m := py.ModuleCreate2(def, 1013)

	if m == nil {
		panic("failed to create module")
	}

	return newModule(m)
}
