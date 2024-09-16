package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func alloc(ud c.Pointer, ptr c.Pointer, osize c.Ulong, nsize c.Ulong) c.Pointer {
	if nsize == 0 {
		c.Free(ptr)
		return nil
	} else {
		return c.Realloc(ptr, uintptr(nsize))
	}
}

func main() {
	L := lua.Newstate__0(alloc, nil)
	defer L.Close()
	L.Openlibs()
	if res := L.Dostring(c.Str("print('new state success')")); res != lua.OK {
		println("newstate error")
	}

	allocf := L.Getallocf(nil)
	L.Setallocf(allocf, nil)

	if res := L.Dostring(c.Str("print('set newstate success')")); res != lua.OK {
		println("set newstate error")
	}
}

/* Expected output:
new state success
set newstate success
*/
