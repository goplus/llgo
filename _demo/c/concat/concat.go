package main

import (
	"github.com/goplus/lib/c"
)

func concat(args ...string) (ret string) {
	for _, v := range args {
		ret += v
	}
	return
}

func main() {
	result := concat("Hello", " ", "World")
	c.Fprintf(c.Stderr, c.Str("Hi, %s\n"), c.AllocaCStr(result))
}

/* Expected output (stderr):
Hi, Hello World
*/
