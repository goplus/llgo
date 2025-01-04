package main

import (
	"github.com/goplus/llgo/c"
)

func main() {
	a := map[int]int{23: 100, 7: 29}
	c.Printf(c.Str("Hello %d\n"), a[23])
}
