package main

import "reflect"

func main() {
	tyIntSlice := reflect.SliceOf(reflect.TypeOf(0))
	v := reflect.Zero(tyIntSlice)
	v = reflect.Append(v, reflect.ValueOf(1), reflect.ValueOf(2), reflect.ValueOf(3))
	for i, n := 0, v.Len(); i < n; i++ {
		item := v.Index(i)
		println(item.Int())
	}
}
