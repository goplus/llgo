package python

import (
	"fmt"
	"reflect"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/internal/runtime"
	"github.com/goplus/llgo/py"
)

// ----------------------------------------------------------------------------

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

func (obj PyObject) GetAttrString(name string) PyObject {
	return NewObject(obj.obj.GetAttrString(c.AllocCStr(name)))
}

func (obj PyObject) GetFuncAttr(name string) PyFunc {
	return NewFunc(obj.obj.GetAttrString(c.AllocCStr(name)))
}

func (obj PyObject) GetBoolAttr(name string) PyBool {
	return NewBool(obj.obj.GetAttrString(c.AllocCStr(name)))
}

func (obj PyObject) GetFloatAttr(name string) PyFloat {
	return NewFloat(obj.obj.GetAttrString(c.AllocCStr(name)))
}

func (obj PyObject) GetDictAttr(name string) PyDict {
	return NewDict(obj.obj.GetAttrString(c.AllocCStr(name)))
}

type PyObject struct {
	*pyObject
}

func finalizerCallback(p *pyObject) {
	p.obj.DecRef()
}

func NewObject(obj *py.Object) PyObject {
	p := PyObject{&pyObject{obj: obj}}
	f := finalizerCallback
	fn := *(**c.Pointer)(c.Pointer(&f))
	runtime.SetFinalizer(p.pyObject, fn)
	return p
}

func (obj PyObject) Obj() *py.Object {
	return obj.pyObject.obj
}

// fake method
func (obj PyObject) pyObj() *pyObject {
	return obj.pyObject
}

// fake method
func (obj PyObject) setPyObj(p *pyObject) {

}

func fromMap(m reflect.Value) PyDict {
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

func fromSlice(s reflect.Value) PyList {
	list := NewList(py.NewList(s.Len()))
	for i := 0; i < s.Len(); i++ {
		obj := From(s.Index(i))
		list.Append(obj)
	}
	return list
}

func From(v any) PyObject {
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
			return fromSlice(vv).PyObject
		}
		panic(fmt.Sprintf("unsupported type for Python call: %T", v))
	}
}

func (obj PyObject) CallMethod(name string, args ...PyObjecter) PyObject {
	mthd := Cast[PyFunc](obj.GetAttrString(name))
	argsTuple := py.NewTuple(len(args))
	for i, arg := range args {
		obj := arg.Obj()
		obj.IncRef()
		argsTuple.TupleSetItem(i, obj)
	}
	return mthd.CallObject(NewObject(argsTuple))
}

// ----------------------------------------------------------------------------

type PyList struct {
	PyObject
}

func NewList(obj *py.Object) PyList {
	return PyList{NewObject(obj)}
}

func (l PyList) GetItem(index int) PyObject {
	v := l.obj.ListItem(index)
	v.IncRef()
	return NewObject(v)
}

func (l PyList) SetItem(index int, item PyObject) {
	l.obj.ListSetItem(index, item.obj)
}

func (l PyList) Append(obj PyObject) {
	l.obj.ListAppend(obj.obj)
}

// ----------------------------------------------------------------------------

type PyTuple struct {
	PyObject
}

func NewTuple(obj *py.Object) PyTuple {
	return PyTuple{NewObject(obj)}
}

func Tuple(args ...any) PyTuple {
	tuple := NewTuple(py.NewTuple(len(args)))
	for i, arg := range args {
		obj := From(arg)
		tuple.Set(i, obj)
	}
	return tuple
}

func (t PyTuple) Get(index int) PyObject {
	v := t.obj.TupleItem(index)
	v.IncRef()
	return NewObject(v)
}

func (t PyTuple) Set(index int, obj PyObject) {
	t.obj.TupleSetItem(index, obj.obj)
}

// ----------------------------------------------------------------------------

type PyDict struct {
	PyObject
}

func NewDict(obj *py.Object) PyDict {
	return PyDict{NewObject(obj)}
}

func DictFromPairs(pairs ...any) PyDict {
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

func Dict(m map[any]any) PyDict {
	dict := NewDict(py.NewDict())
	for key, value := range m {
		keyObj := From(key)
		valueObj := From(value)
		dict.SetItem(keyObj, valueObj)
	}
	return dict
}

func (d PyDict) GetItem(key PyObjecter) PyObject {
	v := d.obj.DictGetItem(key.Obj())
	v.IncRef()
	return NewObject(v)
}

func (d PyDict) SetItem(key, value PyObject) {
	d.obj.DictSetItem(key.obj, value.obj)
}

// ----------------------------------------------------------------------------

func SetProgramName(name string) {
	py.SetProgramName(c.AllocCStr(name))
}

func ErrPrint() {
	py.ErrPrint()
}

type InputType = py.InputType

const (
	SingleInput InputType = py.SingleInput
	FileInput   InputType = py.FileInput
	EvalInput   InputType = py.EvalInput
)

func CompileString(code, filename string, start InputType) PyObject {
	return NewObject(py.CompileString(c.AllocCStr(code), c.AllocCStr(filename), start))
}

// ----------------------------------------------------------------------------

func EvalCode(code PyObject, globals, locals PyDict) PyObject {
	return NewObject(py.EvalCode(code.Obj(), globals.Obj(), locals.Obj()))
}

// ----------------------------------------------------------------------------

type PyModule struct {
	PyObject
}

func NewModule(obj *py.Object) PyModule {
	return PyModule{NewObject(obj)}
}

func ImportModule(name string) PyModule {
	mod := py.ImportModule(c.AllocaCStr(name))
	if mod == nil {
		py.ErrPrint()
		panic(fmt.Errorf("failed to import module %s", name))
	}
	return NewModule(mod)
}

func (m PyModule) ModuleGetDict() PyDict {
	return NewDict(m.obj.ModuleGetDict())
}

func (m PyModule) Call(name string, args ...any) PyObject {
	fn := Cast[PyFunc](m.GetAttrString(name))
	return fn.CallObject(Tuple(args...).PyObject)
}

// ----------------------------------------------------------------------------

type PyLong struct {
	PyObject
}

func NewLong(obj *py.Object) PyLong {
	return PyLong{NewObject(obj)}
}

func Long(i int) PyLong {
	return NewLong(py.Long(c.Long(i)))
}

func (l PyLong) Int() int {
	return int(l.obj.Long())
}

// ----------------------------------------------------------------------------

type PyFloat struct {
	PyObject
}

func NewFloat(obj *py.Object) PyFloat {
	return PyFloat{NewObject(obj)}
}

func Float(f float64) PyFloat {
	return NewFloat(py.Float(f))
}

func (f PyFloat) Float64() float64 {
	return f.obj.Float64()
}

func (f PyFloat) IsInteger() PyBool {
	fn := Cast[PyFunc](f.GetAttrString("is_integer"))
	return Cast[PyBool](fn.CallNoArgs())
}

// ----------------------------------------------------------------------------

type PyBool struct {
	PyObject
}

func NewBool(obj *py.Object) PyBool {
	return PyBool{NewObject(obj)}
}

func True() PyBool {
	return NewBool(py.True())
}

func False() PyBool {
	return NewBool(py.False())
}

func (b PyBool) Bool() bool {
	return b.obj.IsTrue() != 0
}

// ----------------------------------------------------------------------------

type PyStr struct {
	PyObject
}

func NewStr(obj *py.Object) PyStr {
	return PyStr{NewObject(obj)}
}

func Str(s string) PyStr {
	return NewStr(py.FromGoString(s))
}

func (s PyStr) String() string {
	buf, n := s.obj.CStrAndLen()
	return c.GoString(buf, n)
}

// ----------------------------------------------------------------------------

type PyObjecter interface {
	Obj() *py.Object
}

type PyFunc struct {
	PyObject
}

func NewFunc(obj *py.Object) PyFunc {
	return PyFunc{NewObject(obj)}
}

func (f PyFunc) Call(args PyList, kwargs PyDict) PyObject {
	return NewObject(f.obj.Call(args.obj, kwargs.obj))
}

func (f PyFunc) CallNoArgs() PyObject {
	return NewObject(f.obj.CallNoArgs())
}

func (f PyFunc) CallOneArg(arg PyObjecter) PyObject {
	return NewObject(f.obj.CallOneArg(arg.Obj()))
}

func (f PyFunc) CallObject(args PyObject) PyObject {
	return NewObject(f.obj.CallObject(args.obj))
}

func (f PyFunc) CallArgs(args ...PyObjecter) PyObject {
	argsTuple := py.NewTuple(len(args))
	for i, arg := range args {
		obj := arg.Obj()
		obj.IncRef()
		argsTuple.TupleSetItem(i, obj)
	}
	return NewObject(f.obj.CallObject(argsTuple))
}

// ----------------------------------------------------------------------------

type pyobj interface {
	pyObj() *pyObject
	setPyObj(obj *pyObject)
}

func Cast[U, T pyobj](obj T) (ret U) {
	// TODO(lijie): avoid heap allocation
	rret := *(*U)(unsafe.Pointer(&obj))
	ret = rret
	return
}
