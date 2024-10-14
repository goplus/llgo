package python

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/python/py"
)

type Bytes struct {
	Object
}

func newBytes(obj *py.Object) Bytes {
	return Bytes{newObject(obj)}
}

func BytesFromStr(s string) Bytes {
	return MakeBytes([]byte(s))
}

func MakeBytes(bytes []byte) Bytes {
	ptr := *(**c.Char)(c.Pointer(&bytes))
	return newBytes(py.BytesFromStringAndSize(ptr, len(bytes)))
}

func (b Bytes) Bytes() []byte {
	var p *byte
	var l int
	if py.BytesAsStringAndSize(b.obj, (**c.Char)(c.Pointer(&p)), &l) != 0 {
		panic("python.Bytes.Bytes: failed")
	}
	return unsafe.Slice(p, l)
}

func (b Bytes) Decode(encoding string) Str {
	return Cast[Str](b.CallMethod("decode", MakeStr(encoding)))
}
