package main

import (
	"unsafe"

	"github.com/goplus/llgo/c/debug"
)

type T struct {
	n int
}

func (t *T) Demo() {
	println(t.n)
	debug.StackTrace(0, func(fr *debug.Frame) bool {
		var info debug.Info
		debug.Addrinfo(unsafe.Pointer(fr.PC), &info)
		println("[", fr.PC, "]", fr.Name, "+", fr.Offset, ", SP =", fr.SP)
		return true
	})
}

func main() {
	t := &T{100}
	t.Demo()
}
