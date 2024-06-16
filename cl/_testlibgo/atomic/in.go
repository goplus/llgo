package main

import (
	"sync/atomic"
)

func main() {
	var v int64 = 100
	println(atomic.AddInt64(&v, 1))
}
