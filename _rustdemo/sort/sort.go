package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/rust"
)

func main() {
	vals := []c.Int{32, 58, 25, 92, 45, 78}
	rust.Sort(unsafe.SliceData(vals), c.Ulong(len(vals)))
	for _, v := range vals {
		println(v)
	}
}
