package main

import (
	"reflect"
	"strings"
)

func main() {
	typ := reflect.FuncOf([]reflect.Type{reflect.TypeOf(""), reflect.TypeOf(0)}, []reflect.Type{reflect.TypeOf("")}, false)
	fn := reflect.MakeFunc(typ, func(args []reflect.Value) []reflect.Value {
		r := strings.Repeat(args[0].String(), int(args[1].Int()))
		return []reflect.Value{reflect.ValueOf(r)}
	})
	r := fn.Interface().(func(string, int) string)("abc", 2)
	if r != "abcabc" {
		panic("reflect.FuncOf error")
	}
	_, ok := reflect.New(reflect.SliceOf(reflect.TypeOf(t{}))).Elem().Interface().([]t)
	if !ok {
		panic("reflect.SliceOf error")
	}
}

type t struct {
	n int
}
