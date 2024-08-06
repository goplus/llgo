package main

import (
	"fmt"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl"
)

func main() {
	str := "Hello, World!"
	key := "123456"
	var lenKey = len(key)

	var digest = make([]byte, openssl.EVP_MAX_MD_SIZE)
	var digestLen c.Uint
	ctx := openssl.NewHMAC_CTX()
	if ctx == nil {
		c.Fprintf(c.Stderr, c.Str("%s\n"), c.Str("Error creating HMAC_CTX"))
		return
	}
	defer ctx.Free()
	var ret c.Int = ctx.InitEx(unsafe.Pointer(unsafe.StringData(key)), c.Int(lenKey), openssl.EVP_sha256(), nil)
	if ret == 0 {
		c.Fprintf(c.Stderr, c.Str("%s\n"), c.Str("Error initializing HMAC_CTX"))
		return
	}
	ret = ctx.UpdateString(str)
	if ret == 0 {
		c.Fprintf(c.Stderr, c.Str("%s\n"), c.Str("Error updating HMAC_CTX"))
		return
	}
	ret = ctx.Final(unsafe.SliceData(digest), &digestLen)
	if ret == 0 {
		c.Fprintf(c.Stderr, c.Str("%s\n"), c.Str("Error finalizing HMAC_CTX"))
		return
	}
	fmt.Printf("HMAC:%x\n", digest[:digestLen])
}
