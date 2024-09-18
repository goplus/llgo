package main

import (
	"os"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func triggerError(L *lua.State) c.Int {
	L.Pushstring(c.Str("This is an error triggered"))
	return L.Error()
}

func triggerFormatError(L *lua.State) c.Int {
	return L.LError(c.Str("This is an error code:(%d)"), 42)
}

func customPanic(L *lua.State) c.Int {
	msg := L.Tostring(-1)
	c.Printf(c.Str("Pani'c: %s\n"), msg)
	os.Exit(1)
	return 0
}

func main() {
	L := lua.Newstate__1()
	defer L.Close()

	L.Openlibs()

	L.Atpanic(customPanic)

	L.Register(c.Str("trigger_error"), triggerError)
	L.Register(c.Str("trigger_format_error"), triggerFormatError)

	c.Printf(c.Str("1. error (protected):\n"))
	L.Getglobal(c.Str("trigger_error"))
	if L.Pcall(0, 0, 0) != lua.OK {
		c.Printf(c.Str("Error: %s\n"), L.Tostring(-1))
		L.Pop(1)
	}

	c.Printf(c.Str("2. format_error (protected):\n"))
	L.Getglobal(c.Str("trigger_format_error"))
	if L.Pcall(0, 0, 0) != lua.OK {
		c.Printf(c.Str("Error: %s\n"), L.Tostring(-1))
		L.Pop(1)
	}

	c.Printf(c.Str("3. Unprotected call (panic):\n"))
	L.Getglobal(c.Str("trigger_error"))
	// This will trigger unprotected panic and catch by customPanic
	L.Call(0, 0)
}

/* Expected output:
1. error (protected):
Error: This is an error triggered
2. format_error (protected):
Error: This is an error code:(42)
3. Unprotected call (panic):
Panic: This is an error triggered
*/
