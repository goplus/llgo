package python

import (
	"github.com/goplus/llgo/x/python/py"
)

type Tuple struct {
	Object
}

func newTuple(obj *py.Object) Tuple {
	return Tuple{newObject(obj)}
}

func MakeTupleWithLen(len int) Tuple {
	return newTuple(py.TupleNew(len))
}

func MakeTuple(args ...any) Tuple {
	tuple := newTuple(py.TupleNew(len(args)))
	for i, arg := range args {
		obj := From(arg)
		tuple.Set(i, obj)
	}
	return tuple
}

func (t Tuple) Get(index int) Object {
	v := py.TupleGetItem(t.obj, index)
	py.IncRef(v)
	return newObject(v)
}

func (t Tuple) Set(index int, obj Objecter) {
	py.TupleSetItem(t.obj, index, obj.Obj())
}

func (t Tuple) Len() int {
	return py.TupleSize(t.obj)
}

func (t Tuple) Slice(low, high int) Tuple {
	return newTuple(py.TupleGetSlice(t.obj, low, high))
}
