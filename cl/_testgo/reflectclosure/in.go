package main

import (
	"reflect"
)

// --- Test closures stored in struct fields accessed via reflect ---

type ClosureHolder struct {
	NoFreeVar   func() int
	WithFreeVar func() int
	MethodVal   func(int) int
}

type Counter struct {
	value int
}

func (c *Counter) Add(x int) int {
	return c.value + x
}

// testReflectCallNoFreeVar: reflect.Call on closure without free vars
func testReflectCallNoFreeVar() {
	println("testReflectCallNoFreeVar: start")
	holder := &ClosureHolder{
		NoFreeVar: func() int {
			println("  NoFreeVar: called")
			return 42
		},
	}
	v := reflect.ValueOf(holder).Elem()
	fn := v.FieldByName("NoFreeVar")
	println("  reflect: got field, calling...")
	results := fn.Call(nil)
	println("  reflect: call returned:", results[0].Int())
}

// testReflectCallWithFreeVar: reflect.Call on closure with captured variable
func testReflectCallWithFreeVar() {
	println("testReflectCallWithFreeVar: start")
	captured := 100
	holder := &ClosureHolder{
		WithFreeVar: func() int {
			println("  WithFreeVar: called, captured =", captured)
			return captured + 1
		},
	}
	v := reflect.ValueOf(holder).Elem()
	fn := v.FieldByName("WithFreeVar")
	println("  reflect: got field, calling...")
	results := fn.Call(nil)
	println("  reflect: call returned:", results[0].Int())
}

// testReflectCallMethodValue: reflect.Call on method value stored in field
func testReflectCallMethodValue() {
	println("testReflectCallMethodValue: start")
	counter := &Counter{value: 50}
	holder := &ClosureHolder{
		MethodVal: counter.Add, // method value captures receiver
	}
	v := reflect.ValueOf(holder).Elem()
	fn := v.FieldByName("MethodVal")
	println("  reflect: got field, calling with arg 7...")
	results := fn.Call([]reflect.Value{reflect.ValueOf(7)})
	println("  reflect: call returned:", results[0].Int())
}

// testReflectCallDirect: reflect.Call directly on closure value
func testReflectCallDirect() {
	println("testReflectCallDirect: start")
	base := 200
	closure := func(x int) int {
		println("  closure: called with", x, ", base =", base)
		return base + x
	}
	fnVal := reflect.ValueOf(closure)
	println("  reflect: calling closure directly...")
	results := fnVal.Call([]reflect.Value{reflect.ValueOf(5)})
	println("  reflect: call returned:", results[0].Int())
}

// testReflectCallNested: nested closure via reflect
func testReflectCallNested() {
	println("testReflectCallNested: start")
	outer := 10
	makeInner := func() func() int {
		inner := 20
		return func() int {
			println("  nested closure: outer =", outer, ", inner =", inner)
			return outer + inner
		}
	}
	closure := makeInner()
	fnVal := reflect.ValueOf(closure)
	println("  reflect: calling nested closure...")
	results := fnVal.Call(nil)
	println("  reflect: call returned:", results[0].Int())
}

// testReflectInterfaceMethod: get interface method via reflect and call
func testReflectInterfaceMethod() {
	println("testReflectInterfaceMethod: start")
	counter := &Counter{value: 77}
	var iface interface{ Add(int) int } = counter

	v := reflect.ValueOf(iface)
	method := v.MethodByName("Add")
	println("  reflect: got method, calling with arg 3...")
	results := method.Call([]reflect.Value{reflect.ValueOf(3)})
	println("  reflect: call returned:", results[0].Int())
}

// testReflectMakeFunc: use reflect.MakeFunc to wrap closure
func testReflectMakeFunc() {
	println("testReflectMakeFunc: start")
	captured := 1000
	swap := func(args []reflect.Value) []reflect.Value {
		println("  MakeFunc wrapper: captured =", captured)
		return []reflect.Value{args[1], args[0]}
	}

	fnType := reflect.FuncOf(
		[]reflect.Type{reflect.TypeOf(0), reflect.TypeOf(0)},
		[]reflect.Type{reflect.TypeOf(0), reflect.TypeOf(0)},
		false,
	)
	fn := reflect.MakeFunc(fnType, swap)
	println("  reflect: calling MakeFunc result...")
	results := fn.Call([]reflect.Value{reflect.ValueOf(1), reflect.ValueOf(2)})
	println("  reflect: call returned:", results[0].Int(), results[1].Int())
}

func main() {
	println("=== Reflect + Closure Tests ===")

	testReflectCallNoFreeVar()
	testReflectCallWithFreeVar()
	testReflectCallMethodValue()
	testReflectCallDirect()
	testReflectCallNested()
	testReflectInterfaceMethod()
	testReflectMakeFunc()

	println("=== All tests passed! ===")
}
