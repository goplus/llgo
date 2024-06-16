package main

import (
	"github.com/goplus/llgo/c/sync"
)

func main() {
	var v int64 = 100
	ret := sync.FetchAndAdd(&v, 1)
	println("ret:", ret, "v:", v)

	ret = sync.CompareAndXchg(&v, 100, 102)
	println("ret:", ret, "vs 100, v:", v)

	ret = sync.CompareAndXchg(&v, 101, 102)
	println("ret:", ret, "vs 101, v:", v)

	ret = sync.FetchAndSub(&v, 1)
	println("ret:", ret, "v:", v)
}
