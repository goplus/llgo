package main

import "github.com/goplus/lib/c"

func myprint(s *c.Char) {
	for i := 0; i < int(c.Strlen(s)); i++ {
		WriteByte(byte(c.Index(s, i)))
	}
}

func main() {
	for {
		myprint(c.Str("hello world"))
		sleep(1)
	}
}
