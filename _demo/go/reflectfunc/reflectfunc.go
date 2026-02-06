package main

import (
	"fmt"
	"reflect"
)

func add(a, b int) int {
	return a + b
}

func main() {
	fn := func(a, b int) int {
		return a + b
	}
	var i int
	fn1 := func() {
		i++
	}
	fn2 := func() func() {
		return func() {
			println("closure", i)
		}
	}

	fns := []any{add, fn, fn1, fn2}
	for _, fn := range fns {
		v := reflect.ValueOf(fn)
		fmt.Println(v.Type())
		fmt.Println(v.Kind())
		if v.Kind() != reflect.Func {
			panic(fmt.Sprintf("not func: %T", fn))
		}

		t := v.Type()
		fmt.Println(t)
		fmt.Println(t.Kind())
		if t.Kind() != reflect.Func {
			panic(fmt.Sprintf("not func: %T", fn))
		}
	}
	v := reflect.ValueOf(T{})
	if v.Field(0).Kind() != reflect.Func {
		panic("must func")
	}

	// Closure reflect calls with stack-passed arguments (and free variables).
	base := 7
	fBig := func(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10 int) (int, int) {
		base++
		_ = a2
		_ = a3
		_ = a4
		_ = a7
		_ = a8
		_ = a9
		return a1 + a10 + base, a5 + a6 + base
	}
	vBig := reflect.ValueOf(fBig)
	inBig := []reflect.Value{
		reflect.ValueOf(1),
		reflect.ValueOf(2),
		reflect.ValueOf(3),
		reflect.ValueOf(4),
		reflect.ValueOf(5),
		reflect.ValueOf(6),
		reflect.ValueOf(7),
		reflect.ValueOf(8),
		reflect.ValueOf(9),
		reflect.ValueOf(10),
	}
	out := vBig.Call(inBig)
	got0 := int(out[0].Int())
	got1 := int(out[1].Int())
	want0 := 1 + 10 + 8
	want1 := 5 + 6 + 8
	if got0 != want0 || got1 != want1 {
		panic(fmt.Sprintf("closure big call #1 = %d,%d; want %d,%d", got0, got1, want0, want1))
	}
	out = vBig.Call(inBig)
	got0 = int(out[0].Int())
	got1 = int(out[1].Int())
	want0 = 1 + 10 + 9
	want1 = 5 + 6 + 9
	if got0 != want0 || got1 != want1 {
		panic(fmt.Sprintf("closure big call #2 = %d,%d; want %d,%d", got0, got1, want0, want1))
	}
}

type T struct {
	fn func(int)
}
