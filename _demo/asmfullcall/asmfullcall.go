package main

import (
	"fmt"
)

//llgo:link asmFull llgo.asm
func asmFull(instruction string, regs map[string]any) uintptr { return 0 }

var testVar = 0

func main() {
	verify()
}

func check(expected, actual int) {
	if expected != actual {
		panic(fmt.Sprintf("Expected: %d, Got: %d\n", expected, actual))
	}
	fmt.Println("asm check passed:", actual)
}
