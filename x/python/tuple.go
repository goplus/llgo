package python

import "github.com/goplus/llgo/py"

type Tuple struct {
	Object
}

func NewTuple(obj *py.Object) Tuple {
	return Tuple{NewObject(obj)}
}

func MakeTuple(args ...any) Tuple {
	tuple := NewTuple(py.NewTuple(len(args)))
	for i, arg := range args {
		obj := From(arg)
		tuple.Set(i, obj)
	}
	return tuple
}

func (t Tuple) Get(index int) Object {
	v := t.obj.TupleItem(index)
	v.IncRef()
	return NewObject(v)
}

func (t Tuple) Set(index int, obj Object) {
	t.obj.TupleSetItem(index, obj.obj)
}
