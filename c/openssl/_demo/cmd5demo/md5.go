package main

import (
	"fmt"
	"unsafe"

	"github.com/goplus/llgo/c/openssl"
)

func main() {
	var md5 openssl.MD5_CTX
	var h = make([]byte, openssl.MD5_LBLOCK)
	md5.Init()
	md5.UpdateString("The fog is getting thicker!")
	md5.UpdateString("And Leon's getting laaarger!")
	md5.Final(unsafe.SliceData(h))
	fmt.Printf("%x", h)
}
