package foo

import (
	"unsafe"
)

const (
	LLGoFiles   = "bar/bar.cpp"
	LLGoPackage = "link"
)

// -----------------------------------------------------------------------------

type ICalc struct {
	Vptr *ICalcVtbl
}

type ICalcVtbl struct {
	Calc unsafe.Pointer
}

// -----------------------------------------------------------------------------

type IVal struct {
	Vptr *IValVtbl
}

type IValVtbl struct {
	Val unsafe.Pointer
}

// -----------------------------------------------------------------------------

type Callback struct {
	ICalc
	IVal
}

//go:linkname F C.f
func F(cb *Callback)

// -----------------------------------------------------------------------------
