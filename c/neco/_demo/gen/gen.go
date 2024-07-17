package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/neco"
)

func main() {
	// c.Printf(c.Str("main"))
	run_main()
}

func run_main() {
	// c.Printf(c.Str("run_main"))
	// c.Fflush(c.Stdout)
	neco.EnvSetpaniconerror(true)
	neco.EnvSetcanceltype(neco.CANCEL_ASYNC)
	ret := neco.Start(main2, 0)
	c.Fprintf(c.Stderr, c.Str("neco_start: %s (code %d)\n"), neco.Strerror(ret), ret)
}

func main2(argc c.Int, argv ...any) {
	// c.Printf(c.Str("main2"))
	// c.Fflush(c.Stdout)
	neco.ExitProg(main3())
}

func main3() c.Int {

	// c.Printf(c.Str("main3"))
	// c.Fflush(c.Stdout)

	// Create a new generator coroutine that is used to send ints.
	gen := new(neco.Gen)
	neco.GenStart(&gen, unsafe.Sizeof(int(0)), coroutine, 0)

	// Iterate over each int until the generator is closed.
	var i c.Int
	for {
		ret := neco.GenNext(gen, c.Pointer(&i))

		// c.Printf(c.Str("gen [%d, %d] "), ret, c.Int(neco.NECO_CLOSED))
		// c.Fflush(c.Stdout)

		if ret != c.Int(neco.CLOSED) {
			c.Printf(c.Str("%d\n"), i)
		} else {
			break
		}
	}

	// This coroutine no longer needs the generator.
	neco.GenRelease(gen)

	// c.Printf(c.Str("main3 end"))
	// c.Fflush(c.Stdout)

	return 0
}

func coroutine(argc c.Int, argv ...any) {
	// Yield each int to the caller, one at a time.
	for i := 0; i < 10; i++ {
		neco.GenYield(c.Pointer(&i))
	}
	// c.Printf(c.Str("coroutine end"))
	// c.Fflush(c.Stdout)
}
