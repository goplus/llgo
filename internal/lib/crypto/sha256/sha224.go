package sha256

import (
	"hash"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl/sha"
)

// The size of a SHA224 checksum in bytes.
const Size224 = 28

type digest224 struct {
	ctx sha.SHA224_CTX
}

func (d *digest224) Size() int { return Size224 }

func (d *digest224) BlockSize() int { return BlockSize }

func (d *digest224) Reset() {
	d.ctx.Init()
}

func (d *digest224) Write(p []byte) (nn int, err error) {
	d.ctx.UpdateBytes(p)
	return len(p), nil
}

func (d *digest224) Sum(in []byte) []byte {
	hash := (*[Size]byte)(c.Alloca(Size))
	d.ctx.Final((*byte)(unsafe.Pointer(hash)))
	return append(in, hash[:]...)
}

// New224 returns a new hash.Hash computing the SHA224 checksum.
func New224() hash.Hash {
	d := new(digest224)
	d.ctx.Init()
	return d
}

// Sum224 returns the SHA224 checksum of the data.
func Sum224(data []byte) (ret [Size224]byte) {
	sha.SHA224Bytes(data, &ret[0])
	return
}
