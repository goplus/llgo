package python

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/python/py"
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
	dict := newDict(py.DictNew())
	for i := 0; i < len(pairs); i += 2 {
		key := From(pairs[i])
		value := From(pairs[i+1])
		dict.Set(key, value)
	}
	return dict
}

func MakeDict(m map[any]any) Dict {
	dict := newDict(py.DictNew())
	for key, value := range m {
		keyObj := From(key)
		valueObj := From(value)
		dict.Set(keyObj, valueObj)
	}
	return dict
}

func (d Dict) Get(key Objecter) Object {
	v := py.DictGetItem(d.obj, key.Obj())
	py.IncRef(v)
	return newObject(v)
}

func (d Dict) Set(key, value Object) {
	py.IncRef(key.obj)
	py.IncRef(value.obj)
	py.DictSetItem(d.obj, key.obj, value.obj)
}

func (d Dict) SetString(key string, value Object) {
	py.IncRef(value.obj)
	py.DictSetItemString(d.obj, c.AllocCStr(key), value.obj)
}
