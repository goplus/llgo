package main

import (
	"unsafe"

	"github.com/goplus/llgo/internal/runtime/bdwgc"
	"github.com/goplus/llgo/internal/runtime/c"
)

func init() {
	bdwgc.Init()
}

func main() {

	pn := (*int)(bdwgc.Malloc(unsafe.Sizeof(int(0))))
	*pn = 1 << 30
	c.Printf(c.Str("value: %d, %x, %p, %p\n"), *pn, *pn, pn, &pn)

	pl := (*int64)(bdwgc.Realloc(c.Pointer(pn), unsafe.Sizeof(int64(0))))
	*pl = 1 << 60
	c.Printf(c.Str("value: %lld, %llx, %p, %p\n"), *pl, *pl, pl, &pl)

	bdwgc.Free(c.Pointer(pl))
}
