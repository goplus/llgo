package main

import (
	"unsafe"
	_ "unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func GetData(L *lua.State) c.Int {
	extra := (*int)(L.Getextraspace())
	L.Pushfstring(c.Str("Stored integer is: %d"), *extra)
	return 1
}

func main() {
	L := lua.Newstate__1()
	defer L.Close()

	L.Openlibs()

	extra := (*int)(L.Getextraspace())
	*extra = 42

	difference := uintptr(unsafe.Pointer(L)) - uintptr(L.Getextraspace())
	if difference == unsafe.Sizeof(uintptr(0)) {
		c.Printf(c.Str("Extra space is pointer size\n"), unsafe.Sizeof(uintptr(0)))
	}

	L.Pushcfunction(GetData)
	L.Setglobal(c.Str("GetData"))

	if L.Dostring(c.Str("print(GetData())")) != lua.OK {
		c.Printf(c.Str("Error: %s\n"), L.Tostring(-1))
	}
}

/* Expected output:
Extra space is pointer size
Stored integer is: 42
*/
