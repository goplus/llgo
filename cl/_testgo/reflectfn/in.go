package main

import (
	"fmt"
	"reflect"
)

func demo() {
	println("demo")
}

func main() {
	v := 100
	fn := func() {
		println(v)
	}
	fdemo := demo
	fmt.Println(fn)
	fmt.Println(demo)
	fmt.Println(fdemo)
	fmt.Println(reflect.ValueOf(fn).UnsafePointer())
	fmt.Println(reflect.ValueOf(demo).UnsafePointer())
	fmt.Println(reflect.ValueOf(fdemo).UnsafePointer())
}
