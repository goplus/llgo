//go:build !nogc
// +build !nogc

package python

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/bdwgc"
	"github.com/goplus/llgo/py"
)

func NewObject(obj *py.Object) PyObject {
	p := PyObject{&pyObject{obj: obj}}
	bdwgc.RegisterFinalizer(c.Pointer(p.pyObject), func(p c.Pointer, cd c.Pointer) {
		obj := (*pyObject)(p)
		obj.obj.DecRef()
	}, nil, nil, nil)
	return p
}
