package python

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

type Dict struct {
	Object
}

func newDict(obj *py.Object) Dict {
	return Dict{newObject(obj)}
}

func DictFromPairs(pairs ...any) Dict {
	if len(pairs)%2 != 0 {
		panic("DictFromPairs requires an even number of arguments")
	}
	dict := newDict(py.NewDict())
	for i := 0; i < len(pairs); i += 2 {
		key := From(pairs[i])
		value := From(pairs[i+1])
		dict.Set(key, value)
	}
	return dict
}

func MakeDict(m map[any]any) Dict {
	dict := newDict(py.NewDict())
	for key, value := range m {
		keyObj := From(key)
		valueObj := From(value)
		dict.Set(keyObj, valueObj)
	}
	return dict
}

func (d Dict) Get(key Objecter) Object {
	v := d.obj.DictGetItem(key.Obj())
	v.IncRef()
	return newObject(v)
}

func (d Dict) Set(key, value Object) {
	key.obj.IncRef()
	value.obj.IncRef()
	d.obj.DictSetItem(key.obj, value.obj)
}

func (d Dict) SetString(key string, value Object) {
	value.obj.IncRef()
	d.obj.DictSetItemString(c.AllocCStr(key), value.obj)
}
