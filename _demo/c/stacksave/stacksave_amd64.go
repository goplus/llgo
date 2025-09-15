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
	var spPtr uintptr

	asmFull("movq sp, {{addr}}", map[string]any{
		"addr": unsafe.Pointer(&spPtr),
	})

	if spPtr != uintptr(getsp()) {
		panic("invalid stack pointer")
	}
}
