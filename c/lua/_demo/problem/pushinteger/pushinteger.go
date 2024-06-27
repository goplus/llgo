package main

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func main() {
	L := lua.NewState()
	defer L.Close()

	L.OpenLibs()
	// TODO(zzy): fix push interger got stuck
	code := c.Str(`function combineParams(x) 
	return x * 2
end`)
	if res := L.Dostring(code); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.ToString(-1))
	}
	L.GetGlobal(c.Str("combineParams"))
	c.Printf(c.Str("stack lens:%d\n"), L.GetTop()) // stack lens:1

	L.PushInteger(lua.Integer(42))
	pushed := L.ToInteger(-1)

	c.Printf(c.Str("pushed: %lld\n"), pushed)      // pushed: 0
	c.Printf(c.Str("stack lens:%d\n"), L.GetTop()) // stack lens:1

	// L.PushNumber(42)
	// pushed := L.ToNumber(-1)
	// c.Printf(c.Str("pushed: %f\n"), pushed)

	if res := L.PCall(1, 1, 0); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.ToString(-1))
	}
	if res := L.IsNumber(-1); res != 0 {
		result := L.ToInteger(-1)
		c.Printf(c.Str("result %f"), result)
	}
}
