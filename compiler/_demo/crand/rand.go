package main

import (
	"fmt"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/math/rand"
	"github.com/goplus/llgo/c/time"
)

func fastrand64() uint64 {
	v1 := uint64(rand.Random())
	v2 := uint64(rand.Random())
	return v1 ^ (v2 << 32)
}

func main() {
	rand.Srand(c.Uint(time.Time(nil)))
	fmt.Printf("%x\n", rand.Rand())
	fmt.Printf("%x\n", rand.Rand())

	rand.Srandom(c.Uint(time.Time(nil)))
	fmt.Printf("%x\n", rand.Random())
	fmt.Printf("%x\n", rand.Random())
	fmt.Printf("%x\n", fastrand64())
}
