package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func writer(L *lua.State, p c.Pointer, sz c.Ulong, ud c.Pointer) c.Int {
	if c.Fwrite(p, uintptr(sz), 1, ud) == 1 {
		return lua.OK
	}
	return 1
}

func main() {
	L := lua.Newstate()
	defer L.Close()
	L.Openlibs()

	if res := L.Loadstring(c.Str(`
	function greet(name)
	    return 'Hello, ' .. name .. '!'
	end
	return greet
	`)); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.Tostring(-1))
	}

	if res := L.Pcall(0, 1, 0); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.Tostring(-1))
	}

	if !L.Isfunction(-1) {
		c.Printf(c.Str("Expected a function, but got %s"), L.Typename(L.Type(-1)))
	}

	file := c.Fopen(c.Str("../llgofunc.luac"), c.Str("wb"))
	if file == nil {
		c.Printf(c.Str("Failed to open file for writing\n"))
	}

	if L.Dump(writer, file, 0) != lua.OK {
		c.Printf(c.Str("Failed to dump Lua function\n"))
	}

}

/* Expected output:
Stack size before call: 1
Top element type after call: function
Result: Hello, World!
*/
