package python

import (
	"fmt"

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
	case bool:
		if v {
			return NewObject(py.True())
		} else {
			return NewObject(py.False())
		}

	// TODO(lijie): workaround for lame reflection
	case []Objecter:
		return fromSlice(v).Object
	case []int8:
		return fromSlice(v).Object
	case []int16:
		return fromSlice(v).Object
	case []int32:
		return fromSlice(v).Object
	case []int64:
		return fromSlice(v).Object
	case []int:
		return fromSlice(v).Object
	case []uint8:
		return fromSlice(v).Object
	case []uint16:
		return fromSlice(v).Object
	case []uint32:
		return fromSlice(v).Object
	case []uint64:
		return fromSlice(v).Object
	case []uint:
		return fromSlice(v).Object
	case []float64:
		return fromSlice(v).Object
	case []string:
		return fromSlice(v).Object
	case []bool:
		return fromSlice(v).Object
	default:
		fmt.Printf("From: %T\n", v)
		panic("unsupported type for Python call")
	}
}

func fromSlice[T any](v []T) List {
	list := NewList(py.NewList(len(v)))
	for i, x := range v {
		list.SetItem(i, From(x))
	}
	return list
}

func (obj Object) CallMethod(name string, args ...any) Object {
	mthd := Cast[Func](obj.GetAttr(name))
	argsTuple := MakeTupleWith(args...)
	return mthd.CallObject(argsTuple.Object)
}
