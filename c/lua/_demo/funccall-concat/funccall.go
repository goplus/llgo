package main

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func main() {
	L := lua.Newstate__1()
	defer L.Close()

	L.Openlibs()
	if res := L.Dostring(c.Str("function combineParams(num, str) return 'Result: ' .. str .. '  ' .. num end")); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.Tostring(-1))
	}
	L.Getglobal(c.Str("combineParams"))
	L.Pushnumber(3.14159)
	L.Pushstring(c.Str("Hello, World!"))
	if res := L.Pcall(2, 1, 0); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.Tostring(-1))
	}
	if res := L.Isstring(-1); res != 0 {
		result := L.Tostring(-1)
		c.Printf(result)
	}
}

/* Expected output:
Result: Hello, World!  3.14159
*/
