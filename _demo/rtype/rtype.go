package main

import "reflect"

func main() {
	tyIntSlice := reflect.SliceOf(reflect.TypeOf(0))
	println(tyIntSlice.String())
}
