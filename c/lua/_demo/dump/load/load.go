package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func reader(L *lua.State, data c.Pointer, size *c.Ulong) *c.Char {
	buffer := make([]c.Char, 4096)
	*size = c.Ulong(c.Fread(c.Pointer(unsafe.SliceData(buffer)), uintptr(1), uintptr(unsafe.Sizeof(buffer)), data))
	if *size > 0 {
		return &buffer[0]
	}
	return nil
}

func main() {
	L := lua.Newstate()
	defer L.Close()
	L.Openlibs()

	file := c.Fopen(c.Str("../llgofunc.luac"), c.Str("rb"))
	if file == nil {
		c.Printf(c.Str("Failed to open file for writing\n"))
	}

	if L.Load(reader, file, c.Str("greet"), nil) != lua.OK {
		c.Printf(c.Str("Failed to dump Lua function\n"))
	}

	c.Printf(c.Str("Stack size before call: %d\n"), L.Gettop())
	c.Printf(c.Str("Top element type after call: %s\n"), L.Typename(L.Type(-1)))

	L.Pushstring(c.Str("World"))
	if L.Pcall(1, 1, 0) != lua.OK {
		c.Printf(c.Str("Failed to call function: %s\n"))
	}

	if L.Isstring(-1) != 0 {
		c.Printf(c.Str("Result: %s\n"), L.Tostring(-1))
	}
}
