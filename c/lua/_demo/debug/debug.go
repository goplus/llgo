package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/lua"
)

func Hook(L *lua.State, ar *lua.Debug) {
	L.Getinfo(c.Str("nSl"), ar)
	c.Printf(c.Str("Hook called:"))
	if name := ar.Name; name != nil {
		c.Printf(c.Str("name: %s,"), name)
	}
	if what := ar.What; what != nil {
		c.Printf(c.Str("what: %s,"), what)
	}
	c.Printf(c.Str("source: %s,"), c.Pointer(unsafe.SliceData(ar.ShortSrc[:])))
	c.Printf(c.Str("line: %d\n"), ar.Currentline)
}

func main() {
	L := lua.Newstate__1()
	defer L.Close()
	L.Openlibs()

	L.Sethook(Hook, lua.MASKLINE, 0)

	code :=
		`function hello(name) 
                print('Hello, ' .. name .. '!')
        end
        hello('llgo')`
	if res := L.Dostring(c.Str(code)); res != lua.OK {
		c.Printf(c.Str("error: %s\n"), L.Tostring(-1))
	}

}

/* Expected output:
Hook called:what: main,source: [string "function hello(name) ..."],line: 3
Hook called:what: main,source: [string "function hello(name) ..."],line: 1
Hook called:what: main,source: [string "function hello(name) ..."],line: 4
Hook called:name: hello,what: Lua,source: [string "function hello(name) ..."],line: 2
Hello, llgo!
Hook called:name: hello,what: Lua,source: [string "function hello(name) ..."],line: 3
*/
