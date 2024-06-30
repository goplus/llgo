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
	if res := L.DoString(c.Str("function combineParams(num, str) return 'Result: ' .. str .. '  ' .. num end")); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.ToString(-1))
	}
	L.GetGlobal(c.Str("combineParams"))
	L.PushNumber(3.14159)
	L.PushString(c.Str("Hello, World!"))
	if res := L.PCall(2, 1, 0); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.ToString(-1))
	}
	if res := L.IsString(-1); res != 0 {
		result := L.ToString(-1)
		c.Printf(result)
	}
}

/* Expected output:
Result: Hello, World!  3.14159
*/
