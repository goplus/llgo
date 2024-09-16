package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func printTable(L *lua.State) {
	L.Pushnil()
	for L.Next(-2) != 0 {
		value := L.Tostring(-1)
		switch L.Type(-2) {
		case lua.STRING:
			key := L.Tostring(-2)
			c.Printf(c.Str("%s - %s\n"), key, value)
		case lua.NUMBER:
			key := L.Tonumber(-2)
			c.Printf(c.Str("[%.0f] - %s\n"), key, value)
		case lua.LIGHTUSERDATA:
			c.Printf(c.Str("[pointer] - %s\n"), value)
		default:
			c.Printf(c.Str("unknown key type %s %d\n"), L.Typename(-2), L.Type(-2))
		}
		L.Pop(1)
	}
	L.Pop(1)
}

func main() {
	L := lua.Newstate__1()
	defer L.Close()

	L.Openlibs()

	L.Newtable()

	// set table name:John
	L.Pushstring(c.Str("name"))
	L.Pushstring(c.Str("John"))
	L.Settable(-3)

	// set table age:30
	L.Pushstring(c.Str("age"))
	L.Pushnumber(30)
	L.Settable(-3)

	// set table field fullname:John Doe
	L.Pushstring(c.Str("John Doe"))
	L.Setfield(-2, c.Str("fullname"))

	// set index field
	L.Pushinteger(123)
	L.Seti(-2, c.Int(1))

	// set pointer key field
	pointerKey := c.AllocaCStr("pointer key")
	L.Pushstring(c.Str("pointer value"))
	L.Rawsetp(-2, unsafe.Pointer(pointerKey))

	// get field by Getfield
	L.Getfield(-1, c.Str("name"))
	c.Printf(c.Str("name: %s\n"), L.Tostring(-1))
	L.Pop(1)

	// get field by Rawget
	L.Pushstring(c.Str("fullname"))
	L.Rawget(-2)
	c.Printf(c.Str("fullname: %s\n"), L.Tostring(-1))
	L.Pop(1)

	// get field by Gettable
	L.Pushstring(c.Str("age"))
	L.Gettable(-2)
	age := int(L.Tonumber(-1))
	c.Printf(c.Str("Age: %d\n"), age)
	L.Pop(1)

	// get index field
	L.Geti(-1, c.Int(1))
	c.Printf(c.Str("Index[%d] value: %d\n"), 1, L.Tointeger(-1))
	L.Pop(1)

	c.Printf(c.Str("All entries in the table:\n"))
	printTable(L)
}

/* Expected output:
name: John
fullname: John Doe
Age: 30
Index[1] value: 123
All entries in the table:
[1] - 123
name - John
[pointer] - pointer value
fullname - John Doe
age - 30.0
*/
