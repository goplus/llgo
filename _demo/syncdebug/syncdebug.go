package main

import (
	"io"
	"os"
	"sync"
	"unsafe"

	llsync "github.com/goplus/llgo/c/pthread/sync"
)

type L struct {
	mu sync.Mutex
	s  string
	i  int
	w  io.Writer
}

func main() {
	l := &L{s: "hello", i: 123, w: os.Stdout}
	println("sizeof(L):", unsafe.Sizeof(L{}))
	println("sizeof(sync.Mutex):", unsafe.Sizeof(sync.Mutex{}))
	println("sizeof(llsync.Mutex):", unsafe.Sizeof(llsync.Mutex{}))
	println("l:", l, "l.s:", l.s, "l.i:", l.i, "l.w:", l.w)
	l.mu.Lock()
	println("locked")
	println("l:", l, "l.s:", l.s, "l.i:", l.i, "l.w:", l.w)
	l.w.Write([]byte(l.s))
	l.w.Write([]byte("\n"))
	l.mu.Unlock()
}
