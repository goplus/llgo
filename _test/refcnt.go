package main

import (
	"github.com/goplus/llgo/_test/testing"
	"github.com/goplus/llgo/py"

	"github.com/goplus/llgo/c"
)

type RefObj struct {
	refcnt c.Int
	value  float64
}

func Float(value float64) *RefObj {
	return &RefObj{1, value}
}

// llgo:incref (*RefObj).IncRef
func (o *RefObj) IncRef() {
	o.refcnt++
}

// llgo:scopeexit (*RefObj).DecRef
func (o *RefObj) DecRef() {
	o.refcnt--
}

func (o *RefObj) RefCnt() c.Int {
	return o.refcnt
}

func (o *RefObj) Float64() float64 {
	return o.value
}

type RefObjs struct {
	testEscapeFromInner_x *RefObj

	testEscapeWithCond_x *RefObj
	testEscapeWithCond_y *RefObj
	testEscapeWithCond_z *RefObj
	testEscapeWithCond_w *RefObj

	testLoop []*RefObj

	testEscapeWithLoop []*RefObj

	returnObj_x         *RefObj
	returnObjAndError_x *RefObj
}

var refObjs RefObjs

func init() {
	refObjs.testLoop = make([]*RefObj, 0)
	refObjs.testEscapeWithLoop = make([]*RefObj, 0)
}

func returnObj(f float64) *RefObj {
	x := Float(f)
	refObjs.returnObj_x = x
	return x
}

func returnObjAndError(f float64) (obj *RefObj, err error) {
	obj, err = Float(f), nil
	refObjs.returnObjAndError_x = obj
	return obj, err
}

func testEscapeFromInner() {
	var x *RefObj
	func() {
		x = Float(1000)
		refObjs.testEscapeFromInner_x = x
		// x escaped
	}()
	// x.DecRef() 没有依据
}

func testEscapeWithCond() *RefObj {
	y := Float(1000)
	z := Float(1001)
	u := Float(1002)
	w := u
	var x *RefObj
	if y.Float64() > z.Float64() {
		x = y
	} else if y.Float64() < z.Float64()-2 {
		x = z
	} else {
		x = w
	}
	refObjs.testEscapeWithCond_x = x
	refObjs.testEscapeWithCond_y = y
	refObjs.testEscapeWithCond_z = z
	refObjs.testEscapeWithCond_w = w
	return x
}

func testLoop() {
	var x *RefObj
	for i := 0; i < 10; i++ {
		x = Float(1000)
		refObjs.testLoop = append(refObjs.testLoop, x)
	}
}

func testEscapeWithLoop() *RefObj {
	var x *RefObj
	for i := 0; i < 10; i++ {
		x = Float(1000)
		refObjs.testEscapeWithLoop = append(refObjs.testEscapeWithLoop, x)
	}
	return x
}

func unused(v ...any) {
}

func assertEql(got, expected c.Int, msg string) {
	if expected != got {
		c.Printf(c.Str("assertion failed: %s, expected %d, got %d\n"), c.AllocaCStr(msg), expected, got)
		// panic("error")
	}
}

// Test escape
func TestEscape(t *testing.T) {
	a := returnObj(1)
	assertEql(a.RefCnt(), 1, "a refcnt != 1")
	assertEql(refObjs.returnObj_x.RefCnt(), 1, "returnObj_x refcnt != 1")
}

// Test escape from inner function
func TestEscapeFromInner(t *testing.T) {
	testEscapeFromInner()
	assertEql(refObjs.testEscapeFromInner_x.RefCnt(), 0, "testEscapeFromInner_x.refcnt != 0")
}

// Test escape with conditional statement
func TestEscapeWithCond(t *testing.T) {
	a := testEscapeWithCond()
	assertEql(a.RefCnt(), 1, "a refcnt != 1")
	assertEql(refObjs.testEscapeWithCond_x.RefCnt(), 0, "testEscapeWithCond_x.refcnt != 0")
	assertEql(refObjs.testEscapeWithCond_y.RefCnt(), 0, "testEscapeWithCond_y.refcnt != 0")
	assertEql(refObjs.testEscapeWithCond_z.RefCnt(), 0, "testEscapeWithCond_z.refcnt != 0")
	assertEql(refObjs.testEscapeWithCond_w.RefCnt(), 1, "testEscapeWithCond_w.refcnt != 1")
}

// Test escape with multiple return values
func TestEscapeWithMulti(t *testing.T) {
	func() {
		o, err := returnObjAndError(1)
		unused(o, err)
		assertEql(refObjs.returnObjAndError_x.RefCnt(), 1, "returnObjAndError_x refcnt != 1")
	}()
	assertEql(refObjs.returnObjAndError_x.RefCnt(), 0, "returnObjAndError_x refcnt != 0")

	func() {
		_, err := returnObjAndError(1)
		unused(err)
		assertEql(refObjs.returnObjAndError_x.RefCnt(), 1, "returnObjAndError_x refcnt != 1")
	}()
	assertEql(refObjs.returnObjAndError_x.RefCnt(), 0, "returnObjAndError_x refcnt != 0")

	func() {
		o, _ := returnObjAndError(1)
		unused(o)
		assertEql(refObjs.returnObjAndError_x.RefCnt(), 1, "returnObjAndError_x refcnt != 1")
	}()
	assertEql(refObjs.returnObjAndError_x.RefCnt(), 0, "returnObjAndError_x refcnt != 0")

	func() {
		returnObjAndError(1)
		assertEql(refObjs.returnObjAndError_x.RefCnt(), 1, "returnObjAndError_x refcnt != 1")
	}()
	assertEql(refObjs.returnObjAndError_x.RefCnt(), 0, "returnObjAndError_x refcnt != 0")
}

// Test loop
func TestLoop(t *testing.T) {
	testLoop()
	for _, o := range refObjs.testLoop {
		assertEql(o.RefCnt(), 0, "o refcnt != 0")
	}
}

// Test escape with loop
func TestEscapeWithLoop(t *testing.T) {
	a := testEscapeWithLoop()
	assertEql(a.RefCnt(), 1, "a refcnt != 1")
	for i := 0; i < len(refObjs.testEscapeWithLoop)-1; i++ {
		assertEql(refObjs.testEscapeWithLoop[i].RefCnt(), 0, "testEscapeWithLoop[i] refcnt != 0")
	}
}

func TestPy(t *testing.T) {
	l := py.NewList(1)
	item := py.Float(3.14)
	assertEql(item.RefCnt(), 1, "item refcnt != 1")
	l.ListSetItem(0, item)
	assertEql(item.RefCnt(), 2, "item refcnt != 1")
	item1 := l.ListItem(0)
	assertEql(item1.RefCnt(), 1, "item1 refcnt != 1")
}

func TestRefCnt(t *testing.T) {
	TestEscape(t)
	TestEscapeFromInner(t)
	TestEscapeWithCond(t)
	TestEscapeWithMulti(t)
	TestLoop(t)
	TestEscapeWithLoop(t)

	TestPy(t)
}
