package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

//go:linkname qsort C.qsort
func qsort(base c.Pointer, count, elem uintptr, compar func(a, b c.Pointer) c.Int)

func main() {
	a := [...]int{100, 8, 23, 2, 7}
	qsort(c.Pointer(&a[0]), 5, unsafe.Sizeof(0), func(a, b c.Pointer) c.Int {
		return c.Int(*(*int)(a) - *(*int)(b))
	})
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v)
	}
}
