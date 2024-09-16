package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func toString(L *lua.State) c.Int {
	L.Pushstring(c.Str("Hello from metatable!"))
	return 1
}

func printStack(L *lua.State, message string) {
	top := L.Gettop()
	c.Printf(c.Str("%s - Stack size: %d\n"), c.AllocaCStr(message), c.Int(top))
	for i := c.Int(1); i <= top; i++ {
		t := L.Type(i)
		switch t {
		case c.Int(lua.STRING):
			c.Printf(c.Str("  %d: string: %s\n"), c.Int(i), L.Tostring(i))
		case c.Int(lua.BOOLEAN):
			c.Printf(c.Str("  %d: boolean: %v\n"), c.Int(i), L.Toboolean(i))
		case c.Int(lua.NUMBER):
			c.Printf(c.Str("  %d: number: %f\n"), c.Int(i), L.Tonumber(i))
		default:
			c.Printf(c.Str("  %d: %s\n"), c.Int(i), L.Typename(t))
		}
	}
}

func main() {
	L := lua.Newstate__1()
	defer L.Close()

	L.Openlibs()

	L.Newtable()
	printStack(L, "After creating main table")

	L.Newtable()
	printStack(L, "After creating metatable")

	L.Pushcfunction(toString)
	printStack(L, "After Push CFunction")

	L.Setfield(-2, c.Str("__tostring"))
	printStack(L, "After setting __tostring")

	if L.Setmetatable(-2) == 0 {
		c.Printf(c.Str("Failed to set metatable\n"))
	}
	printStack(L, "After setting metatable")

	L.Setglobal(c.Str("obj"))
	printStack(L, "After setting global obj")

	testcode := c.Str(`
		if obj == nil then
			print('obj is not defined')
		else
			local mt = getmetatable(obj)
			if not mt then
				print('Metatable not set')
			elseif not mt.__tostring then
				print('__tostring not set in metatable')
			else
				print(mt.__tostring(obj))
			end
		end
	`)

	if L.Dostring(testcode) != lua.OK {
		c.Printf(c.Str("Error: %s\n"), L.Tostring(-1))
	}

	L.Getglobal(c.Str("obj"))
	if L.Getmetatable(-1) != 0 {
		c.Printf(c.Str("Metatable get success\n"))
		L.Pushstring(c.Str("__tostring"))
		L.Gettable(-2)
		if L.Isfunction(-1) {
			c.Printf(c.Str("__tostring function found in metatable\n"))
			if L.Iscfunction(-1) != 0 {
				c.Printf(c.Str("__tostring is a C function\n"))
				cfunc := L.Tocfunction(-1)
				if cfunc != nil {
					c.Printf(c.Str("Successfully retrieved __tostring C function pointer\n"))
					L.Pushcfunction(cfunc)
					if L.Call(0, 1) == lua.OK {
						result := L.Tostring(-1)
						c.Printf(c.Str("Result of calling __tostring: %s\n"), result)
					}
				}
			}
		} else {
			c.Printf(c.Str("__tostring function not found in metatable\n"))
		}
	} else {
		c.Printf(c.Str("No metatable found using GetTable\n"))
	}
}

/* Expected output:
After creating main table - Stack size: 1
  1: table
After creating metatable - Stack size: 2
  1: table
  2: table
After Push CFunction - Stack size: 3
  1: table
  2: table
  3: function
After setting __tostring - Stack size: 2
  1: table
  2: table
After setting metatable - Stack size: 1
  1: table
After setting global obj - Stack size: 0
Hello from metatable!
Metatable get success
__tostring function found in metatable
__tostring is a C function
Successfully retrieved __tostring C function pointer
Result of calling __tostring: Hello from metatable!
*/
