package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/debug"
)

type T struct {
	n int
}

func (t *T) Demo() {
	println(t.n)
	addr := debug.Address()
	c.Printf(c.Str("addr:0x%x\n"), addr)
	var info debug.Info
	r := debug.Addrinfo(addr, &info)
	if r == 0 {
		panic("not found info")
	}
	c.Printf(c.Str("func file:%s name:%s base:0x%x addr:0x%x\n"), info.Fname, info.Sname, info.Fbase, info.Saddr)
}

func main() {
	t := &T{100}
	t.Demo()
}
