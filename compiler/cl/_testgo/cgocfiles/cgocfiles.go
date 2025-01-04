package main

/*
#include "in.h"
*/
import "C"
import "fmt"

func main() {
	r := C.test_structs(&C.s4{a: 1}, &C.s8{a: 1, b: 2}, &C.s12{a: 1, b: 2, c: 3}, &C.s16{a: 1, b: 2, c: 3, d: 4}, &C.s20{a: 1, b: 2, c: 3, d: 4, e: 5})
	fmt.Println(r)
	if r != 35 {
		panic("test_structs failed")
	}
}
