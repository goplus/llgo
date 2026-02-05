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

	// More complex closure calls: multi-args / multi-returns with free vars.
	base := 7
	scale := 3
	mix := func(a, b int, tag string) (int, string) {
		return base + a*scale + b, fmt.Sprintf("%s:%d", tag, base)
	}
	vmix := reflect.ValueOf(mix)
	mout := vmix.Call([]reflect.Value{
		reflect.ValueOf(2),
		reflect.ValueOf(5),
		reflect.ValueOf("k"),
	})
	if len(mout) != 2 || mout[0].Int() != 18 || mout[1].String() != "k:7" {
		panic(fmt.Sprintf("reflect closure multi call failed: got %v", mout))
	}

	offset := 100
	swapAdd := func(a int, b int) (int, int) {
		return b + offset, a + offset
	}
	vswap := reflect.ValueOf(swapAdd)
	sout := vswap.Call([]reflect.Value{reflect.ValueOf(1), reflect.ValueOf(9)})
	if len(sout) != 2 || sout[0].Int() != 109 || sout[1].Int() != 101 {
		panic(fmt.Sprintf("reflect closure swap call failed: got %v", sout))
	}
}

type T struct {
	fn func(int)
}
