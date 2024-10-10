package python

import "github.com/goplus/llgo/py"

type Dict struct {
	Object
}

func NewDict(obj *py.Object) Dict {
	return Dict{NewObject(obj)}
}

func DictFromPairs(pairs ...any) Dict {
	if len(pairs)%2 != 0 {
		panic("DictFromPairs requires an even number of arguments")
	}
	dict := NewDict(py.NewDict())
	for i := 0; i < len(pairs); i += 2 {
		key := From(pairs[i])
		value := From(pairs[i+1])
		dict.SetItem(key, value)
	}
	return dict
}

func MakeDict(m map[any]any) Dict {
	dict := NewDict(py.NewDict())
	for key, value := range m {
		keyObj := From(key)
		valueObj := From(value)
		dict.SetItem(keyObj, valueObj)
	}
	return dict
}

func (d Dict) GetItem(key PyObjecter) Object {
	v := d.obj.DictGetItem(key.Obj())
	v.IncRef()
	return NewObject(v)
}

func (d Dict) SetItem(key, value Object) {
	d.obj.DictSetItem(key.obj, value.obj)
}
