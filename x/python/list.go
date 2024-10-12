package python

import "github.com/goplus/llgo/py"

type List struct {
	Object
}

func newList(obj *py.Object) List {
	return List{newObject(obj)}
}

func MakeList(args ...any) List {
	list := newList(py.NewList(len(args)))
	for i, arg := range args {
		obj := From(arg)
		list.SetItem(i, obj)
	}
	return list
}

func (l List) GetItem(index int) Object {
	v := l.obj.ListItem(index)
	v.IncRef()
	return newObject(v)
}

func (l List) SetItem(index int, item Object) {
	l.obj.ListSetItem(index, item.obj)
}

func (l List) Len() int {
	return l.obj.ListLen()
}

func (l List) Append(obj Object) {
	l.obj.ListAppend(obj.obj)
}
