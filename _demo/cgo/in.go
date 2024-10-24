package main

/*
#cgo pkg-config: python-3.12-embed
#include <Python.h>
*/
import "C"
import (
	"fmt"
)

func main() {
	C.Py_Initialize()
	println("hello")
	fmt.Printf("Hello, World! %v\n", 3)
}
