package main

import _ "unsafe" // for go:linkname

//go:linkname cAbs C.abs
func cAbs(x int32) int32

func main() {
	_ = cAbs(-5)
}
