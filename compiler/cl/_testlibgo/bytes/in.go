package main

import (
	"bytes"
)

func main() {
	var b bytes.Buffer // A Buffer needs no initialization.
	b.Write([]byte("Hello "))
	b.WriteString("World")

	println("buf", b.Bytes(), b.String())

	println(bytes.EqualFold([]byte("Go"), []byte("go")))
}
