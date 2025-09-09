package main

import (
	"unsafe"
	_ "unsafe"

	"github.com/goplus/lib/c"
)

type T c.Char

//go:linkname Printf C.printf
func Printf(format *c.Char, __llgo_va_list ...any) c.Int

//llgo:link (*T).Printf C.printf
func (*T) Printf(__llgo_va_list ...any) c.Int { return 0 }

type CFmt struct {
	*T
}

func (f *CFmt) SetFormat(fmt string) {
	f.T = (*T)(unsafe.Pointer(c.AllocaCStr(fmt)))
}

func main() {
	cfmt := &CFmt{}
	cfmt.SetFormat("%s (%d)\n")
	cfmt.Printf(c.Str("hello"), 100)
	cfmt.SetFormat("(%d) %s\n")
	cfmt.Printf(200, c.Str("world"))
}
