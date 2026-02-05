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

	// Closure call via reflect.Value.Call (ff repro).
	x := 10
	addc := func(n int) int {
		return x + n
	}
	vadd := reflect.ValueOf(addc)
	out := vadd.Call([]reflect.Value{reflect.ValueOf(5)})
	if len(out) != 1 || out[0].Int() != 15 {
		panic(fmt.Sprintf("reflect closure call failed: got %v", out))
	}
}

type T struct {
	fn func(int)
}
