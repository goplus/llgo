package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func coroutineFunc(L *lua.State) {
	L.LoadString(c.Str(`
	function coro_func()
	   for i = 1, 5 do
	       coroutine.yield(i)
	   end
	end
	`))
	L.PCall(0, 0, 0)
	L.GetGlobal(c.Str("coro_func"))
}

func main() {
	L := lua.NewState()
	defer L.Close()

	L.OpenLibs()

	coroutineFunc(L) // Load and get the coroutine function

	co := L.NewThread() // Create a new coroutine/thread
	L.PushValue(-2)     // Move the function to the top of the stack
	L.XMove(co, 1)      // Move the function to the new coroutine

	var nres c.Int
	var status c.Int

	c.Printf(c.Str("Resuming coroutine...\n"))
	// Resume coroutine and handle yields
	for {
		status = co.Resume(nil, 0, &nres)
		c.Printf(c.Str("Resuming coroutine %d...\n"), status)
		if status == lua.YIELD {
			yieldValue := co.ToInteger(-1)
			c.Printf(c.Str("Yield value: %d\n"), yieldValue)
			co.Pop(1) // Clean up the stack

			// Check if the coroutine is yieldable
			if co.IsYieldable() != 0 {
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
