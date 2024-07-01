package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/rure"
)

func main() {
	re := rure.CompileMust(c.Str(`^\d+$`))
	for _, str := range []string{
		"123",
		"abc",
	} {
		cstr := c.AllocaCStr(str)
		cstrlen := c.Strlen(cstr)
		println(re.IsMatch(cstr, cstrlen, 0))
	}
}

/* Expected output:
true
false
*/
