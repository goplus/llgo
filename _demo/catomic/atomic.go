package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/sync"
)

func main() {
	var v int64 = 100
	ret := sync.FetchAndAdd(&v, 1)
	c.Printf(c.Str("FetchAndAdd: %ld, new: %ld\n"), ret, v)

	chg := sync.CompareAndXchg(&v, 100, 102)
	c.Printf(c.Str("CompareAndXchg: %ld, 100, new: %ld\n"), v, chg)
	chg = sync.CompareAndXchg(&v, 101, 102)
	c.Printf(c.Str("new: %ld, CompareAndXchg: %ld, 101\n"), v, chg)

	ret = sync.FetchAndSub(&v, 1)
	c.Printf(c.Str("FetchAndSub: %ld, new: %ld\n"), ret, v)
}
