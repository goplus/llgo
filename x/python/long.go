package python

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

type Long struct {
	Object
}

func newLong(obj *py.Object) Long {
	return Long{newObject(obj)}
}

func MakeLong(i int64) Long {
	return newLong(py.Long(c.Long(i)))
}

func (l Long) Int64() int64 {
	return int64(l.obj.Long())
}

func (l Long) Uint64() uint64 {
	return uint64(l.obj.Ulong())
}

func (l Long) AsFloat64() float64 {
	return l.obj.LongAsFloat64()
}

func LongFromFloat64(v float64) Long {
	return newLong(py.LongFromFloat64(v))
}

func LongFromString(s string, base int) Long {
	cstr := c.AllocCStr(s)
	return newLong(py.LongFromCStr(cstr, nil, c.Int(base)))
}

func LongFromUnicode(u Object, base int) Long {
	return newLong(py.LongFromUnicode(u.Obj(), c.Int(base)))
}

func (l Long) AsUint64() uint64 {
	return uint64(l.obj.UlongLong())
}

func (l Long) AsUintptr() uintptr {
	return l.obj.Uintptr()
}

func LongFromUintptr(v uintptr) Long {
	return newLong(py.Uintptr(v))
}
