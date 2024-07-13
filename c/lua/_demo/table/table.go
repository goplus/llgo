package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func printTable(L *lua.State) {
	L.Pushnil()
	for L.Next(-2) != 0 {
		key := L.Tostring(-2)
		value := L.Tostring(-1)
		c.Printf(c.Str("%s - %s\n"), key, value)
		L.Pop(1)
	}
	L.Pop(1)
}

func main() {
	L := lua.Newstate()
	defer L.Close()

	L.Openlibs()

	L.Newtable()

	L.Pushstring(c.Str("name"))
	L.Pushstring(c.Str("John"))
	L.Settable(-3)

	L.Pushstring(c.Str("age"))
	L.Pushnumber(30)
	L.Settable(-3)

	L.Pushstring(c.Str("John Doe"))
	L.Setfield(-2, c.Str("fullname"))

	L.Getfield(-1, c.Str("name"))
	c.Printf(c.Str("%s\n"), L.Tostring(-1))
	L.Pop(1)

	L.Pushstring(c.Str("age"))
	L.Gettable(-2)
	age := int(L.Tonumber(-1))
	c.Printf(c.Str("Age: %d\n"), age)
	L.Pop(1)

	c.Printf(c.Str("All entries in the table:\n"))
	printTable(L)

}

/* Expected output:
John
Age: 30
All entries in the table:
age - 30.0
fullname - John Doe
name - John
*/
