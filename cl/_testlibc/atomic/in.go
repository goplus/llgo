package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/sync"
)

func main() {
	var v int64 = 100
	sync.FetchAndAdd(&v, 1)
	c.Printf(c.Str("%ld\n"), v)

	sync.CompareAndXchg(&v, 100, 102)
	c.Printf(c.Str("%ld\n"), v)

	sync.CompareAndXchg(&v, 101, 102)
	c.Printf(c.Str("%ld\n"), v)

	sync.FetchAndSub(&v, 1)
	c.Printf(c.Str("%ld\n"), v)
}
