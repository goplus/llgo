package python

import "github.com/goplus/llgo/x/python/py"

type List struct {
	Object
}

func newList(obj *py.Object) List {
	return List{newObject(obj)}
}

func MakeList(args ...any) List {
	list := newList(py.ListNew(len(args)))
	for i, arg := range args {
		obj := From(arg)
		list.SetItem(i, obj)
	}
	return list
}

func (l List) GetItem(index int) Object {
	v := py.ListGetItem(l.obj, index)
	py.IncRef(v)
	return newObject(v)
}

func (l List) SetItem(index int, item Object) {
	py.ListSetItem(l.obj, index, item.obj)
}

func (l List) Len() int {
	return py.ListSize(l.obj)
}

func (l List) Append(obj Object) {
	py.ListAppend(l.obj, obj.obj)
}
