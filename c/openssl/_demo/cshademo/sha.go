package main

import (
	"fmt"
	"unsafe"

	"github.com/goplus/llgo/c/openssl"
)

func main() {
	str := "His money is twice tainted:"

	var sha1 openssl.SHA_CTX
	sha1.Init()
	sha1.UpdateString(str)

	h1 := make([]byte, openssl.SHA_DIGEST_LENGTH)
	sha1.Final(unsafe.SliceData(h1))
	fmt.Printf("%x\n", h1)

	h2 := make([]byte, openssl.SHA_DIGEST_LENGTH)
	openssl.SHA1String(str, unsafe.SliceData(h2))
	fmt.Printf("%x\n", h2)

	var sha256 openssl.SHA256_CTX
	sha256.Init()
	sha256.UpdateString(str)
	h3 := make([]byte, openssl.SHA256_DIGEST_LENGTH)
	sha256.Final(unsafe.SliceData(h3))
	fmt.Printf("%x\n", h3)

	h4 := make([]byte, openssl.SHA256_DIGEST_LENGTH)
	openssl.SHA256String(str, unsafe.SliceData(h4))
	fmt.Printf("%x\n", h4)

	var sha512 openssl.SHA512_CTX
	sha512.Init()
	sha512.UpdateString("His money is twice tainted:")

	h5 := make([]byte, openssl.SHA512_DIGEST_LENGTH)
	sha512.Final(unsafe.SliceData(h5))
	fmt.Printf("%x\n", h5)

	h6 := make([]byte, openssl.SHA512_DIGEST_LENGTH)
	openssl.SHA512String(str, unsafe.SliceData(h6))
	fmt.Printf("%x\n", h6)

	var sha224 openssl.SHA224_CTX
	sha224.Init()
	sha224.UpdateString(str)

	h7 := make([]byte, openssl.SHA224_DIGEST_LENGTH)
	sha224.Final(unsafe.SliceData(h7))
	fmt.Printf("%x\n", h7)
	h8 := make([]byte, openssl.SHA224_DIGEST_LENGTH)
	openssl.SHA224String(str, unsafe.SliceData(h8))
	fmt.Printf("%x\n", h8)

	var sha384 openssl.SHA384_CTX
	sha384.Init()
	sha384.UpdateString(str)
	h9 := make([]byte, openssl.SHA384_DIGEST_LENGTH)
	sha384.Final(unsafe.SliceData(h9))
	fmt.Printf("%x\n", h9)
	h10 := make([]byte, openssl.SHA384_DIGEST_LENGTH)
	openssl.SHA384String(str, unsafe.SliceData(h10))
	fmt.Printf("%x\n", h10)
}
