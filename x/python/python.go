package python

import (
	"unsafe"

	"github.com/goplus/llgo/c"
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

func (obj PyObject) CallMethod(name string, args ...PyObjecter) PyObject {
	mthd := Cast[PyFunc](obj.GetAttrString(name))
	argsTuple := py.NewTuple(len(args))
	for i, arg := range args {
		argsTuple.TupleSetItem(i, arg.Obj())
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

// ----------------------------------------------------------------------------

type PyDict struct {
	PyObject
}

func NewDict(obj *py.Object) PyDict {
	return PyDict{NewObject(obj)}
}

func (d PyDict) GetItem(key PyObjecter) PyObject {
	return NewObject(d.obj.DictGetItem(key.Obj()))
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
	return NewModule(py.ImportModule(c.AllocaCStr(name)))
}

func (m *PyModule) ModuleGetDict() PyDict {
	return NewDict(m.obj.ModuleGetDict())
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
		argsTuple.TupleSetItem(i, arg.Obj())
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
