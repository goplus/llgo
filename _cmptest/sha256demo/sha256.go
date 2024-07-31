package main

import (
	"crypto/sha256"
	"fmt"
)

func main() {
	sum := sha256.Sum256([]byte("hello world\n"))
	fmt.Printf("%x", sum)
}
