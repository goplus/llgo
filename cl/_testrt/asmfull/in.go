package main

import _ "unsafe"

//go:linkname asmFull llgo.asm
func asmFull(instruction string, regs map[string]any) uintptr

func main() {
	result := asmFull("mov {}, {value}", map[string]any{
		"value": 42,
	})
	println("Result:", result)
}
