package python

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

// -------------------------------------------------------------------------------------------------

type pyobj interface {
	pyObj() *pyObject
	setPyObj(obj *pyObject)
}

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

// -------------------------------------------------------------------------------------------------

func (obj PyObject) GetAttrString(name string) PyObject {
	return NewObject(obj.obj.GetAttrString(c.AllocCStr(name)))
}

type PyObject struct {
	*pyObject
}

// fake method
func (obj PyObject) pyObj() *pyObject {
	return obj.pyObject
}

// fake method
func (obj PyObject) setPyObj(p *pyObject) {

}

// -------------------------------------------------------------------------------------------------

type PyDict struct {
	PyObject
}

func NewDict(obj *py.Object) PyDict {
	return PyDict{NewObject(obj)}
}

func (d PyDict) Obj() *py.Object {
	return d.obj
}

// -------------------------------------------------------------------------------------------------

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

// -------------------------------------------------------------------------------------------------

func EvalCode(code PyObject, globals, locals PyDict) PyObject {
	return NewObject(py.EvalCode(code.Obj(), globals.Obj(), locals.Obj()))
}

// -------------------------------------------------------------------------------------------------

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

// -------------------------------------------------------------------------------------------------

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

// -------------------------------------------------------------------------------------------------

type PyBool struct {
	PyObject
}

func NewBool(obj *py.Object) PyBool {
	return PyBool{NewObject(obj)}
}

func (b PyBool) Bool() bool {
	return b.obj.IsTrue() != 0
}

// -------------------------------------------------------------------------------------------------

type PyFunc struct {
	PyObject
}

func NewFunc(obj *py.Object) PyFunc {
	return PyFunc{NewObject(obj)}
}

func (f PyFunc) CallNoArgs() PyObject {
	return NewObject(f.obj.CallNoArgs())
}

func (f PyFunc) CallOneArg(arg PyObject) PyObject {
	return NewObject(f.obj.CallOneArg(arg.obj))
}

// -------------------------------------------------------------------------------------------------

func Cast[U, T pyobj](obj T) (ret U) {
	// TODO(lijie): avoid heap allocation
	rret := *(*U)(unsafe.Pointer(&obj))
	ret = rret
	return
}
