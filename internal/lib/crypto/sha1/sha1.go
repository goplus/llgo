package sha1

// llgo:skipall
import (
	"crypto"
	"hash"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl/sha"
)

func init() {
	crypto.RegisterHash(crypto.SHA1, New)
}

// The blocksize of SHA-1 in bytes.
const BlockSize = 64

// The size of a SHA-1 checksum in bytes.
const Size = 20

type digest struct {
	ctx sha.SHA_CTX
}

func (d *digest) Size() int { return Size }

func (d *digest) BlockSize() int { return BlockSize }

func (d *digest) Reset() {
	d.ctx.Init()
}

func (d *digest) Write(p []byte) (nn int, err error) {
	d.ctx.UpdateBytes(p)
	return len(p), nil
}

func (d *digest) Sum(in []byte) []byte {
	hash := (*[Size]byte)(c.Alloca(Size))
	d.ctx.Final((*byte)(unsafe.Pointer(hash)))
	return append(in, hash[:]...)
}

// New returns a new hash.Hash computing the SHA1 checksum.
func New() hash.Hash {
	d := new(digest)
	d.ctx.Init()
	return d
}

// Sum returns the SHA-1 checksum of the data.
func Sum(data []byte) (ret [Size]byte) {
	sha.SHA1Bytes(data, &ret[0])
	return
}
