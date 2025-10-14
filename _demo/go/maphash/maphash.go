package main

import (
	"fmt"
	"hash/maphash"
)

func main() {
	var h maphash.Hash
	h.WriteString("hello")
	fmt.Printf("0x%x\n", h.Sum64())

	h.Reset()
	h.WriteString("world")
	fmt.Printf("0x%x\n", h.Sum64())

	h.Reset()
	h.WriteString("test")
	v1 := h.Sum64()

	h.Reset()
	h.WriteString("test")
	v2 := h.Sum64()

	fmt.Printf("0x%x == 0x%x\n", v1, v2)
}
