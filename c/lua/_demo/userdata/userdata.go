package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

type lightdata struct {
	value int
}

func main() {
	L := lua.Newstate__1()
	defer L.Close()
	L.Openlibs()

	data := L.Newuserdata(unsafe.Sizeof(0))
	*((*int)(data)) = 42
	L.Setglobal(c.Str("data"))

	light := &lightdata{value: 24}
	L.Pushlightuserdata(unsafe.Pointer(light))
	L.Setglobal(c.Str("lightdata"))

	L.Getglobal(c.Str("data"))
	if L.Isuserdata(-1) != 0 {
		data := L.Touserdata(-1)
		c.Printf(c.Str("userdata %d\n"), *(*int)(data))
	}

	L.Getglobal(c.Str("lightdata"))
	if L.Islightuserdata(-1) {
		light := (*lightdata)(L.Touserdata(-1))
		c.Printf(c.Str("lightdata %d\n"), light.value)
	}
}

/* Expected output:
userdata 42
lightdata 24
*/
