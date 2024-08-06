package main

import (
	"crypto/hmac"
	"crypto/sha1"
	"fmt"
	"io"
)

func main() {
	h := hmac.New(sha1.New, []byte("<key>"))
	io.WriteString(h, "The fog is getting thicker!")
	io.WriteString(h, "And Leon's getting laaarger!")
	fmt.Printf("%x", h.Sum(nil))
}
