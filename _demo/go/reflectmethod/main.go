package main

import (
	"fmt"
	"log"
	. "reflect"
	"runtime"
	"strings"
)

type testingT struct {
}

func (t *testingT) Errorf(format string, args ...any) {
	log.Panicf(format, args...)
}

func (t *testingT) Fatal(args ...any) {
	log.Panic(args...)
}

func (t *testingT) Fatalf(format string, args ...any) {
	log.Panicf(format, args...)
}

func main() {
	// TODO: llgo init abi types for closure
	SliceOf(TypeOf(0))
	var t testingT
	TestMethod(&t)
	TestMethodValue(&t)
	TestVariadicMethodValue(&t)
	TestDirectIfaceMethod(&t)
	TestMethod5(&t)
}

func shouldPanic(expect string, f func()) {
	defer func() {
		r := recover()
		if r == nil {
			panic("did not panic")
		}
		if expect != "" {
			var s string
			switch r := r.(type) {
			case string:
				s = r
			case *ValueError:
				s = r.Error()
			default:
				panic(fmt.Sprintf("panicked with unexpected type %T", r))
			}
			if !strings.HasPrefix(s, "reflect") {
				panic(`panic string does not start with "reflect": ` + s)
			}
			if !strings.Contains(s, expect) {
				panic(`panic string does not contain "` + expect + `": ` + s)
			}
		}
	}()
	f()
}

type Point struct {
	x, y int
}

// This will be index 0.
func (p Point) AnotherMethod(scale int) int {
	return -1
}

// This will be index 1.
func (p Point) Dist(scale int) int {
	//println("Point.Dist", p.x, p.y, scale)
	return p.x*p.x*scale + p.y*p.y*scale
}

// This will be index 2.
func (p Point) GCMethod(k int) int {
	runtime.GC()
	return k + p.x
}

// This will be index 3.
func (p Point) NoArgs() {
	// Exercise no-argument/no-result paths.
}

// This will be index 4.
func (p Point) TotalDist(points ...Point) int {
	tot := 0
	for _, q := range points {
		dx := q.x - p.x
		dy := q.y - p.y
		tot += dx*dx + dy*dy // Should call Sqrt, but it's just a test.

	}
	return tot
}

// This will be index 5.
func (p *Point) Int64Method(x int64) int64 {
	return x
}

// This will be index 6.
func (p *Point) Int32Method(x int32) int32 {
	return x
}

func TestMethod(t *testingT) {
	// Non-curried method of type.
	p := Point{3, 4}
	i := TypeOf(p).Method(1).Func.Call([]Value{ValueOf(p), ValueOf(10)})[0].Int()
	if i != 250 {
		t.Errorf("Type Method returned %d; want 250", i)
	}

	m, ok := TypeOf(p).MethodByName("Dist")
	if !ok {
		t.Fatalf("method by name failed")
	}
	i = m.Func.Call([]Value{ValueOf(p), ValueOf(11)})[0].Int()
	if i != 275 {
		t.Errorf("Type MethodByName returned %d; want 275", i)
	}

	m, ok = TypeOf(p).MethodByName("NoArgs")
	if !ok {
		t.Fatalf("method by name failed")
	}
	n := len(m.Func.Call([]Value{ValueOf(p)}))
	if n != 0 {
		t.Errorf("NoArgs returned %d values; want 0", n)
	}

	i = TypeOf(&p).Method(1).Func.Call([]Value{ValueOf(&p), ValueOf(12)})[0].Int()
	if i != 300 {
		t.Errorf("Pointer Type Method returned %d; want 300", i)
	}

	m, ok = TypeOf(&p).MethodByName("Dist")
	if !ok {
		t.Fatalf("ptr method by name failed")
	}
	i = m.Func.Call([]Value{ValueOf(&p), ValueOf(13)})[0].Int()
	if i != 325 {
		t.Errorf("Pointer Type MethodByName returned %d; want 325", i)
	}

	m, ok = TypeOf(&p).MethodByName("NoArgs")
	if !ok {
		t.Fatalf("method by name failed")
	}
	n = len(m.Func.Call([]Value{ValueOf(&p)}))
	if n != 0 {
		t.Errorf("NoArgs returned %d values; want 0", n)
	}

	_, ok = TypeOf(&p).MethodByName("AA")
	if ok {
		t.Errorf(`MethodByName("AA") should have failed`)
	}

	_, ok = TypeOf(&p).MethodByName("ZZ")
	if ok {
		t.Errorf(`MethodByName("ZZ") should have failed`)
	}

	// Curried method of value.
	tfunc := TypeOf((func(int) int)(nil))
	v := ValueOf(p).Method(1)
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Value Method Type is %s; want %s", tt, tfunc)
	}
	i = v.Call([]Value{ValueOf(14)})[0].Int()
	if i != 350 {
		t.Errorf("Value Method returned %d; want 350", i)
	}
	v = ValueOf(p).MethodByName("Dist")
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Value MethodByName Type is %s; want %s", tt, tfunc)
	}
	i = v.Call([]Value{ValueOf(15)})[0].Int()
	if i != 375 {
		t.Errorf("Value MethodByName returned %d; want 375", i)
	}
	v = ValueOf(p).MethodByName("NoArgs")
	v.Call(nil)

	// Curried method of pointer.
	v = ValueOf(&p).Method(1)
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Pointer Value Method Type is %s; want %s", tt, tfunc)
	}
	i = v.Call([]Value{ValueOf(16)})[0].Int()
	if i != 400 {
		t.Errorf("Pointer Value Method returned %d; want 400", i)
	}
	v = ValueOf(&p).MethodByName("Dist")
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Pointer Value MethodByName Type is %s; want %s", tt, tfunc)
	}
	i = v.Call([]Value{ValueOf(17)})[0].Int()
	if i != 425 {
		t.Errorf("Pointer Value MethodByName returned %d; want 425", i)
	}
	v = ValueOf(&p).MethodByName("NoArgs")
	v.Call(nil)

	// Curried method of interface value.
	// Have to wrap interface value in a struct to get at it.
	// Passing it to ValueOf directly would
	// access the underlying Point, not the interface.
	var x interface {
		Dist(int) int
	} = p
	pv := ValueOf(&x).Elem()
	v = pv.Method(0)
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Interface Method Type is %s; want %s", tt, tfunc)
	}
	i = v.Call([]Value{ValueOf(18)})[0].Int()
	if i != 450 {
		t.Errorf("Interface Method returned %d; want 450", i)
	}
	v = pv.MethodByName("Dist")
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Interface MethodByName Type is %s; want %s", tt, tfunc)
	}
	i = v.Call([]Value{ValueOf(19)})[0].Int()
	if i != 475 {
		t.Errorf("Interface MethodByName returned %d; want 475", i)
	}
}

func TestMethodValue(t *testingT) {
	p := Point{3, 4}
	var i int64

	// Check that method value have the same underlying code pointers.
	if p1, p2 := ValueOf(Point{1, 1}).Method(1), ValueOf(Point{2, 2}).Method(1); p1.Pointer() != p2.Pointer() {
		t.Errorf("methodValueCall mismatched: %v - %v", p1, p2)
	}

	// Curried method of value.
	tfunc := TypeOf((func(int) int)(nil))
	v := ValueOf(p).Method(1)
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Value Method Type is %s; want %s", tt, tfunc)
	}
	i = ValueOf(v.Interface()).Call([]Value{ValueOf(10)})[0].Int()
	if i != 250 {
		t.Errorf("Value Method returned %d; want 250", i)
	}
	v = ValueOf(p).MethodByName("Dist")
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Value MethodByName Type is %s; want %s", tt, tfunc)
	}
	i = ValueOf(v.Interface()).Call([]Value{ValueOf(11)})[0].Int()
	if i != 275 {
		t.Errorf("Value MethodByName returned %d; want 275", i)
	}
	v = ValueOf(p).MethodByName("NoArgs")
	ValueOf(v.Interface()).Call(nil)
	v.Interface().(func())()

	// Curried method of pointer.
	v = ValueOf(&p).Method(1)
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Pointer Value Method Type is %s; want %s", tt, tfunc)
	}
	i = ValueOf(v.Interface()).Call([]Value{ValueOf(12)})[0].Int()
	if i != 300 {
		t.Errorf("Pointer Value Method returned %d; want 300", i)
	}
	v = ValueOf(&p).MethodByName("Dist")
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Pointer Value MethodByName Type is %s; want %s", tt, tfunc)
	}
	i = ValueOf(v.Interface()).Call([]Value{ValueOf(13)})[0].Int()
	if i != 325 {
		t.Errorf("Pointer Value MethodByName returned %d; want 325", i)
	}
	v = ValueOf(&p).MethodByName("NoArgs")
	ValueOf(v.Interface()).Call(nil)
	v.Interface().(func())()

	// Curried method of pointer to pointer.
	pp := &p
	v = ValueOf(&pp).Elem().Method(1)
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Pointer Pointer Value Method Type is %s; want %s", tt, tfunc)
	}
	i = ValueOf(v.Interface()).Call([]Value{ValueOf(14)})[0].Int()
	if i != 350 {
		t.Errorf("Pointer Pointer Value Method returned %d; want 350", i)
	}
	v = ValueOf(&pp).Elem().MethodByName("Dist")
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Pointer Pointer Value MethodByName Type is %s; want %s", tt, tfunc)
	}
	i = ValueOf(v.Interface()).Call([]Value{ValueOf(15)})[0].Int()
	if i != 375 {
		t.Errorf("Pointer Pointer Value MethodByName returned %d; want 375", i)
	}

	// Curried method of interface value.
	// Have to wrap interface value in a struct to get at it.
	// Passing it to ValueOf directly would
	// access the underlying Point, not the interface.
	var s = struct {
		X interface {
			Dist(int) int
		}
	}{p}
	pv := ValueOf(s).Field(0)
	v = pv.Method(0)
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Interface Method Type is %s; want %s", tt, tfunc)
	}
	i = ValueOf(v.Interface()).Call([]Value{ValueOf(16)})[0].Int()
	if i != 400 {
		t.Errorf("Interface Method returned %d; want 400", i)
	}
	v = pv.MethodByName("Dist")
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Interface MethodByName Type is %s; want %s", tt, tfunc)
	}
	i = ValueOf(v.Interface()).Call([]Value{ValueOf(17)})[0].Int()
	if i != 425 {
		t.Errorf("Interface MethodByName returned %d; want 425", i)
	}

	// For issue #33628: method args are not stored at the right offset
	// on amd64p32.
	m64 := ValueOf(&p).MethodByName("Int64Method").Interface().(func(int64) int64)
	if x := m64(123); x != 123 {
		t.Errorf("Int64Method returned %d; want 123", x)
	}
	m32 := ValueOf(&p).MethodByName("Int32Method").Interface().(func(int32) int32)
	if x := m32(456); x != 456 {
		t.Errorf("Int32Method returned %d; want 456", x)
	}
}

func TestVariadicMethodValue(t *testingT) {
	p := Point{3, 4}
	points := []Point{{20, 21}, {22, 23}, {24, 25}}
	want := int64(p.TotalDist(points[0], points[1], points[2]))

	// Variadic method of type.
	tfunc := TypeOf((func(Point, ...Point) int)(nil))
	if tt := TypeOf(p).Method(4).Type; tt != tfunc {
		t.Errorf("Variadic Method Type from TypeOf is %s; want %s", tt, tfunc)
	}

	// Curried method of value.
	tfunc = TypeOf((func(...Point) int)(nil))
	v := ValueOf(p).Method(4)
	if tt := v.Type(); tt != tfunc {
		t.Errorf("Variadic Method Type is %s; want %s", tt, tfunc)
	}
	i := ValueOf(v.Interface()).Call([]Value{ValueOf(points[0]), ValueOf(points[1]), ValueOf(points[2])})[0].Int()
	if i != want {
		t.Errorf("Variadic Method returned %d; want %d", i, want)
	}
	i = ValueOf(v.Interface()).CallSlice([]Value{ValueOf(points)})[0].Int()
	if i != want {
		t.Errorf("Variadic Method CallSlice returned %d; want %d", i, want)
	}

	f := v.Interface().(func(...Point) int)
	i = int64(f(points[0], points[1], points[2]))
	if i != want {
		t.Errorf("Variadic Method Interface returned %d; want %d", i, want)
	}
	i = int64(f(points...))
	if i != want {
		t.Errorf("Variadic Method Interface Slice returned %d; want %d", i, want)
	}
}

type DirectIfaceT struct {
	p *int
}

func (d DirectIfaceT) M() int { return *d.p }

func TestDirectIfaceMethod(t *testingT) {
	x := 42
	v := DirectIfaceT{&x}
	typ := TypeOf(v)
	m, ok := typ.MethodByName("M")
	if !ok {
		t.Fatalf("cannot find method M")
	}
	in := []Value{ValueOf(v)}
	out := m.Func.Call(in)
	if got := out[0].Int(); got != 42 {
		t.Errorf("Call with value receiver got %d, want 42", got)
	}

	pv := &v
	typ = TypeOf(pv)
	m, ok = typ.MethodByName("M")
	if !ok {
		t.Fatalf("cannot find method M")
	}
	in = []Value{ValueOf(pv)}
	out = m.Func.Call(in)
	if got := out[0].Int(); got != 42 {
		t.Errorf("Call with pointer receiver got %d, want 42", got)
	}
}

// Reflect version of $GOROOT/test/method5.go

// Concrete types implementing M method.
// Smaller than a word, word-sized, larger than a word.
// Value and pointer receivers.

type Tinter interface {
	M(int, byte) (byte, int)
}

type Tsmallv byte

func (v Tsmallv) M(x int, b byte) (byte, int) { return b, x + int(v) }

type Tsmallp byte

func (p *Tsmallp) M(x int, b byte) (byte, int) { return b, x + int(*p) }

type Twordv uintptr

func (v Twordv) M(x int, b byte) (byte, int) { return b, x + int(v) }

type Twordp uintptr

func (p *Twordp) M(x int, b byte) (byte, int) { return b, x + int(*p) }

type Tbigv [2]uintptr

func (v Tbigv) M(x int, b byte) (byte, int) { return b, x + int(v[0]) + int(v[1]) }

type Tbigp [2]uintptr

func (p *Tbigp) M(x int, b byte) (byte, int) { return b, x + int(p[0]) + int(p[1]) }

type tinter interface {
	m(int, byte) (byte, int)
}

// Embedding via pointer.

type Tm1 struct {
	Tm2
}

type Tm2 struct {
	*Tm3
}

type Tm3 struct {
	*Tm4
}

type Tm4 struct {
}

func (t4 Tm4) M(x int, b byte) (byte, int) { return b, x + 40 }

func TestMethod5(t *testingT) {
	CheckF := func(name string, f func(int, byte) (byte, int), inc int) {
		b, x := f(1000, 99)
		if b != 99 || x != 1000+inc {
			t.Errorf("%s(1000, 99) = %v, %v, want 99, %v", name, b, x, 1000+inc)
		}
	}

	CheckV := func(name string, i Value, inc int) {
		bx := i.Method(0).Call([]Value{ValueOf(1000), ValueOf(byte(99))})
		b := bx[0].Interface()
		x := bx[1].Interface()
		if b != byte(99) || x != 1000+inc {
			t.Errorf("direct %s.M(1000, 99) = %v, %v, want 99, %v", name, b, x, 1000+inc)
		}

		CheckF(name+".M", i.Method(0).Interface().(func(int, byte) (byte, int)), inc)
	}

	var TinterType = TypeOf(new(Tinter)).Elem()

	CheckI := func(name string, i any, inc int) {
		v := ValueOf(i)
		CheckV(name, v, inc)
		CheckV("(i="+name+")", v.Convert(TinterType), inc)
	}

	sv := Tsmallv(1)
	CheckI("sv", sv, 1)
	CheckI("&sv", &sv, 1)

	sp := Tsmallp(2)
	CheckI("&sp", &sp, 2)

	wv := Twordv(3)
	CheckI("wv", wv, 3)
	CheckI("&wv", &wv, 3)

	wp := Twordp(4)
	CheckI("&wp", &wp, 4)

	bv := Tbigv([2]uintptr{5, 6})
	CheckI("bv", bv, 11)
	CheckI("&bv", &bv, 11)

	bp := Tbigp([2]uintptr{7, 8})
	CheckI("&bp", &bp, 15)

	t4 := Tm4{}
	t3 := Tm3{&t4}
	t2 := Tm2{&t3}
	t1 := Tm1{t2}
	CheckI("t4", t4, 40)
	CheckI("&t4", &t4, 40)
	CheckI("t3", t3, 40)
	CheckI("&t3", &t3, 40)
	CheckI("t2", t2, 40)
	CheckI("&t2", &t2, 40)
	CheckI("t1", t1, 40)
	CheckI("&t1", &t1, 40)

	var tnil Tinter
	vnil := ValueOf(&tnil).Elem()
	shouldPanic("Method", func() { vnil.Method(0) })
}
