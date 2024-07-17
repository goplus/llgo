package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/neco"
)

func coroutine(argc c.Int, argv *c.Pointer) {
	// Yield each int to the caller, one at a time.
	for i := 0; i < 10; i++ {
		neco.GenYield(unsafe.Pointer(&i))
	}
}

func necoMain(argc c.Int, argv *c.Pointer) {
	// Create a new generator coroutine that is used to send ints.
	var gen *neco.Gen
	neco.GenStart(&gen, unsafe.Sizeof(0), coroutine, 0)

	// Iterate over each int until the generator is closed.
	var i int
	for neco.GenNext(gen, unsafe.Pointer(&i)) != neco.CLOSED {
		c.Printf(c.Str("%d\n"), i)
	}

	neco.GenRelease(gen)
	neco.ExitProg(0)
}

func main() {
	neco.EnvSetpaniconerror(true)
	neco.EnvSetcanceltype(neco.CANCEL_ASYNC)
	var ret = neco.Start(necoMain, 0)
	c.Fprintf(c.Stderr, c.Str("neco_start: %s (code %d)\n"), neco.Strerror(ret), ret)
}
