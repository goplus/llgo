package main

import (
	"github.com/goplus/lib/c/sync/atomic"
)

func main() {
	var v int64

	atomic.Store(&v, 100)
	println("store:", atomic.Load(&v))

	ret := atomic.Add(&v, 1)
	println("ret:", ret, "v:", v)

	ret, _ = atomic.CompareAndExchange(&v, 100, 102)
	println("ret:", ret, "vs 100, v:", v)

	ret, _ = atomic.CompareAndExchange(&v, 101, 102)
	println("ret:", ret, "vs 101, v:", v)

	ret = atomic.Sub(&v, 1)
	println("ret:", ret, "v:", v)
}
