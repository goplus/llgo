package python

import "github.com/goplus/llgo/py"

type List struct {
	Object
}

func NewList(obj *py.Object) List {
	return List{NewObject(obj)}
}

func (l List) GetItem(index int) Object {
	v := l.obj.ListItem(index)
	v.IncRef()
	return NewObject(v)
}

func (l List) SetItem(index int, item Object) {
	l.obj.ListSetItem(index, item.obj)
}

func (l List) Append(obj Object) {
	l.obj.ListAppend(obj.obj)
}
