package main

import (
	"fmt"
	"unsafe"

	"github.com/goplus/llgo/c/openssl"
)

func main() {

	var sha1 openssl.SHA_CTX
	sha1.Init()
	sha1.UpdateString("His money is twice tainted:")
	sha1.UpdateString(" 'taint yours and 'taint mine.")

	h := make([]byte, openssl.SHA_DIGEST_LENGTH)
	sha1.Final(unsafe.SliceData(h))
	fmt.Printf("%x\n", h)

	var sha256 openssl.SHA256_CTX
	sha256.Init()
	sha256.UpdateString("His money is twice tainted:")
	sha256.UpdateString(" 'taint yours and 'taint mine.")

	hh := make([]byte, openssl.SHA256_DIGEST_LENGTH)
	sha256.Final(unsafe.SliceData(hh))
	fmt.Printf("%x\n", hh)
}
