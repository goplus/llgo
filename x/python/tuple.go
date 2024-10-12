package python

import (
	"github.com/goplus/llgo/py"
)

type Tuple struct {
	Object
}

func newTuple(obj *py.Object) Tuple {
	return Tuple{newObject(obj)}
}

func MakeTupleWithLen(len int) Tuple {
	return newTuple(py.NewTuple(len))
}

func MakeTuple(args ...any) Tuple {
	tuple := newTuple(py.NewTuple(len(args)))
	for i, arg := range args {
		obj := From(arg)
		tuple.Set(i, obj)
	}
	return tuple
}

func (t Tuple) Get(index int) Object {
	v := t.obj.TupleItem(index)
	v.IncRef()
	return newObject(v)
}

func (t Tuple) Set(index int, obj Objecter) {
	t.obj.TupleSetItem(index, obj.Obj())
}

func (t Tuple) Len() int {
	return t.obj.TupleLen()
}

func (t Tuple) Slice(low, high int) Tuple {
	return newTuple(t.obj.TupleSlice(low, high))
}
