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
	var t testingT
	TestMethod(&t)
	TestMethodValue(&t)
	TestVariadicMethodValue(&t)
	TestDirectIfaceMethod(&t)
	TestMethod5(&t)
	TestMethodSmall(&t)
	TestMethodFloat(&t)
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

// Package-level type definitions for StructResult return type
type StructResult struct{ N byte }

type TinterSmallStruct interface {
	M(int, byte) (StructResult, int)
}

type TsrSmallv byte

func (v TsrSmallv) M(x int, b byte) (StructResult, int) {
	return StructResult{b}, x + int(v)
}

type TsrSmallp byte

func (p *TsrSmallp) M(x int, b byte) (StructResult, int) {
	return StructResult{b}, x + int(*p)
}

type TsrWordv uintptr

func (v TsrWordv) M(x int, b byte) (StructResult, int) {
	return StructResult{b}, x + int(v)
}

type TsrWordp uintptr

func (p *TsrWordp) M(x int, b byte) (StructResult, int) {
	return StructResult{b}, x + int(*p)
}

type TsrBigv [2]uintptr

func (v TsrBigv) M(x int, b byte) (StructResult, int) {
	return StructResult{b}, x + int(v[0]) + int(v[1])
}

type TsrBigp [2]uintptr

func (p *TsrBigp) M(x int, b byte) (StructResult, int) {
	return StructResult{b}, x + int(p[0]) + int(p[1])
}

// Package-level type definitions for [1]byte return type
type TinterSmallArray interface {
	M(int, byte) ([1]byte, int)
}

type TarSmallv byte

func (v TarSmallv) M(x int, b byte) ([1]byte, int) {
	return [1]byte{b}, x + int(v)
}

type TarSmallp byte

func (p *TarSmallp) M(x int, b byte) ([1]byte, int) {
	return [1]byte{b}, x + int(*p)
}

type TarWordv uintptr

func (v TarWordv) M(x int, b byte) ([1]byte, int) {
	return [1]byte{b}, x + int(v)
}

type TarWordp uintptr

func (p *TarWordp) M(x int, b byte) ([1]byte, int) {
	return [1]byte{b}, x + int(*p)
}

type TarBigv [2]uintptr

func (v TarBigv) M(x int, b byte) ([1]byte, int) {
	return [1]byte{b}, x + int(v[0]) + int(v[1])
}

type TarBigp [2]uintptr

func (p *TarBigp) M(x int, b byte) ([1]byte, int) {
	return [1]byte{b}, x + int(p[0]) + int(p[1])
}

// Embedding via pointer for StructResult return type
type TsrEmb1 struct{ TsrEmb2 }
type TsrEmb2 struct{ *TsrEmb3 }
type TsrEmb3 struct{ *TsrEmb4 }
type TsrEmb4 struct{}

func (t4 TsrEmb4) M(x int, b byte) (StructResult, int) {
	return StructResult{b}, x + 40
}

// Embedding via pointer for [1]byte return type
type TarEmb1 struct{ TarEmb2 }
type TarEmb2 struct{ *TarEmb3 }
type TarEmb3 struct{ *TarEmb4 }
type TarEmb4 struct{}

func (t4 TarEmb4) M(x int, b byte) ([1]byte, int) {
	return [1]byte{b}, x + 40
}

// TestMethodSmall is similar to TestMethod5 but tests methods returning small aggregates
func TestMethodSmall(t *testingT) {
	// Helper function: check return value of small struct
	CheckStructF := func(name string, f func(int, byte) (StructResult, int), inc int) {
		ret, x := f(1000, 99)
		if ret.N != byte(99) || x != 1000+inc {
			t.Errorf("%s(1000, 99) = {%v}, %v, want {99}, %v", name, ret.N, x, 1000+inc)
		}
	}

	// Helper function: check via reflection with small struct return
	CheckStructV := func(name string, i Value, inc int) {
		bx := i.Method(0).Call([]Value{ValueOf(1000), ValueOf(byte(99))})
		structVal := bx[0]
		ret := structVal.Field(0).Interface()
		x := bx[1].Interface()
		if ret != byte(99) || x != 1000+inc {
			t.Errorf("direct %s.M(1000, 99) = {%v}, %v, want {99}, %v", name, ret, x, 1000+inc)
		}
		CheckStructF(name+".M", i.Method(0).Interface().(func(int, byte) (StructResult, int)), inc)
	}

	TinterStructType := TypeOf((*TinterSmallStruct)(nil)).Elem()

	// Helper function: check both direct and interface-converted calls for struct
	CheckStructI := func(name string, i any, inc int) {
		v := ValueOf(i)
		CheckStructV(name, v, inc)
		CheckStructV("(i="+name+")", v.Convert(TinterStructType), inc)
	}

	// Helper function: check return value of small array
	CheckArrayF := func(name string, f func(int, byte) ([1]byte, int), inc int) {
		ret, x := f(1000, 99)
		if ret[0] != byte(99) || x != 1000+inc {
			t.Errorf("%s(1000, 99) = [%v], %v, want [99], %v", name, ret[0], x, 1000+inc)
		}
	}

	// Helper function: check via reflection with small array return
	CheckArrayV := func(name string, i Value, inc int) {
		bx := i.Method(0).Call([]Value{ValueOf(1000), ValueOf(byte(99))})
		arrVal := bx[0]
		if arrVal.Len() < 1 {
			t.Errorf("returned array length insufficient")
			return
		}
		ret := arrVal.Index(0).Interface()
		x := bx[1].Interface()
		if ret != byte(99) || x != 1000+inc {
			t.Errorf("direct %s.M(1000, 99) = [%v], %v, want [99], %v", name, ret, x, 1000+inc)
		}
		CheckArrayF(name+".M", i.Method(0).Interface().(func(int, byte) ([1]byte, int)), inc)
	}

	TinterArrayType := TypeOf((*TinterSmallArray)(nil)).Elem()

	// Helper function: check both direct and interface-converted calls for array
	CheckArrayI := func(name string, i any, inc int) {
		v := ValueOf(i)
		CheckArrayV(name, v, inc)
		CheckArrayV("(i="+name+")", v.Convert(TinterArrayType), inc)
	}

	// Test cases for StructResult return type

	// Small receiver types (byte)
	ssv := TsrSmallv(1)
	CheckStructI("ssv", ssv, 1)
	CheckStructI("&ssv", &ssv, 1)

	ssp := TsrSmallp(2)
	CheckStructI("&ssp", &ssp, 2)

	// Word-sized receiver types (uintptr)
	wsv := TsrWordv(3)
	CheckStructI("wsv", wsv, 3)
	CheckStructI("&wsv", &wsv, 3)

	wsp := TsrWordp(4)
	CheckStructI("&wsp", &wsp, 4)

	// Large receiver types ([2]uintptr)
	bsv := TsrBigv([2]uintptr{5, 6})
	CheckStructI("bsv", bsv, 11)
	CheckStructI("&bsv", &bsv, 11)

	bsp := TsrBigp([2]uintptr{7, 8})
	CheckStructI("&bsp", &bsp, 15)

	// Embedded structs (pointer embedding chain)
	tsm4 := TsrEmb4{}
	tsm3 := TsrEmb3{&tsm4}
	tsm2 := TsrEmb2{&tsm3}
	tsm1 := TsrEmb1{tsm2}
	CheckStructI("tsm4", tsm4, 40)
	CheckStructI("&tsm4", &tsm4, 40)
	CheckStructI("tsm3", tsm3, 40)
	CheckStructI("&tsm3", &tsm3, 40)
	CheckStructI("tsm2", tsm2, 40)
	CheckStructI("&tsm2", &tsm2, 40)
	CheckStructI("tsm1", tsm1, 40)
	CheckStructI("&tsm1", &tsm1, 40)

	// Test cases for [1]byte return type

	// Small receiver types (byte)
	sav := TarSmallv(1)
	CheckArrayI("sav", sav, 1)
	CheckArrayI("&sav", &sav, 1)

	sap := TarSmallp(2)
	CheckArrayI("&sap", &sap, 2)

	// Word-sized receiver types (uintptr)
	wav := TarWordv(3)
	CheckArrayI("wav", wav, 3)
	CheckArrayI("&wav", &wav, 3)

	wap := TarWordp(4)
	CheckArrayI("&wap", &wap, 4)

	// Large receiver types ([2]uintptr)
	bav := TarBigv([2]uintptr{5, 6})
	CheckArrayI("bav", bav, 11)
	CheckArrayI("&bav", &bav, 11)

	bap := TarBigp([2]uintptr{7, 8})
	CheckArrayI("&bap", &bap, 15)

	// Embedded structs (pointer embedding chain)
	tam4 := TarEmb4{}
	tam3 := TarEmb3{&tam4}
	tam2 := TarEmb2{&tam3}
	tam1 := TarEmb1{tam2}
	CheckArrayI("tam4", tam4, 40)
	CheckArrayI("&tam4", &tam4, 40)
	CheckArrayI("tam3", tam3, 40)
	CheckArrayI("&tam3", &tam3, 40)
	CheckArrayI("tam2", tam2, 40)
	CheckArrayI("&tam2", &tam2, 40)
	CheckArrayI("tam1", tam1, 40)
	CheckArrayI("&tam1", &tam1, 40)
}

// Package-level type definitions for float32 return type
type TinterFloat32 interface {
	M(int, byte) (float32, int)
}

type T32Smallv byte

func (v T32Smallv) M(x int, b byte) (float32, int) {
	return float32(b), x + int(v)
}

type T32Smallp byte

func (p *T32Smallp) M(x int, b byte) (float32, int) {
	return float32(b), x + int(*p)
}

type T32Wordv uintptr

func (v T32Wordv) M(x int, b byte) (float32, int) {
	return float32(b), x + int(v)
}

type T32Wordp uintptr

func (p *T32Wordp) M(x int, b byte) (float32, int) {
	return float32(b), x + int(*p)
}

type T32Bigv [2]uintptr

func (v T32Bigv) M(x int, b byte) (float32, int) {
	return float32(b), x + int(v[0]) + int(v[1])
}

type T32Bigp [2]uintptr

func (p *T32Bigp) M(x int, b byte) (float32, int) {
	return float32(b), x + int(p[0]) + int(p[1])
}

// Embedding via pointer for float32 return type
type T32Emb1 struct{ T32Emb2 }
type T32Emb2 struct{ *T32Emb3 }
type T32Emb3 struct{ *T32Emb4 }
type T32Emb4 struct{}

func (t4 T32Emb4) M(x int, b byte) (float32, int) {
	return float32(b), x + 40
}

// Package-level type definitions for float64 return type
type TinterFloat64 interface {
	M(int, byte) (float64, int)
}

type T64Smallv byte

func (v T64Smallv) M(x int, b byte) (float64, int) {
	return float64(b), x + int(v)
}

type T64Smallp byte

func (p *T64Smallp) M(x int, b byte) (float64, int) {
	return float64(b), x + int(*p)
}

type T64Wordv uintptr

func (v T64Wordv) M(x int, b byte) (float64, int) {
	return float64(b), x + int(v)
}

type T64Wordp uintptr

func (p *T64Wordp) M(x int, b byte) (float64, int) {
	return float64(b), x + int(*p)
}

type T64Bigv [2]uintptr

func (v T64Bigv) M(x int, b byte) (float64, int) {
	return float64(b), x + int(v[0]) + int(v[1])
}

type T64Bigp [2]uintptr

func (p *T64Bigp) M(x int, b byte) (float64, int) {
	return float64(b), x + int(p[0]) + int(p[1])
}

// Embedding via pointer for float64 return type
type T64Emb1 struct{ T64Emb2 }
type T64Emb2 struct{ *T64Emb3 }
type T64Emb3 struct{ *T64Emb4 }
type T64Emb4 struct{}

func (t4 T64Emb4) M(x int, b byte) (float64, int) {
	return float64(b), x + 40
}

// Package-level type definitions for float32 struct return type
type Float32Struct struct{ N float32 }

type TinterFloat32Struct interface {
	M(int, byte) (Float32Struct, int)
}

type T32sSmallv byte

func (v T32sSmallv) M(x int, b byte) (Float32Struct, int) {
	return Float32Struct{float32(b)}, x + int(v)
}

type T32sSmallp byte

func (p *T32sSmallp) M(x int, b byte) (Float32Struct, int) {
	return Float32Struct{float32(b)}, x + int(*p)
}

type T32sWordv uintptr

func (v T32sWordv) M(x int, b byte) (Float32Struct, int) {
	return Float32Struct{float32(b)}, x + int(v)
}

type T32sWordp uintptr

func (p *T32sWordp) M(x int, b byte) (Float32Struct, int) {
	return Float32Struct{float32(b)}, x + int(*p)
}

type T32sBigv [2]uintptr

func (v T32sBigv) M(x int, b byte) (Float32Struct, int) {
	return Float32Struct{float32(b)}, x + int(v[0]) + int(v[1])
}

type T32sBigp [2]uintptr

func (p *T32sBigp) M(x int, b byte) (Float32Struct, int) {
	return Float32Struct{float32(b)}, x + int(p[0]) + int(p[1])
}

// Embedding via pointer for float32 struct return type
type T32sEmb1 struct{ T32sEmb2 }
type T32sEmb2 struct{ *T32sEmb3 }
type T32sEmb3 struct{ *T32sEmb4 }
type T32sEmb4 struct{}

func (t4 T32sEmb4) M(x int, b byte) (Float32Struct, int) {
	return Float32Struct{float32(b)}, x + 40
}

// TestMethodFloat tests methods returning float32, float64, and float32 struct
func TestMethodFloat(t *testingT) {
	// Helper function: check return value of float32
	CheckFloat32F := func(name string, f func(int, byte) (float32, int), inc int) {
		ret, x := f(1000, 99)
		if ret != float32(99) || x != 1000+inc {
			t.Errorf("%s(1000, 99) = %v, %v, want 99, %v", name, ret, x, 1000+inc)
		}
	}

	CheckFloat32V := func(name string, i Value, inc int) {
		bx := i.Method(0).Call([]Value{ValueOf(1000), ValueOf(byte(99))})
		ret := bx[0].Interface()
		x := bx[1].Interface()
		if ret != float32(99) || x != 1000+inc {
			t.Errorf("direct %s.M(1000, 99) = %v, %v, want 99, %v", name, ret, x, 1000+inc)
		}
		CheckFloat32F(name+".M", i.Method(0).Interface().(func(int, byte) (float32, int)), inc)
	}

	TinterFloat32Type := TypeOf((*TinterFloat32)(nil)).Elem()

	CheckFloat32I := func(name string, i any, inc int) {
		v := ValueOf(i)
		CheckFloat32V(name, v, inc)
		CheckFloat32V("(i="+name+")", v.Convert(TinterFloat32Type), inc)
	}

	// Helper function: check return value of float64
	CheckFloat64F := func(name string, f func(int, byte) (float64, int), inc int) {
		ret, x := f(1000, 99)
		if ret != float64(99) || x != 1000+inc {
			t.Errorf("%s(1000, 99) = %v, %v, want 99, %v", name, ret, x, 1000+inc)
		}
	}

	CheckFloat64V := func(name string, i Value, inc int) {
		bx := i.Method(0).Call([]Value{ValueOf(1000), ValueOf(byte(99))})
		ret := bx[0].Interface()
		x := bx[1].Interface()
		if ret != float64(99) || x != 1000+inc {
			t.Errorf("direct %s.M(1000, 99) = %v, %v, want 99, %v", name, ret, x, 1000+inc)
		}
		CheckFloat64F(name+".M", i.Method(0).Interface().(func(int, byte) (float64, int)), inc)
	}

	TinterFloat64Type := TypeOf((*TinterFloat64)(nil)).Elem()

	CheckFloat64I := func(name string, i any, inc int) {
		v := ValueOf(i)
		CheckFloat64V(name, v, inc)
		CheckFloat64V("(i="+name+")", v.Convert(TinterFloat64Type), inc)
	}

	// Helper function: check return value of float32 struct
	CheckFloat32StructF := func(name string, f func(int, byte) (Float32Struct, int), inc int) {
		ret, x := f(1000, 99)
		if ret.N != float32(99) || x != 1000+inc {
			t.Errorf("%s(1000, 99) = {%v}, %v, want {99}, %v", name, ret.N, x, 1000+inc)
		}
	}

	CheckFloat32StructV := func(name string, i Value, inc int) {
		bx := i.Method(0).Call([]Value{ValueOf(1000), ValueOf(byte(99))})
		structVal := bx[0]
		ret := structVal.Field(0).Interface()
		x := bx[1].Interface()
		if ret != float32(99) || x != 1000+inc {
			t.Errorf("direct %s.M(1000, 99) = {%v}, %v, want {99}, %v", name, ret, x, 1000+inc)
		}
		CheckFloat32StructF(name+".M", i.Method(0).Interface().(func(int, byte) (Float32Struct, int)), inc)
	}

	TinterFloat32StructType := TypeOf((*TinterFloat32Struct)(nil)).Elem()

	CheckFloat32StructI := func(name string, i any, inc int) {
		v := ValueOf(i)
		CheckFloat32StructV(name, v, inc)
		CheckFloat32StructV("(i="+name+")", v.Convert(TinterFloat32StructType), inc)
	}

	// Test cases for float32 return type

	// Small receiver types (byte)
	s32v := T32Smallv(1)
	CheckFloat32I("s32v", s32v, 1)
	CheckFloat32I("&s32v", &s32v, 1)

	s32p := T32Smallp(2)
	CheckFloat32I("&s32p", &s32p, 2)

	// Word-sized receiver types (uintptr)
	w32v := T32Wordv(3)
	CheckFloat32I("w32v", w32v, 3)
	CheckFloat32I("&w32v", &w32v, 3)

	w32p := T32Wordp(4)
	CheckFloat32I("&w32p", &w32p, 4)

	// Large receiver types ([2]uintptr)
	b32v := T32Bigv([2]uintptr{5, 6})
	CheckFloat32I("b32v", b32v, 11)
	CheckFloat32I("&b32v", &b32v, 11)

	b32p := T32Bigp([2]uintptr{7, 8})
	CheckFloat32I("&b32p", &b32p, 15)

	// Embedded structs (pointer embedding chain) for float32
	t32m4 := T32Emb4{}
	t32m3 := T32Emb3{&t32m4}
	t32m2 := T32Emb2{&t32m3}
	t32m1 := T32Emb1{t32m2}
	CheckFloat32I("t32m4", t32m4, 40)
	CheckFloat32I("&t32m4", &t32m4, 40)
	CheckFloat32I("t32m3", t32m3, 40)
	CheckFloat32I("&t32m3", &t32m3, 40)
	CheckFloat32I("t32m2", t32m2, 40)
	CheckFloat32I("&t32m2", &t32m2, 40)
	CheckFloat32I("t32m1", t32m1, 40)
	CheckFloat32I("&t32m1", &t32m1, 40)

	// Test cases for float64 return type

	// Small receiver types (byte)
	s64v := T64Smallv(1)
	CheckFloat64I("s64v", s64v, 1)
	CheckFloat64I("&s64v", &s64v, 1)

	s64p := T64Smallp(2)
	CheckFloat64I("&s64p", &s64p, 2)

	// Word-sized receiver types (uintptr)
	w64v := T64Wordv(3)
	CheckFloat64I("w64v", w64v, 3)
	CheckFloat64I("&w64v", &w64v, 3)

	w64p := T64Wordp(4)
	CheckFloat64I("&w64p", &w64p, 4)

	// Large receiver types ([2]uintptr)
	b64v := T64Bigv([2]uintptr{5, 6})
	CheckFloat64I("b64v", b64v, 11)
	CheckFloat64I("&b64v", &b64v, 11)

	b64p := T64Bigp([2]uintptr{7, 8})
	CheckFloat64I("&b64p", &b64p, 15)

	// Embedded structs (pointer embedding chain) for float64
	t64m4 := T64Emb4{}
	t64m3 := T64Emb3{&t64m4}
	t64m2 := T64Emb2{&t64m3}
	t64m1 := T64Emb1{t64m2}
	CheckFloat64I("t64m4", t64m4, 40)
	CheckFloat64I("&t64m4", &t64m4, 40)
	CheckFloat64I("t64m3", t64m3, 40)
	CheckFloat64I("&t64m3", &t64m3, 40)
	CheckFloat64I("t64m2", t64m2, 40)
	CheckFloat64I("&t64m2", &t64m2, 40)
	CheckFloat64I("t64m1", t64m1, 40)
	CheckFloat64I("&t64m1", &t64m1, 40)

	// Test cases for float32 struct return type

	// Small receiver types (byte)
	s32sv := T32sSmallv(1)
	CheckFloat32StructI("s32sv", s32sv, 1)
	CheckFloat32StructI("&s32sv", &s32sv, 1)

	s32sp := T32sSmallp(2)
	CheckFloat32StructI("&s32sp", &s32sp, 2)

	// Word-sized receiver types (uintptr)
	w32sv := T32sWordv(3)
	CheckFloat32StructI("w32sv", w32sv, 3)
	CheckFloat32StructI("&w32sv", &w32sv, 3)

	w32sp := T32sWordp(4)
	CheckFloat32StructI("&w32sp", &w32sp, 4)

	// Large receiver types ([2]uintptr)
	b32sv := T32sBigv([2]uintptr{5, 6})
	CheckFloat32StructI("b32sv", b32sv, 11)
	CheckFloat32StructI("&b32sv", &b32sv, 11)

	b32sp := T32sBigp([2]uintptr{7, 8})
	CheckFloat32StructI("&b32sp", &b32sp, 15)

	// Embedded structs (pointer embedding chain) for float32 struct
	t32sm4 := T32sEmb4{}
	t32sm3 := T32sEmb3{&t32sm4}
	t32sm2 := T32sEmb2{&t32sm3}
	t32sm1 := T32sEmb1{t32sm2}
	CheckFloat32StructI("t32sm4", t32sm4, 40)
	CheckFloat32StructI("&t32sm4", &t32sm4, 40)
	CheckFloat32StructI("t32sm3", t32sm3, 40)
	CheckFloat32StructI("&t32sm3", &t32sm3, 40)
	CheckFloat32StructI("t32sm2", t32sm2, 40)
	CheckFloat32StructI("&t32sm2", &t32sm2, 40)
	CheckFloat32StructI("t32sm1", t32sm1, 40)
	CheckFloat32StructI("&t32sm1", &t32sm1, 40)
}
