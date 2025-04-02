package main

import "github.com/goplus/lib/c"

func main() {
	cstrs := c.AllocaCStrs([]string{"a", "b", "c"}, true)
	n := 0
	for {
		cstr := *c.Advance(cstrs, n)
		if cstr == nil {
			break
		}
		c.Printf(c.Str("%s\n"), cstr)
		n++
	}
}
