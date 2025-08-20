package main

import _ "unsafe"

//go:linkname asm llgo.asm
func asm(instruction string)

//go:linkname asmFull llgo.asm
func asmFull(instruction string, regs map[string]any) uintptr

func main() {
	asm("nop")
	result := asmFull("mov {}, {value}", map[string]any{
		"value": uint32(42),
	})
	_ = result
}
