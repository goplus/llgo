package main

import (
	"unsafe"

	"github.com/goplus/llgo/internal/runtime"
)

const (
	eltSize = int(unsafe.Sizeof(0))
)

func doChan(cap int) {
	c := runtime.NewChan(eltSize, cap)
	go func() {
		v := 100
		runtime.ChanSend(c, unsafe.Pointer(&v), eltSize)
	}()
	var ret int
	runtime.ChanRecv(c, unsafe.Pointer(&ret), eltSize)
	println(ret)
}

func main() {
	doChan(10)
}
