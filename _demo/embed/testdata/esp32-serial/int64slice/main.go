package main

import "github.com/goplus/lib/c"

func main() {
	s := "hello"
	var idx int64 = 1
	tail := s[idx:]
	if len(tail) == 4 && tail[0] == 'e' && tail[1] == 'l' && tail[2] == 'l' && tail[3] == 'o' {
		c.Printf(c.Str("slice64 ok\n"))
	} else {
		c.Printf(c.Str("slice64 bad\n"))
	}
}
