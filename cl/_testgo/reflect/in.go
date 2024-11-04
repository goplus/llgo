package main

import "reflect"

func main() {
	info := "hello world"
	var fn any = func(n int) int {
		println(info, n)
		return n + 1
	}
	v := reflect.ValueOf(fn)
	t := reflect.TypeOf(fn)
	if kind := v.Type().Kind(); kind != t.Kind() && kind != reflect.Func {
		panic("kind error")
	}
	r := v.Call([]reflect.Value{reflect.ValueOf(100)})
	println(r[0].Int())
	ifn, ok := v.Interface().(func(int) int)
	if !ok {
		panic("error")
	}
	ifn(100)
}
