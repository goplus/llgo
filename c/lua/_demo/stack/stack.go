package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

// printStack prints the current stack of the given Lua state.
func printStack(L *lua.State, stateName *c.Char) {
	top := L.Gettop()
	c.Printf(c.Str("%s stack (top=%d):"), stateName, top)
	for i := 1; i <= int(top); i++ {
		c.Printf(c.Str("%s "), L.Tostring(c.Int(i)))
	}
	c.Printf(c.Str("\n"))
}

func main() {
	// Create a new Lua state and open libraries
	L := lua.Newstate__1()
	defer L.Close()
	L.Openlibs()

	// Push initial values onto the stack
	L.Pushstring(c.Str("Hello"))
	L.Pushstring(c.Str("LLGO"))
	L.Pushnumber(2024)

	// Print initial stack
	c.Printf(c.Str("Initial stack:\n"))
	printStack(L, c.Str("L1"))

	// Use absindex to ensure the index is positive
	idx := -2
	absIdx := L.Absindex(c.Int(idx))
	c.Printf(c.Str("Absolute index of 'LLGO': %d\n"), absIdx)

	// Copy 'LLGO' to the top of the stack
	L.Pushvalue(absIdx)
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
	if L.Checkstack(c.Int(2)) == 0 {
		c.Printf(c.Str("Cannot grow stack\n"))
		return
	}

	// Push additional elements
	L.Pushnumber(3.14)
	L.Pushstring(c.Str("Lua"))
	c.Printf(c.Str("\nAfter pushing more elements:\n"))
	printStack(L, c.Str("L1"))

	// Set the top of the stack, clearing extra elements
	L.Settop(c.Int(5))
	c.Printf(c.Str("\nAfter setting top to 5:\n"))
	printStack(L, c.Str("L1"))

	// Create a second Lua state
	L1 := lua.Newstate__1()
	defer L1.Close()

	// Move two elements to the new state
	L.Xmove(L1, c.Int(2))
	c.Printf(c.Str("\nAfter moving two elements to L1:\n"))
	printStack(L, c.Str("L1"))
	printStack(L1, c.Str("L2"))
}

/* Expected output:
Initial stack:
L1 stack (top=3):Hello LLGO 2024.0
Absolute index of 'LLGO': 2

After pushing 'LLGO' to the top:
L1 stack (top=4):Hello LLGO 2024.0 LLGO

After rotating the stack:
L1 stack (top=4):LLGO 2024.0 LLGO Hello

After copying the top element to index 2:
L1 stack (top=4):LLGO Hello LLGO Hello

After pushing more elements:
L1 stack (top=6):LLGO Hello LLGO Hello 3.14 Lua

After setting top to 5:
L1 stack (top=5):LLGO Hello LLGO Hello 3.14

After moving two elements to L1:
L1 stack (top=3):LLGO Hello LLGO
L2 stack (top=2):Hello 3.14
*/
