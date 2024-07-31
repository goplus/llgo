package main

import (
	"crypto/sha512"
	"fmt"
)

func main() {
	sum := sha512.Sum512([]byte("hello world\n"))
	fmt.Printf("%x", sum)
}
