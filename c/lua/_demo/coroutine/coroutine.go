package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func coroutineFunc(L *lua.State) {
	L.Loadstring(c.Str(`
	function coro_func()
	   for i = 1, 5 do
	       coroutine.yield(i)
	   end
	end
	`))
	L.Pcall(0, 0, 0)
	L.Getglobal(c.Str("coro_func"))
}

func main() {
	L := lua.Newstate__1()
	defer L.Close()

	L.Openlibs()

	coroutineFunc(L) // Load and get the coroutine function

	co := L.Newthread() // Create a new coroutine/thread
	L.Pushvalue(-2)     // Move the function to the top of the stack
	L.Xmove(co, 1)      // Move the function to the new coroutine

	var nres c.Int
	var status c.Int

	c.Printf(c.Str("Resuming coroutine...\n"))
	// Resume coroutine and handle yields
	for {
		status = co.Resume(nil, 0, &nres)
		if status == lua.YIELD {
			c.Printf(c.Str("Resuming coroutine %d...\n"), status)
			yieldValue := co.Tointeger(-1)
			c.Printf(c.Str("Yield value: %d\n"), yieldValue)
			co.Pop(1) // Clean up the stack

			// Check if the coroutine is yieldable
			if co.Isyieldable() != 0 {
				c.Printf(c.Str("Coroutine is yieldable.\n"))
			} else {
				c.Printf(c.Str("Coroutine is not yieldable.\n"))
			}

		} else {
			break
		}
	}

	// Check the final status of the coroutine
	finalStatus := co.Status()
	c.Printf(c.Str("Final status of coroutine: %d\n"), finalStatus)
}

/* Expected output:
Resuming coroutine...
Resuming coroutine 1...
Yield value: 1
Coroutine is yieldable.
Resuming coroutine 1...
Yield value: 2
Coroutine is yieldable.
Resuming coroutine 1...
Yield value: 3
Coroutine is yieldable.
Resuming coroutine 1...
Yield value: 4
Coroutine is yieldable.
Resuming coroutine 1...
Yield value: 5
Coroutine is yieldable.
Final status of coroutine: 0
*/
