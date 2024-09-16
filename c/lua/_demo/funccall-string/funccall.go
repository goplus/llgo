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
	code := c.Str(
		`function processStrings(a, b, c)
	print('Received string a: ' .. a)
	print('Received string b: ', b)
	print('Received string c (formatted): ' .. c)
	return a .. b .. c
end`)

	if res := L.Dostring(code); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.Tostring(-1))
	}

	L.Getglobal(c.Str("processStrings"))

	L.Pushstring(c.Str("Hello, World!"))
	L.Pushlstring(c.Str(`Hello Lua In LLGO`), 17)
	L.Pushfstring(c.Str(`Hello %s In %d`), c.Str("LLGO"), 2024)

	if res := L.Pcall(3, 1, 0); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.Tostring(-1))
	}

	if res := L.Isstring(-1); res != 0 {
		result := L.Tostring(-1)
		c.Printf(c.Str("result: %s\n"), result)
	}
}

/* Expected output:
Received string a: Hello, World!
Received string b:      Hello Lua In LLGO
Received string c (formatted): Hello LLGO In 2024
result: Hello, World!Hello Lua In LLGOHello LLGO In 2024
*/
