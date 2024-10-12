package python

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

type Bytes struct {
	Object
}

func newBytes(obj *py.Object) Bytes {
	return Bytes{newObject(obj)}
}

func BytesFromStr(s string) Bytes {
	return newBytes(py.BytesFromString(s))
}

func MakeBytes(bytes []byte) Bytes {
	ptr := *(**c.Char)(c.Pointer(&bytes))
	return newBytes(py.BytesFromStringAndSize(ptr, uintptr(len(bytes))))
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
