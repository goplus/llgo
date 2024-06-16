package main

import "github.com/goplus/llgo/c"

func f(s string) bool {
	return len(s) > 2
}

func main() {
	c.GoDeferData()
	if s := "hello"; f(s) {
		defer c.Printf(c.Str("%s\n"), c.AllocaCStr(s))
	} else {
		defer c.Printf(c.Str("world\n"))
	}
	defer c.Printf(c.Str("bye\n"))
}
