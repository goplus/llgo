package sha256

// llgo:skipall
import (
	"hash"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl"
)

// The blocksize of SHA256 and SHA224 in bytes.
const BlockSize = 64

// The size of a SHA256 checksum in bytes.
const Size = 32

// The size of a SHA224 checksum in bytes.
const Size224 = 28

type digest256 struct {
	ctx openssl.SHA256_CTX
}

func (d *digest256) Size() int { return Size }

func (d *digest256) BlockSize() int { return BlockSize }

func (d *digest256) Reset() {
	d.ctx.Init()
}

func (d *digest256) Write(p []byte) (nn int, err error) {
	d.ctx.UpdateBytes(p)
	return len(p), nil
}

func (d *digest256) Sum(in []byte) []byte {
	hash := (*[Size]byte)(c.Alloca(Size))
	d.ctx.Final((*byte)(unsafe.Pointer(hash)))
	return append(in, hash[:]...)
}

// New returns a new hash.Hash computing the SHA256 checksum.
func New() hash.Hash {
	d := new(digest256)
	d.ctx.Init()
	return d
}

// New224 returns a new hash.Hash computing the SHA224 checksum.
func New224() hash.Hash {
	d := new(digest224)
	d.ctx.Init()
	return d
}

// Sum224 returns the SHA224 checksum of the data.
func Sum224(data []byte) (ret [Size224]byte) {
	openssl.SHA224Bytes(data, &ret[0])
	return
}

// Sum256 returns the SHA256 checksum of the data.
func Sum256(data []byte) (ret [Size]byte) {
	openssl.SHA256Bytes(data, &ret[0])
	return
}

func Sum(data []byte) (ret [Size]byte) {
	openssl.SHA256Bytes(data, &ret[0])
	return
}
