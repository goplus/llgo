package main

import "reflect"

func main() {
	tyIntSlice := reflect.SliceOf(reflect.TypeOf(0))
	println(tyIntSlice.String())

	v := reflect.Zero(tyIntSlice)
	println(v.Len())

	v = reflect.ValueOf(100)
	println(v.Int())
}
