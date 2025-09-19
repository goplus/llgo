//go:build amd64

package main

import (
	"unsafe"
	_ "unsafe"
)

//go:linkname getsp llgo.stackSave
func getsp() unsafe.Pointer

//go:linkname asmFull llgo.asm
func asmFull(instruction string, regs map[string]any) uintptr { return 0 }

func main() {
	sp := asmFull("movq %rsp, {}", nil)

	if sp != uintptr(getsp()) {
		panic("invalid stack pointer")
	}
}
