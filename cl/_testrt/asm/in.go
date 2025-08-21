package main

import _ "unsafe"

//go:linkname asm llgo.asm
func asm(instruction string)

func main() {
	asm("nop")
}
