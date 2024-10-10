package python

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

type Long struct {
	Object
}

func NewLong(obj *py.Object) Long {
	return Long{NewObject(obj)}
}

func MakeLong(i int) Long {
	return NewLong(py.Long(c.Long(i)))
}

func (l Long) Int() int {
	return int(l.obj.Long())
}
