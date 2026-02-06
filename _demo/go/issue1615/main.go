package main

import (
	"fmt"
	"reflect"
)

func testClosureReflectCall() {
	x := 10
	add := func(n int) int {
		return x + n
	}

	if got, want := add(5), 15; got != want {
		panic(fmt.Sprintf("direct closure: got %d, want %d", got, want))
	}

	v := reflect.ValueOf(add)
	r := v.Call([]reflect.Value{reflect.ValueOf(5)})
	if len(r) != 1 {
		panic(fmt.Sprintf("reflect closure: got %d returns, want 1", len(r)))
	}
	if got, want := int(r[0].Int()), 15; got != want {
		panic(fmt.Sprintf("reflect closure: got %d, want %d", got, want))
	}
}

type Point struct {
	x int
	y int
}

func (p Point) Dist(scale int) int {
	return (p.x*p.x + p.y*p.y) * scale
}

func testMethodValueInterfaceCall() {
	p := Point{3, 4}
	mv := reflect.ValueOf(p).MethodByName("Dist")
	if !mv.IsValid() {
		panic("reflect method value: MethodByName returned invalid Value")
	}

	// This path already worked in the issue report.
	gotViaCall := int(mv.Call([]reflect.Value{reflect.ValueOf(2)})[0].Int())
	if gotViaCall != 50 {
		panic(fmt.Sprintf("reflect method value Call: got %d, want 50", gotViaCall))
	}

	// This path crashed on ctx-reg targets (issue #1615).
	f := mv.Interface().(func(int) int)
	gotViaIface := f(2)
	if gotViaIface != 50 {
		panic(fmt.Sprintf("reflect method value via Interface(): got %d, want 50", gotViaIface))
	}
}

func main() {
	testClosureReflectCall()
	testMethodValueInterfaceCall()
	fmt.Println("ok")
}
