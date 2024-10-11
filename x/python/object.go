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

func (obj *pyObject) Ensure() {
	if obj == nil {
		panic("nil Python object")
	}
}

// ----------------------------------------------------------------------------

func (obj Object) GetAttr(name string) Object {
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
	if obj == nil {
		py.ErrPrint()
		panic("nil Python object")
	}
	o := &pyObject{obj: obj}
	p := Object{o}
	f := finalizerCallback
	fn := *(**c.Pointer)(c.Pointer(&f))
	runtime.SetFinalizer(o, fn)
	return p
}

func (obj Object) object() Object {
	return obj
}

func (obj Object) CallKeywords(name string, args []any, kw any) Object {
	fn := Cast[Func](obj.GetAttr(name))
	pyArgs := MakeTupleWith(args...)
	pyKw := Cast[Dict](From(kw))
	r := fn.Call(pyArgs, pyKw)
	return r
}

func (obj Object) Call(name string, args ...any) Object {
	fn := Cast[Func](obj.GetAttr(name))
	callArgs := MakeTupleWith(args...)
	return fn.CallObject(callArgs.Object)
}

func (obj Object) Repr() string {
	return NewStr(obj.obj.Repr()).String()
}

func (obj Object) Obj() *py.Object {
	return obj.pyObject.obj
}

func From(v any) Object {
	switch v := v.(type) {
	case Objecter:
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
	case complex128:
		return MakeComplex(v).Object
	case complex64:
		return MakeComplex(complex128(v)).Object
	case []byte:
		return MakeBytes(v).Object
	case bool:
		if v {
			return NewObject(py.True())
		} else {
			return NewObject(py.False())
		}
	default:
		vv := reflect.ValueOf(v)
		switch vv.Kind() {
		case reflect.Slice:
			return fromSlice(vv).Object
		}
		fmt.Printf("From: %T\n", v)
		panic("unsupported type for Python call")
	}
}

func fromSlice(v reflect.Value) List {
	l := v.Len()
	list := NewList(py.NewList(l))
	for i := 0; i < l; i++ {
		list.SetItem(i, From(v.Index(i).Interface()))
	}
	return list
}

func (obj Object) CallMethod(name string, args ...any) Object {
	mthd := Cast[Func](obj.GetAttr(name))
	argsTuple := MakeTupleWith(args...)
	return mthd.CallObject(argsTuple.Object)
}
