package python

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/python/py"
)

type Long struct {
	Object
}

func newLong(obj *py.Object) Long {
	return Long{newObject(obj)}
}

func MakeLong(i int64) Long {
	return newLong(py.LongFromLongLong(c.LongLong(i)))
}

func (l Long) Int64() int64 {
	return int64(py.LongAsLongLong(l.obj))
}

func (l Long) Uint64() uint64 {
	return uint64(py.LongAsUnsignedLongLong(l.obj))
}

func (l Long) AsFloat64() float64 {
	return py.LongAsDouble(l.obj)
}

func LongFromFloat64(v float64) Long {
	return newLong(py.LongFromDouble(v))
}

func LongFromString(s string, base int) Long {
	cstr := c.AllocCStr(s)
	return newLong(py.LongFromString(cstr, nil, c.Int(base)))
}

func LongFromUnicode(u Object, base int) Long {
	return newLong(py.LongFromUnicodeObject(u.Obj(), c.Int(base)))
}

func (l Long) AsUint64() uint64 {
	return uint64(py.LongAsUnsignedLongLong(l.obj))
}

func (l Long) AsUintptr() uintptr {
	return uintptr(py.LongAsLong(l.obj))
}

func LongFromUintptr(v uintptr) Long {
	return newLong(py.LongFromLong(c.Long(v)))
}
