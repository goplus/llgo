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
	return py.LongFromLong(c.Long(p.X * p.Y))
}

// Move method for Point
func (p *Point) Move(args *py.Object) *py.Object {
	var dx, dy int
	if py.ArgParseTuple(args, c.Str("ii"), &dx, &dy) == 0 {
		return nil
	}
	p.X += dx
	p.Y += dy
	return py.None()
}

var PointType *py.TypeObject

// NewPoint creates a new Point instance
func NewPoint(self, args *py.Object, kw *py.Object) *py.Object {
	var x, y int
	if py.ArgParseTuple(args, c.Str("ii"), &x, &y) == 0 {
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
		Tp_name:      c.Str("foo.Point"),
		Tp_doc:       c.Str("Point objects"),
		Tp_basicsize: int(unsafe.Sizeof(Point{})),
		Tp_flags:     py.TPFLAGS_DEFAULT | py.TPFLAGS_BASETYPE,
		Tp_new:       NewPoint,
		Tp_methods: &[]py.MethodDef{
			{Name: c.Str("move"), Func: c.Func((*Point).Move), Flags: py.METH_VARARGS, Doc: c.Str("Move the point.")},
			{Name: c.Str("distance"), Func: c.Func((*Point).Distance), Flags: py.METH_NOARGS, Doc: c.Str("Calculate the distance.")},
			{Name: nil, Func: nil, Flags: 0, Doc: nil},
		}[0],
		Tp_members: &[]py.MemberDef{
			{Name: c.Str("x"), Type: py.T_INT, Offset: int(unsafe.Offsetof(Point{}.X)), Doc: c.Str("x coordinate")},
			{Name: c.Str("y"), Type: py.T_INT, Offset: int(unsafe.Offsetof(Point{}.Y)), Doc: c.Str("y coordinate")},
			{Name: nil, Type: 0, Offset: 0, Doc: nil},
		}[0],
	}
}

// Example function to add two integers
func exampleAdd(self, args *py.Object) *py.Object {
	var a, b int
	if py.ArgParseTuple(args, c.Str("ii"), &a, &b) == 0 {
		panic("parse tuple failed")
	}
	return py.LongFromLong(c.Long(a + b))
}

func InitFooModule() python.Module {
	mb := python.NewModuleBuilder("foo", "This is a demo module for auto deref.")

	mb.AddMethod("add", c.Func(exampleAdd), "Add two integers.")

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
