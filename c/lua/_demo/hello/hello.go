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
	if res := L.Dostring(c.Str("print('hello world')")); res != lua.OK {
		println("error")
	}
}
