package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/sync/atomic"
)

func main() {
	var v int64

	atomic.Store(&v, 100)
	c.Printf(c.Str("store: %ld\n"), atomic.Load(&v))

	atomic.Add(&v, 1)
	c.Printf(c.Str("v: %ld\n"), v)

	atomic.CompareAndExchange(&v, 100, 102)
	c.Printf(c.Str("v: %ld\n"), v)

	atomic.CompareAndExchange(&v, 101, 102)
	c.Printf(c.Str("v: %ld\n"), v)

	atomic.Sub(&v, 1)
	c.Printf(c.Str("v: %ld\n"), v)
}
