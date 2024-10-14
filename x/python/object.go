package python

import (
	"fmt"
	"reflect"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/internal/runtime"
	"github.com/goplus/llgo/x/python/py"
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
		py.ErrPrint()
		panic("nil Python object")
	}
}

// ----------------------------------------------------------------------------

func (obj Object) GetAttr(name string) Object {
	return newObject(py.ObjectGetAttrString(obj.obj, c.AllocCStr(name)))
}

func (obj Object) GetFloatAttr(name string) Float {
	return newFloat(py.ObjectGetAttrString(obj.obj, c.AllocCStr(name)))
}

func (obj Object) GetLongAttr(name string) Long {
	return newLong(py.ObjectGetAttrString(obj.obj, c.AllocCStr(name)))
}

func (obj Object) GetStrAttr(name string) Str {
	return newStr(py.ObjectGetAttrString(obj.obj, c.AllocCStr(name)))
}

func (obj Object) GetBytesAttr(name string) Bytes {
	return newBytes(py.ObjectGetAttrString(obj.obj, c.AllocCStr(name)))
}

func (obj Object) GetBoolAttr(name string) Bool {
	return newBool(py.ObjectGetAttrString(obj.obj, c.AllocCStr(name)))
}

func (obj Object) GetDictAttr(name string) Dict {
	return newDict(py.ObjectGetAttrString(obj.obj, c.AllocCStr(name)))
}

func (obj Object) GetListAttr(name string) List {
	return newList(py.ObjectGetAttrString(obj.obj, c.AllocCStr(name)))
}

func (obj Object) GetTupleAttr(name string) Tuple {
	return newTuple(py.ObjectGetAttrString(obj.obj, c.AllocCStr(name)))
}

func (obj Object) GetFuncAttr(name string) Func {
	return newFunc(py.ObjectGetAttrString(obj.obj, c.AllocCStr(name)))
}

func (obj Object) AsFloat() Float {
	return Cast[Float](obj)
}

func (obj Object) AsLong() Long {
	return Cast[Long](obj)
}

func (obj Object) AsStr() Str {
	return Cast[Str](obj)
}

func (obj Object) AsBytes() Bytes {
	return Cast[Bytes](obj)
}

func (obj Object) AsBool() Bool {
	return Cast[Bool](obj)
}

func (obj Object) AsDict() Dict {
	return Cast[Dict](obj)
}

func (obj Object) AsList() List {
	return Cast[List](obj)
}

func (obj Object) AsTuple() Tuple {
	return Cast[Tuple](obj)
}

func (obj Object) AsFunc() Func {
	return Cast[Func](obj)
}

func (obj Object) AsModule() Module {
	return Cast[Module](obj)
}

type Object struct {
	*pyObject
}

func finalizerCallback(p *pyObject) {
	py.DecRef(p.obj)
}

func FromPy(obj *py.Object) Object {
	return newObject(obj)
}

func newObject(obj *py.Object) Object {
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

func (obj Object) CallKeywords(name string, args ...any) func(kw any) Object {
	return func(kw any) Object {
		fn := Cast[Func](obj.GetAttr(name))
		pyArgs := MakeTuple(args...)
		pyKw := Cast[Dict](From(kw))
		r := fn.call(pyArgs, pyKw)
		return r
	}
}

func (obj Object) Call(name string, args ...any) Object {
	fn := Cast[Func](obj.GetAttr(name))
	callArgs := MakeTuple(args...)
	return fn.CallObject(callArgs)
}

func (obj Object) Repr() string {
	return newStr(py.ObjectRepr(obj.obj)).String()
}

func (obj Object) String() string {
	return newStr(py.ObjectStr(obj.obj)).String()
}

func (obj Object) Obj() *py.Object {
	return obj.pyObject.obj
}

func From(v any) Object {
	switch v := v.(type) {
	case Objecter:
		return newObject(v.Obj())
	case int8:
		return newObject(py.LongFromLong(c.Long(v)))
	case int16:
		return newObject(py.LongFromLong(c.Long(v)))
	case int32:
		return newObject(py.LongFromLong(c.Long(v)))
	case int64:
		return newObject(py.LongFromLongLong(c.LongLong(v)))
	case int:
		return newObject(py.LongFromLong(c.Long(v)))
	case uint8:
		return newObject(py.LongFromLong(c.Long(v)))
	case uint16:
		return newObject(py.LongFromLong(c.Long(v)))
	case uint32:
		return newObject(py.LongFromLong(c.Long(v)))
	case uint64:
		return newObject(py.LongFromUnsignedLongLong(c.UlongLong(v)))
	case uint:
		return newObject(py.LongFromUnsignedLong(c.Ulong(v)))
	case float64:
		return newObject(py.FloatFromDouble(v))
	case string:
		return newObject(py.UnicodeFromString(c.AllocCStr(v)))
	case complex128:
		return MakeComplex(v).Object
	case complex64:
		return MakeComplex(complex128(v)).Object
	case []byte:
		return MakeBytes(v).Object
	case bool:
		if v {
			return newObject(py.True())
		} else {
			return newObject(py.False())
		}
	default:
		vv := reflect.ValueOf(v)
		switch vv.Kind() {
		case reflect.Slice:
			return fromSlice(vv).Object
		}
		panic(fmt.Errorf("unsupported type for Python: %T\n", v))
	}
}

func To[T any](obj Object) (ret T) {
	switch any(ret).(type) {
	case int8:
		return any(int8(Cast[Long](obj).Int64())).(T)
	case int16:
		return any(int16(Cast[Long](obj).Int64())).(T)
	case int32:
		return any(int32(Cast[Long](obj).Int64())).(T)
	case int64:
		return any(Cast[Long](obj).Int64()).(T)
	case int:
		return any(int(Cast[Long](obj).Int64())).(T)
	case uint8:
		return any(uint8(Cast[Long](obj).Uint64())).(T)
	case uint16:
		return any(uint16(Cast[Long](obj).Uint64())).(T)
	case uint32:
		return any(uint32(Cast[Long](obj).Uint64())).(T)
	case uint64:
		return any(Cast[Long](obj).Uint64()).(T)
	case uint:
		return any(uint(Cast[Long](obj).Uint64())).(T)
	case float32:
		return any(float32(Cast[Float](obj).Float64())).(T)
	case float64:
		return any(Cast[Float](obj).Float64()).(T)
	case complex64:
		return any(complex64(Cast[Complex](obj).Complex128())).(T)
	case complex128:
		return any(Cast[Complex](obj).Complex128()).(T)
	case string:
		return any(Cast[Str](obj).String()).(T)
	case bool:
		return any(Cast[Bool](obj).Bool()).(T)
	case []byte:
		return any(Cast[Bytes](obj).Bytes()).(T)
	default:
		v := reflect.ValueOf(ret)
		switch v.Kind() {
		case reflect.Slice:
			return toSlice[T](obj, v)
		}
		panic(fmt.Errorf("unsupported type conversion from Python object to %T", ret))
	}
}

func toSlice[T any](obj Object, v reflect.Value) T {
	list := Cast[List](obj)
	l := list.Len()
	v = reflect.MakeSlice(v.Type(), l, l)
	for i := 0; i < l; i++ {
		v.Index(i).Set(reflect.ValueOf(To[T](list.GetItem(i))))
	}
	return v.Interface().(T)
}

func fromSlice(v reflect.Value) List {
	l := v.Len()
	list := newList(py.ListNew(l))
	for i := 0; i < l; i++ {
		list.SetItem(i, From(v.Index(i).Interface()))
	}
	return list
}

func (obj Object) CallMethod(name string, args ...any) Object {
	mthd := Cast[Func](obj.GetAttr(name))
	argsTuple := MakeTuple(args...)
	return mthd.CallObject(argsTuple)
}
