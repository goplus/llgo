package python

import "github.com/goplus/llgo/py"

type Bytes struct {
	Object
}

func NewBytes(obj *py.Object) Bytes {
	return Bytes{NewObject(obj)}
}

func BytesFromStr(s string) Bytes {
	return NewBytes(py.BytesFromString(s))
}

func (b Bytes) Decode(encoding string) Str {
	return Cast[Str](b.CallMethod("decode", MakeStr(encoding)))
}
