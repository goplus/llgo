package main

import (
	"os"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func reader(L *lua.State, data c.Pointer, size *c.Ulong) *c.Char {
	file := (*os.File)(data)

	fileInfo, err := file.Stat()
	if err != nil {
		return nil
	}
	fileSize := fileInfo.Size()

	buffer := make([]byte, fileSize)
	bytesRead, err := file.Read(buffer)
	if err != nil {
		return nil
	}

	*size = c.Ulong(bytesRead)

	if bytesRead > 0 {
		return (*c.Char)(unsafe.Pointer(unsafe.SliceData(buffer)))
	}

	return nil
}

func main() {
	L := lua.Newstate__1()
	defer L.Close()
	L.Openlibs()

	file, err := os.Open("../llgofunc.luac")
	if err != nil {
		c.Printf(c.Str("Failed to open file for reading\n"))
		return
	}
	defer file.Close()

	if L.Load(reader, c.Pointer(file), c.Str("greet"), nil) != lua.OK {
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

/* Expected output:
Stack size before call: 1
Top element type after call: function
Result: Hello, World!
*/
