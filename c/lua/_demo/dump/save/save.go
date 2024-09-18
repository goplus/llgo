package main

import (
	"os"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func writer(L *lua.State, p c.Pointer, sz c.Ulong, ud c.Pointer) c.Int {
	file := (*os.File)(ud)
	data := unsafe.Slice((*byte)(p), sz)

	n, err := file.Write(data)
	if err != nil || n != int(sz) {
		return 1
	}

	return lua.OK
}

func main() {
	L := lua.Newstate__1()
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

	file, err := os.Create("../llgofunc.luac")
	if err != nil {
		c.Printf(c.Str("Failed to open file for writing\n"))
		return
	}
	defer file.Close()

	if L.Dump(writer, c.Pointer(file), 0) != lua.OK {
		c.Printf(c.Str("Failed to dump Lua function\n"))
	}

}
