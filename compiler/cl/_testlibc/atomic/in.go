package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/sync/atomic"
)

func main() {
	var v int64

	atomic.Store(&v, 100)
	c.Printf(c.Str("store: %ld\n"), atomic.Load(&v))

	ret := atomic.Add(&v, 1)
	c.Printf(c.Str("ret: %ld, v: %ld\n"), ret, v)

	ret, _ = atomic.CompareAndExchange(&v, 100, 102)
	c.Printf(c.Str("ret: %ld vs 100, v: %ld\n"), ret, v)

	ret, _ = atomic.CompareAndExchange(&v, 101, 102)
	c.Printf(c.Str("ret: %ld vs 101, v: %ld\n"), ret, v)

	ret = atomic.Sub(&v, 1)
	c.Printf(c.Str("ret: %ld, v: %ld\n"), ret, v)
}
