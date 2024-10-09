package foo

import (
	"fmt"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/x/python"
)

type Point struct {
	py.Object
	X int
	Y int
}

func (p *Point) Print() {
	fmt.Printf("Point(%d, %d)\n", p.X, p.Y)
}

func (p *Point) Area(args *py.Object) *py.Object {
	return py.Long(c.Long(p.X * p.Y))
}

// Move method for Point
func (p *Point) Move(args *py.Object) *py.Object {
	var dx, dy int
	if !py.ParseTuple(args, c.Str("ii"), &dx, &dy) {
		return nil
	}
	p.X += dx
	p.Y += dy
	return py.None()
}

var PointType *py.TypeObject

// NewPoint creates a new Point instance
func NewPoint(self, args *py.Object) *py.Object {
	var x, y int
	if !py.ParseTuple(args, c.Str("ii"), &x, &y) {
		return nil
	}
	point := &Point{X: x, Y: y}
	return point.Object.Init(PointType)
}

func PyVaragsFunc[T any](fn func(T, *py.Object) *py.Object) unsafe.Pointer {
	return c.Func(fn)
}

func init() {
	// PointType is the Python type object for Point
	PointType = &py.TypeObject{
		Tp_name:      c.Str("foo.Point"),
		Tp_doc:       c.Str("Point objects"),
		Tp_basicsize: int(unsafe.Sizeof(Point{})),
		Tp_flags:     py.TPFLAGS_DEFAULT | py.TPFLAGS_BASETYPE,
		Tp_new:       c.Func(NewPoint),
		Tp_methods: &[]py.MethodDef{
			{Name: c.Str("move"), Func: c.Func((*Point).Move), Flags: py.METH_VARARGS, Doc: c.Str("Move the point.")},
			{Name: c.Str("area"), Func: c.Func((*Point).Area), Flags: py.METH_NOARGS, Doc: c.Str("Calculate the area.")},
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
	if !py.ParseTuple(args, c.Str("ii"), &a, &b) {
		fmt.Println("ParseTuple failed")
		return nil
	}
	fmt.Printf("a: %d, b: %d\n", a, b)
	return py.Long(c.Long(a + b))
}

func InitFooModule() python.PyModule {
	m := py.ModuleCreate2(&py.ModuleDef{
		Base: py.PyModuleDef_HEAD_INIT(),
		Name: c.Str("foo"),
		Doc:  c.Str("This is a demo module for auto deref."),
		Size: -1,
		Methods: &[]py.MethodDef{
			{Name: c.Str("add"), Func: c.Func(exampleAdd), Flags: py.METH_VARARGS, Doc: c.Str("Add two integers.")},
			{Name: nil, Func: nil, Flags: 0, Doc: nil},
		}[0],
	}, 1013)

	if m == nil {
		panic("failed to create module")
	}

	if PointType.Ready() < 0 {
		panic("failed to ready type")
	}

	PointType.Ob_base.Ob_base.IncRef()
	if py.ModuleAddObject(m, c.Str("Point"), &PointType.Ob_base.Ob_base) < 0 {
		PointType.Ob_base.Ob_base.DecRef()
		m.DecRef()
		return python.NewModule(nil)
	}

	return python.NewModule(m)
}
