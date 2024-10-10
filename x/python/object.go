package python

import (
	"fmt"
	"reflect"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/internal/runtime"
	"github.com/goplus/llgo/py"
)

// pyObject is a wrapper type that holds a Python Object and automatically calls
// the Python Object's DecRef method during garbage collection.
type pyObject struct {
	obj *py.Object
}

func (obj *pyObject) Obj() *py.Object {
	if obj == nil {
		return nil
	}
	return obj.obj
}

func (obj *pyObject) Nil() bool {
	return obj == nil
}

// ----------------------------------------------------------------------------

func (obj Object) GetAttrString(name string) Object {
	return NewObject(obj.obj.GetAttrString(c.AllocCStr(name)))
}

func (obj Object) GetFuncAttr(name string) Func {
	return NewFunc(obj.obj.GetAttrString(c.AllocCStr(name)))
}

func (obj Object) GetBoolAttr(name string) Bool {
	return NewBool(obj.obj.GetAttrString(c.AllocCStr(name)))
}

func (obj Object) GetFloatAttr(name string) Float {
	return NewFloat(obj.obj.GetAttrString(c.AllocCStr(name)))
}

func (obj Object) GetDictAttr(name string) Dict {
	return NewDict(obj.obj.GetAttrString(c.AllocCStr(name)))
}

type Object struct {
	*pyObject
}

func finalizerCallback(p *pyObject) {
	p.obj.DecRef()
}

func NewObject(obj *py.Object) Object {
	p := Object{&pyObject{obj: obj}}
	f := finalizerCallback
	fn := *(**c.Pointer)(c.Pointer(&f))
	runtime.SetFinalizer(p.pyObject, fn)
	return p
}

func (obj Object) Obj() *py.Object {
	return obj.pyObject.obj
}

// fake method
func (obj Object) pyObj() *pyObject {
	return obj.pyObject
}

// fake method
func (obj Object) setPyObj(p *pyObject) {

}

func fromMap(m reflect.Value) Dict {
	dict := NewDict(py.NewDict())
	iter := m.MapRange()
	for iter.Next() {
		key := iter.Key()
		value := iter.Value()
		obj := From(value)
		keyObj := From(key)
		dict.SetItem(keyObj, obj)
	}
	return dict
}

func fromSlice(s reflect.Value) List {
	list := NewList(py.NewList(s.Len()))
	for i := 0; i < s.Len(); i++ {
		obj := From(s.Index(i))
		list.Append(obj)
	}
	return list
}

func From(v any) Object {
	switch v := v.(type) {
	case PyObjecter:
		return NewObject(v.Obj())
	case int8:
		return NewObject(py.Long(c.Long(v)))
	case int16:
		return NewObject(py.Long(c.Long(v)))
	case int32:
		return NewObject(py.Long(c.Long(v)))
	case int64:
		return NewObject(py.Long(c.Long(v)))
	case int:
		return NewObject(py.Long(c.Long(v)))
	case uint8:
		return NewObject(py.Long(c.Long(v)))
	case uint16:
		return NewObject(py.Long(c.Long(v)))
	case uint32:
		return NewObject(py.Long(c.Long(v)))
	case uint64:
		return NewObject(py.Long(c.Long(v)))
	case uint:
		return NewObject(py.Long(c.Long(v)))
	case float64:
		return NewObject(py.Float(v))
	case string:
		return NewObject(py.FromGoString(v))
	case bool:
		if v {
			return NewObject(py.True())
		} else {
			return NewObject(py.False())
		}
	default:
		vv := reflect.ValueOf(v)
		switch vv.Kind() {
		// case reflect.Map:
		// 	return fromMap(vv).PyObject
		case reflect.Slice:
			return fromSlice(vv).Object
		}
		panic(fmt.Sprintf("unsupported type for Python call: %T", v))
	}
}

func (obj Object) CallMethod(name string, args ...PyObjecter) Object {
	mthd := Cast[Func](obj.GetAttrString(name))
	argsTuple := py.NewTuple(len(args))
	for i, arg := range args {
		obj := arg.Obj()
		obj.IncRef()
		argsTuple.TupleSetItem(i, obj)
	}
	return mthd.CallObject(NewObject(argsTuple))
}
