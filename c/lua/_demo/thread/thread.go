package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func pushThread(state *lua.State, name string) {
	isMain := state.Pushthread()
	if isMain != 0 {
		c.Printf(c.Str("%s Thread is main\n"), c.AllocaCStr(name))
	} else {
		c.Printf(c.Str("%s Thread is not main\n"), c.AllocaCStr(name))
	}
}

func main() {
	L := lua.Newstate__1()
	defer L.Close()

	L.Openlibs()
	pushThread(L, "main")
	L.Pop(1)
	newThread := L.Newthread()
	pushThread(newThread, "newthread")

	state := newThread.Tothread(-1)
	if newThread == state {
		c.Printf(c.Str("Successfully retrieved thread from stack\n"))
	}
	status := state.Status()
	c.Printf(c.Str("New thread status: %d"), status)

	if L.Closethread(newThread) != lua.OK {
		println("Failed to close thread status %d", state.Status())
	}
}

/* Expected output:
main Thread is main
newthread Thread is not main
Successfully retrieved thread from stack
New thread status: 0
*/
