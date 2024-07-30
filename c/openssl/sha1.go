package openssl

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

type SHA_CTX struct {
	H0, H1, H2, H3, H4 SHA_LONG
	Nl, Nh             SHA_LONG
	Data               [SHA_LBLOCK]SHA_LONG
	Num                c.Uint
}

// OSSL_DEPRECATEDIN_3_0 int SHA1_Init(SHA_CTX *c);
//
// llgo:link (*SHA_CTX).Init C.SHA1_Init
func (c *SHA_CTX) Init() c.Int { return 0 }

// OSSL_DEPRECATEDIN_3_0 int SHA1_Update(SHA_CTX *c, const void *data, size_t len);
//
// llgo:link (*SHA_CTX).Update C.SHA1_Update
func (c *SHA_CTX) Update(data unsafe.Pointer, n uintptr) c.Int { return 0 }

func (c *SHA_CTX) UpdateBytes(data []byte) c.Int {
	return c.Update(unsafe.Pointer(unsafe.SliceData(data)), uintptr(len(data)))
}

func (c *SHA_CTX) UpdateString(data string) c.Int {
	return c.Update(unsafe.Pointer(unsafe.StringData(data)), uintptr(len(data)))
}

// OSSL_DEPRECATEDIN_3_0 int SHA1_Final(unsigned char *md, SHA_CTX *c);
//
//go:linkname sha1Final C.SHA1_Final
func sha1Final(md *byte, c *SHA_CTX) c.Int

func (c *SHA_CTX) Final(md *byte) c.Int {
	return sha1Final(md, c)
}

// OSSL_DEPRECATEDIN_3_0 void SHA1_Transform(SHA_CTX *c, const unsigned char *data);
//
// llgo:link (*SHA_CTX).Transform C.SHA1_Transform
func (c *SHA_CTX) Transform(data *byte) {}

// unsigned char *SHA1(const unsigned char *d, size_t n, unsigned char *md);
//
//go:linkname SHA1 C.SHA1
func SHA1(data unsafe.Pointer, n uintptr, md *byte) *byte

func SHA1Bytes(data []byte, md *byte) *byte {
	return SHA1(unsafe.Pointer(unsafe.SliceData(data)), uintptr(len(data)), md)
}

func SHA1String(data string, md *byte) *byte {
	return SHA1(unsafe.Pointer(unsafe.StringData(data)), uintptr(len(data)), md)
}
