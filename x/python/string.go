package python

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

type Str struct {
	Object
}

func newStr(obj *py.Object) Str {
	return Str{newObject(obj)}
}

func MakeStr(s string) Str {
	return newStr(py.FromGoString(s))
}

func (s Str) String() string {
	var l uintptr
	buf := s.obj.CStrAndLen(&l)
	return c.GoString(buf, l)
}

func (s Str) Len() int {
	var l uintptr
	s.obj.CStrAndLen(&l)
	return int(l)
}

func (s Str) Encode(encoding string) Bytes {
	return Cast[Bytes](s.CallMethod("encode", MakeStr(encoding)))
}
