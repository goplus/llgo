package main

import (
	"sync/atomic"
)

func main() {
	var v int64

	atomic.StoreInt64(&v, 100)
	println("store:", atomic.LoadInt64(&v))

	ret := atomic.AddInt64(&v, 1)
	println("ret:", ret, "v:", v)

	swp := atomic.CompareAndSwapInt64(&v, 100, 102)
	println("swp:", swp, "v:", v)

	swp = atomic.CompareAndSwapInt64(&v, 101, 102)
	println("swp:", swp, "v:", v)

	ret = atomic.AddInt64(&v, -1)
	println("ret:", ret, "v:", v)
}
