package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

// printStack prints the current stack of the given Lua state.
func printStack(L *lua.Lua_State, stateName *c.Char) {
	top := L.GetTop()
	// c.Printf(c.Str("%s stack (top=%d): "), c.GoStringData("sdasd"), top)
	c.Printf(c.Str("%s stack (top=%d):"), stateName, top)
	for i := 1; i <= int(top); i++ {
		c.Printf(c.Str("%s "), L.ToString(c.Int(i)))
	}
	c.Printf(c.Str("\n"))
}

func main() {
	// Create a new Lua state and open libraries
	L := lua.NewState()
	defer L.Close()
	L.OpenLibs()

	// Push initial values onto the stack
	L.PushString(c.Str("Hello"))
	L.PushString(c.Str("LLGO"))
	L.PushNumber(2024)

	// Print initial stack
	c.Printf(c.Str("Initial stack:\n"))
	printStack(L, c.Str("L1"))

	// Use absindex to ensure the index is positive
	idx := -2
	absIdx := L.AbsIndex(c.Int(idx))
	c.Printf(c.Str("Absolute index of 'LLGO': %d\n"), absIdx)

	// Copy 'LLGO' to the top of the stack
	L.PushValue(absIdx)
	c.Printf(c.Str("\nAfter pushing 'LLGO' to the top:\n"))
	printStack(L, c.Str("L1"))

	// Rotate stack elements
	L.Rotate(c.Int(1), c.Int(-1))
	c.Printf(c.Str("\nAfter rotating the stack:\n"))
	printStack(L, c.Str("L1"))

	// Copy the top element to index 2
	L.Copy(c.Int(-1), c.Int(2))
	c.Printf(c.Str("\nAfter copying the top element to index 2:\n"))
	printStack(L, c.Str("L1"))

	// Check if we can grow the stack
	if L.CheckStack(c.Int(2)) == 0 {
		c.Printf(c.Str("Cannot grow stack\n"))
		return
	}

	// Push additional elements
	L.PushNumber(3.14)
	L.PushString(c.Str("Lua"))
	c.Printf(c.Str("\nAfter pushing more elements:\n"))
	printStack(L, c.Str("L1"))

	// Set the top of the stack, clearing extra elements
	L.SetTop(c.Int(5))
	c.Printf(c.Str("\nAfter setting top to 5:\n"))
	printStack(L, c.Str("L1"))

	// Create a second Lua state
	L1 := lua.NewState()
	defer L1.Close()

	// Move two elements to the new state
	L.Xmove(L1, c.Int(2))
	c.Printf(c.Str("\nAfter moving two elements to L1:\n"))
	printStack(L, c.Str("L1"))
	printStack(L1, c.Str("L2"))
}
