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
	if res := L.LoadString(c.Str("function doubleNumber(x) return x * 2 end")); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.ToString(-1))
	}
	if res := L.PCall(0, 0, 0); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.ToString(-1))
	}

	L.GetGlobal(c.Str("doubleNumber"))
	L.PushNumber(10)

	if res := L.PCall(1, 1, 0); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.ToString(-1))
	}

	if res := L.IsNumber(-1); res != 0 {
		result := L.ToInteger(-1)
		c.Printf(c.Str("result: %lld\n"), result)
	} else {
		c.Printf(c.Str("error: %s\n"), L.ToString(-1))
	}
}

/* Expected output:
result: 20
*/
