//go:build nogc
// +build nogc

package python

import "github.com/goplus/llgo/py"

func NewObject(obj *py.Object) PyObject {
	return PyObject{&pyObject{obj: obj}}
}
