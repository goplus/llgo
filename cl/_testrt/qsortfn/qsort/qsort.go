package qsort

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "decl"
)

// llgo:type C
type Comp func(a, b c.Pointer) c.Int

//go:linkname Qsort C.qsort
func Qsort(base c.Pointer, count, elem uintptr, compar Comp)

//go:linkname Qsort2 C.qsort
func Qsort2(base c.Pointer, count, elem uintptr, compar func(a, b c.Pointer) c.Int)
