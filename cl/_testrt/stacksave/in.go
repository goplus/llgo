package main

import (
	"unsafe"
	_ "unsafe"
)

//go:linkname getsp llgo.stackSave
func getsp() unsafe.Pointer

func main() {
	sp := getsp()
	println(sp)
}
