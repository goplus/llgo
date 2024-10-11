package python

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

type Bytes struct {
	Object
}

func NewBytes(obj *py.Object) Bytes {
	return Bytes{NewObject(obj)}
}

func BytesFromStr(s string) Bytes {
	return NewBytes(py.BytesFromString(s))
}

func MakeBytes(bytes []byte) Bytes {
	ptr := *(**c.Char)(c.Pointer(&bytes))
	return NewBytes(py.BytesFromStringAndSize(ptr, uintptr(len(bytes))))
}

func (b Bytes) Bytes() []byte {
	var p *byte
	var l uintptr
	b.obj.BytesAsCStrAndSize((**c.Char)(c.Pointer(&p)), &l)
	return unsafe.Slice(p, l)
}

func (b Bytes) Decode(encoding string) Str {
	return Cast[Str](b.CallMethod("decode", MakeStr(encoding)))
}
