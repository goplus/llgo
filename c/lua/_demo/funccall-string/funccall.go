package main

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func main() {
	L := lua.NewState()
	defer L.Close()

	L.OpenLibs()
	code := c.Str(
		`function processStrings(a, b, c)
	print('Received string a: ' .. a)
	print('Received string b: ', b)
	print('Received string c (formatted): ' .. c)
	return a .. b .. c
end`)

	if res := L.DoString(code); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.ToString(-1))
	}

	L.GetGlobal(c.Str("processStrings"))

	L.PushString(c.Str("Hello, World!"))
	L.PushLString(c.Str(`Hello Lua In LLGO`), 17)
	L.PushFString(c.Str(`Hello %s In %d`), c.Str("LLGO"), 2024)

	if res := L.PCall(3, 1, 0); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.ToString(-1))
	}

	if res := L.IsString(-1); res != 0 {
		result := L.ToString(-1)
		c.Printf(c.Str("result: %s\n"), result)
	}
}

/* Expected output:
Received string a: Hello, World!
Received string b:      Hello Lua In LLGO
Received string c (formatted): Hello LLGO In 2024
result: Hello, World!Hello Lua In LLGOHello LLGO In 2024
*/
