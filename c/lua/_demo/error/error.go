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
	if res := L.Loadstring(c.Str("function doubleNumber(x) ! return x * 2 end")); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.Tostring(-1))
	}
}

/* Expected output:
error: [string "function doubleNumber(x) ! return x * 2 end"]:1: unexpected symbol near '!'
*/
