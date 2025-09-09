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

func (f *CFmt) SetFormat(fmt *c.Char) {
	f.T = (*T)(unsafe.Pointer(fmt))
}

type IFmt interface {
	SetFormat(fmt *c.Char)
	Printf(__llgo_va_list ...any) c.Int
}

func main() {
	cfmt := &CFmt{}
	cfmt.SetFormat(c.Str("%s (%d)\n"))
	cfmt.Printf(c.Str("hello"), 100)
	cfmt.SetFormat(c.Str("(%d) %s\n"))
	cfmt.Printf(200, c.Str("world"))

	var i any = &CFmt{}
	ifmt, ok := i.(IFmt)
	if !ok {
		panic("error")
	}
	ifmt.SetFormat(c.Str("%s (%d,%d)\n"))
	ifmt.Printf(c.Str("ifmt"), 100, 200)
}
