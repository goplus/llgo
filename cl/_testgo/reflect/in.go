package main

import "reflect"

func main() {
	callFunc()
	callClosure()
	callMethod()
	callIMethod()
}

func callFunc() {
	var f any = func(n int) int {
		println("call.func")
		return n + 1
	}
	fn := reflect.ValueOf(f)
	println("func", fn.Kind(), fn.Type().String())
	r := fn.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r[0].Int())
	ifn, ok := fn.Interface().(func(int) int)
	if !ok {
		panic("error")
	}
	ifn(100)
}

func callClosure() {
	m := 100
	var f any = func(n int) int {
		println("call.closure")
		return m + n + 1
	}
	fn := reflect.ValueOf(f)
	println("closure", fn.Kind(), fn.Type().String())
	r := fn.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r[0].Int())
	ifn, ok := fn.Interface().(func(int) int)
	if !ok {
		panic("error")
	}
	ifn(100)
}

type T struct {
	n int
}

func (t *T) Add(n int) int {
	println("call.method")
	t.n += n
	return t.n
}

type I interface {
	Add(n int) int
}

func callMethod() {
	t := &T{1}
	v := reflect.ValueOf(t)
	fn := v.Method(0)
	println("method", fn.Kind(), fn.Type().String())
	r := fn.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r[0].Int())
	// ifn, ok := fn.Interface().(func(int) int)
	// if !ok {
	// 	panic("error")
	// }
	// ifn(1)
}

func callIMethod() {
	var i I = &T{1}
	v := reflect.ValueOf(i)
	fn := v.Method(0)
	println("imethod", fn.Kind(), fn.Type().String())
	r := fn.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r[0].Int())
	// ifn, ok := fn.Interface().(func(int) int)
	// if !ok {
	// 	panic("error")
	// }
	// ifn(1)
}
