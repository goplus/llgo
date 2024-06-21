package foo

import (
	"unsafe"
)

const (
	LLGoFiles   = "bar/bar.cpp"
	LLGoPackage = "link"
)

type Callback struct {
	Vptr *CallbackVtbl
}

type CallbackVtbl struct {
	Val  unsafe.Pointer
	Calc unsafe.Pointer
}

//go:linkname F C.f
func F(cb *Callback)
