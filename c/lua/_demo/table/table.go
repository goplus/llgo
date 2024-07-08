package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func printTable(L *lua.State) {
	L.PushNil()
	for L.Next(-2) != 0 {
		key := L.ToString(-2)
		value := L.ToString(-1)
		c.Printf(c.Str("%s - %s\n"), key, value)
		L.Pop(1)
	}
	L.Pop(1)
}

func main() {
	L := lua.NewState()
	defer L.Close()

	L.OpenLibs()

	L.NewTable()

	L.PushString(c.Str("name"))
	L.PushString(c.Str("John"))
	L.SetTable(-3)

	L.PushString(c.Str("age"))
	L.PushNumber(30)
	L.SetTable(-3)

	L.PushString(c.Str("John Doe"))
	L.SetField(-2, c.Str("fullname"))

	L.GetField(-1, c.Str("name"))
	c.Printf(c.Str("%s\n"), L.ToString(-1))
	L.Pop(1)

	L.PushString(c.Str("age"))
	L.GetTable(-2)
	age := int(L.ToNumber(-1))
	c.Printf(c.Str("Age: %d\n"), age)
	L.Pop(1)

	c.Printf(c.Str("All entries in the table:\n"))
	printTable(L)

}
