package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

func main() {
	a := [...]int{100, 8, 23, 2, 7}
	c.Qsort(c.Pointer(&a), 5, unsafe.Sizeof(0), func(a, b c.Pointer) c.Int {
		return c.Int(*(*int)(a) - *(*int)(b))
	})
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v)
	}
}

/* Expected output:
2
7
8
23
100
*/
