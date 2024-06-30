package main

import (
	"strings"
	"unicode"
)

func main() {
	var b strings.Builder
	b.Write([]byte("Hello "))
	b.WriteString("World")

	println("len:", b.Len(), "cap:", b.Cap(), "string:", b.String())

	f := func(c rune) bool {
		return unicode.Is(unicode.Han, c)
	}
	println(strings.IndexFunc("Hello, 世界", f))
	println(strings.IndexFunc("Hello, world", f))
}
