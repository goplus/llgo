package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func coroutineFunc(L *lua.State) c.Int {
	c.Printf(c.Str("Coroutine started\n"))
	L.Yield(0) // Pause the coroutine
	c.Printf(c.Str("Coroutine resumed\n"))
	return 0
}

func main() {
	L := lua.Newstate__1()
	defer L.Close()

	L.Openlibs()
	co := L.Newthread()
	L.Pushcfunction(coroutineFunc)
	L.Xmove(co, 1)

	var nres c.Int

	c.Printf(c.Str("Resuming coroutine for the first time\n"))
	result := co.Resume(nil, 0, &nres)
	if result == lua.YIELD {
		c.Printf(c.Str("Coroutine yielded\n"))
		result = co.Resume(nil, 0, &nres)
		if result == 0 {
			c.Printf(c.Str("Coroutine finished\n"))
		}
	}
}

/* Expected output:
Resuming coroutine for the first time
Coroutine started
Coroutine yielded
Coroutine finished
*/
