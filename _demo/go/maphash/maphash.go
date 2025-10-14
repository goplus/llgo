package main

import (
	"fmt"
	"hash/maphash"
)

func main() {
	var h maphash.Hash
	h.WriteString("hello")
	hash1 := h.Sum64()
	fmt.Printf("0x%x\n", hash1)

	h.Reset()
	h.WriteString("world")
	hash2 := h.Sum64()
	fmt.Printf("0x%x\n", hash2)

	h.Reset()
	h.WriteString("hello")
	hash3 := h.Sum64()
	fmt.Printf("0x%x == 0x%x\n", hash1, hash3)
}
