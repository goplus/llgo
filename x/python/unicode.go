package python

import "C"
import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/python/py"
)

type Str struct {
	Object
}

func newStr(obj *py.Object) Str {
	return Str{newObject(obj)}
}

func MakeStr(s string) Str {
	return newStr(py.UnicodeFromStringAndSize(c.GoStringData(s), len(s)))
}

func (s Str) String() string {
	var l int
	buf := py.UnicodeAsUTF8AndSize(s.obj, &l)
	return GoStringN((*c.Char)(buf), l)
}

func (s Str) Len() int {
	var l int
	py.UnicodeAsUTF8AndSize(s.obj, &l)
	return l
}

func (s Str) Encode(encoding string) Bytes {
	return Cast[Bytes](s.CallMethod("encode", MakeStr(encoding)))
}
