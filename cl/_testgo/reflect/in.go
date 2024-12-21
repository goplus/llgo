package main

import (
	"reflect"
	"unsafe"
)

func main() {
	callSlice()
	callFunc()
	callClosure()
	callMethod()
	callIMethod()
	mapDemo1()
	mapDemo2()
}

func demo(n1, n2, n3, n4, n5, n6, n7, n8, n9 int, a ...interface{}) (int, int) {
	var sum int
	for _, v := range a {
		sum += v.(int)
	}
	return n1 + n2 + n3 + n4 + n5 + n6 + n7 + n8 + n9, sum
}

func callSlice() {
	v := reflect.ValueOf(demo)
	n := reflect.ValueOf(1)
	r := v.Call([]reflect.Value{n, n, n, n, n, n, n, n, n,
		reflect.ValueOf(1), reflect.ValueOf(2), reflect.ValueOf(3)})
	println("call.slice", r[0].Int(), r[1].Int())
	r = v.CallSlice([]reflect.Value{n, n, n, n, n, n, n, n, n,
		reflect.ValueOf([]interface{}{1, 2, 3})})
	println("call.slice", r[0].Int(), r[1].Int())
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

type abi struct {
	typ  unsafe.Pointer
	data unsafe.Pointer
}

func callMethod() {
	t := &T{1}
	v := reflect.ValueOf(t)
	fn := v.Method(0)
	println("method", fn.Kind(), fn.Type().String())
	r := fn.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r[0].Int())
	ifn, ok := fn.Interface().(func(int) int)
	if !ok {
		panic("error")
	}
	ifn(1)
	v2 := reflect.ValueOf(fn.Interface())
	r2 := v2.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r2[0].Int())
}

func callIMethod() {
	var i I = &T{1}
	v := reflect.ValueOf(i)
	fn := v.Method(0)
	println("imethod", fn.Kind(), fn.Type().String())
	r := fn.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r[0].Int())
	ifn, ok := fn.Interface().(func(int) int)
	if !ok {
		panic("error")
	}
	ifn(1)
	v2 := reflect.ValueOf(fn.Interface())
	r2 := v2.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r2[0].Int())
}

func mapDemo1() {
	m := map[int]string{
		1: "hello",
		2: "world",
	}
	v := reflect.ValueOf(m)
	if v.Len() != 2 || len(v.MapKeys()) != 2 {
		panic("error")
	}
	if v.MapIndex(reflect.ValueOf(2)).String() != "world" {
		panic("MapIndex error")
	}
	v.SetMapIndex(reflect.ValueOf(2), reflect.ValueOf("todo"))
	if v.MapIndex(reflect.ValueOf(2)).String() != "todo" {
		panic("MapIndex error")
	}
	if v.MapIndex(reflect.ValueOf(0)).IsValid() {
		println("must invalid")
	}
	key := reflect.New(v.Type().Key()).Elem()
	value := reflect.New(v.Type().Elem()).Elem()
	iter := v.MapRange()
	for iter.Next() {
		key.SetIterKey(iter)
		value.SetIterValue(iter)
		if key.Int() != iter.Key().Int() || value.String() != iter.Value().String() {
			panic("MapIter error")
		}
	}
}

func mapDemo2() {
	v := reflect.MakeMap(reflect.MapOf(reflect.TypeOf(0), reflect.TypeOf("")))
	v.SetMapIndex(reflect.ValueOf(1), reflect.ValueOf("hello"))
	v.SetMapIndex(reflect.ValueOf(2), reflect.ValueOf("world"))
	if v.Len() != 2 || len(v.MapKeys()) != 2 {
		panic("error")
	}
	if v.MapIndex(reflect.ValueOf(2)).String() != "world" {
		panic("MapIndex error")
	}
	v.SetMapIndex(reflect.ValueOf(2), reflect.ValueOf("todo"))
	if v.MapIndex(reflect.ValueOf(2)).String() != "todo" {
		panic("MapIndex error")
	}
	if v.MapIndex(reflect.ValueOf(0)).IsValid() {
		println("must invalid")
	}
	key := reflect.New(v.Type().Key()).Elem()
	value := reflect.New(v.Type().Elem()).Elem()
	iter := v.MapRange()
	for iter.Next() {
		key.SetIterKey(iter)
		value.SetIterValue(iter)
		if key.Int() != iter.Key().Int() || value.String() != iter.Value().String() {
			panic("MapIter error")
		}
	}
}
