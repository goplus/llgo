package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	q "github.com/goplus/llgo/compiler/cl/_testrt/qsortfn/qsort"
)

//llgo:type C
type Comp func(a, b c.Pointer) c.Int

//go:linkname qsort C.qsort
func qsort(base c.Pointer, count, elem uintptr, compar Comp)

//go:linkname qsort2 C.qsort
func qsort2(base c.Pointer, count, elem uintptr, compar func(a, b c.Pointer) c.Int)

func main() {
	sort1a()
	sort1b()
	sort2a()
	sort2b()
	sort3a()
	sort3b()
	sort4a()
	sort4b()
	sort5a()
	sort5b()
}

func sort1a() {
	c.Printf(c.Str("Comp => Comp\n"))
	a := [...]int{100, 8, 23, 2, 7}
	var fn Comp = func(a, b c.Pointer) c.Int {
		return c.Int(*(*int)(a) - *(*int)(b))
	}
	qsort(c.Pointer(&a[0]), 5, unsafe.Sizeof(0), fn)
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v)
	}
}

func sort1b() {
	c.Printf(c.Str("fn => Comp\n"))
	a := [...]int{100, 8, 23, 2, 7}
	var fn = func(a, b c.Pointer) c.Int {
		return c.Int(*(*int)(a) - *(*int)(b))
	}
	qsort(c.Pointer(&a[0]), 5, unsafe.Sizeof(0), fn)
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v)
	}
}

func sort2a() {
	c.Printf(c.Str("Comp => fn\n"))
	a := [...]int{100, 8, 23, 2, 7}
	var fn Comp = func(a, b c.Pointer) c.Int {
		return c.Int(*(*int)(a) - *(*int)(b))
	}
	qsort2(c.Pointer(&a[0]), 5, unsafe.Sizeof(0), fn)
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v)
	}
}

func sort2b() {
	c.Printf(c.Str("fn => fn\n"))
	a := [...]int{100, 8, 23, 2, 7}
	var fn = func(a, b c.Pointer) c.Int {
		return c.Int(*(*int)(a) - *(*int)(b))
	}
	qsort2(c.Pointer(&a[0]), 5, unsafe.Sizeof(0), fn)
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v)
	}
}

func sort3a() {
	c.Printf(c.Str("qsort.Comp => qsort.Comp\n"))
	a := [...]int{100, 8, 23, 2, 7}
	var fn q.Comp = func(a, b c.Pointer) c.Int {
		return c.Int(*(*int)(a) - *(*int)(b))
	}
	q.Qsort(c.Pointer(&a[0]), 5, unsafe.Sizeof(0), fn)
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v)
	}
}

func sort3b() {
	c.Printf(c.Str("fn => qsort.Comp\n"))
	a := [...]int{100, 8, 23, 2, 7}
	var fn = func(a, b c.Pointer) c.Int {
		return c.Int(*(*int)(a) - *(*int)(b))
	}
	q.Qsort(c.Pointer(&a[0]), 5, unsafe.Sizeof(0), fn)
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v)
	}
}

func sort4a() {
	c.Printf(c.Str("qsort.Comp => fn\n"))
	a := [...]int{100, 8, 23, 2, 7}
	var fn q.Comp = func(a, b c.Pointer) c.Int {
		return c.Int(*(*int)(a) - *(*int)(b))
	}
	qsort2(c.Pointer(&a[0]), 5, unsafe.Sizeof(0), fn)
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v)
	}
}

func sort4b() {
	c.Printf(c.Str("Comp => qsort.fn\n"))
	a := [...]int{100, 8, 23, 2, 7}
	var fn Comp = func(a, b c.Pointer) c.Int {
		return c.Int(*(*int)(a) - *(*int)(b))
	}
	q.Qsort2(c.Pointer(&a[0]), 5, unsafe.Sizeof(0), fn)
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v)
	}
}

func sort5a() {
	c.Printf(c.Str("qsort.Comp => Comp()\n"))
	a := [...]int{100, 8, 23, 2, 7}
	var fn q.Comp = func(a, b c.Pointer) c.Int {
		return c.Int(*(*int)(a) - *(*int)(b))
	}
	qsort(c.Pointer(&a[0]), 5, unsafe.Sizeof(0), Comp(fn))
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v)
	}
}

func sort5b() {
	c.Printf(c.Str("Comp => qsort.Comp()\n"))
	a := [...]int{100, 8, 23, 2, 7}
	var fn Comp = func(a, b c.Pointer) c.Int {
		return c.Int(*(*int)(a) - *(*int)(b))
	}
	q.Qsort(c.Pointer(&a[0]), 5, unsafe.Sizeof(0), q.Comp(fn))
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v)
	}
}
