package python

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

type Str struct {
	Object
}

func NewStr(obj *py.Object) Str {
	return Str{NewObject(obj)}
}

func MakeStr(s string) Str {
	return NewStr(py.FromGoString(s))
}

func (s Str) String() string {
	buf, n := s.obj.CStrAndLen()
	return c.GoString(buf, n)
}
