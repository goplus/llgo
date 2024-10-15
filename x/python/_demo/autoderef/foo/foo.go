package foo

import (
	"fmt"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/python"
	"github.com/goplus/llgo/x/python/py"
)

type Point struct {
	py.Object
	X int
	Y int
}

func (p *Point) Print() {
	fmt.Printf("Point(%d, %d)\n", p.X, p.Y)
}

func (p *Point) Distance(args *py.Object) *py.Object {
	return py.LongFromLong(py.Long(p.X * p.Y))
}

// Move method for Point
func (p *Point) Move(args *py.Object) *py.Object {
	var dx, dy int
	if py.ArgParseTuple(args, python.CStr("ii"), &dx, &dy) == 0 {
		return nil
	}
	p.X += dx
	p.Y += dy
	return python.None().Obj()
}

var PointType *py.TypeObject

// NewPoint creates a new Point instance
func NewPoint(self, args *py.Object, kw *py.Object) *py.Object {
	var x, y int
	if py.ArgParseTuple(args, python.CStr("ii"), &x, &y) == 0 {
		return nil
	}
	point := &Point{X: x, Y: y}
	return py.ObjectInit(&point.Object, PointType)
}

func PyVaragsFunc[T any](fn func(T, *py.Object) *py.Object) c.Pointer {
	return c.Func(fn)
}

func init() {
	// PointType is the Python type object for Point
	PointType = &py.TypeObject{
		Tp_name:      python.CStr("foo.Point"),
		Tp_doc:       python.CStr("Point objects"),
		Tp_basicsize: int(unsafe.Sizeof(Point{})),
		Tp_flags:     py.TPFLAGS_DEFAULT | py.TPFLAGS_BASETYPE,
		Tp_new:       NewPoint,
		Tp_methods: &[]py.MethodDef{
			{Name: python.CStr("move"), Func: python.FuncPtr((*Point).Move), Flags: py.METH_VARARGS, Doc: python.CStr("Move the point.")},
			{Name: python.CStr("distance"), Func: python.FuncPtr((*Point).Distance), Flags: py.METH_NOARGS, Doc: python.CStr("Calculate the distance.")},
			{Name: nil, Func: nil, Flags: 0, Doc: nil},
		}[0],
		Tp_members: &[]py.MemberDef{
			{Name: python.CStr("x"), Type: py.T_INT, Offset: int(unsafe.Offsetof(Point{}.X)), Doc: python.CStr("x coordinate")},
			{Name: python.CStr("y"), Type: py.T_INT, Offset: int(unsafe.Offsetof(Point{}.Y)), Doc: python.CStr("y coordinate")},
			{Name: nil, Type: 0, Offset: 0, Doc: nil},
		}[0],
	}
}

func exampleAdd(self, args *py.Object) *py.Object {
	var a, b int
	if py.ArgParseTuple(args, python.CStr("ii"), &a, &b) == 0 {
		panic("parse tuple failed")
	}
	return py.LongFromLong(py.Long(a + b))
}

func InitFooModule() python.Module {
	mb := python.NewModuleBuilder("foo", "This is a demo module for auto deref.")

	mb.AddMethod("add", python.FuncPtr(exampleAdd), "Add two integers.")

	m := mb.Build()

	if py.TypeReady(PointType) < 0 {
		panic("failed to ready type")
	}

	py.IncRef(&PointType.Ob_base.Ob_base)
	if m.AddObject("Point", python.FromPy(&PointType.Ob_base.Ob_base)) < 0 {
		py.DecRef(&PointType.Ob_base.Ob_base)
		py.DecRef(m.Obj())
		return python.FromPy(nil).AsModule()
	}

	return m
}
