package sha512

// llgo:skipall

import (
	"hash"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl"
)

const (
	// Size is the size, in bytes, of a SHA-512 checksum.
	Size = 64

	// Size224 is the size, in bytes, of a SHA-512/224 checksum.
	Size224 = 28

	// Size256 is the size, in bytes, of a SHA-512/256 checksum.
	Size256 = 32

	// Size384 is the size, in bytes, of a SHA-384 checksum.
	Size384 = 48

	// BlockSize is the block size, in bytes, of the SHA-512/224,
	// SHA-512/256, SHA-384 and SHA-512 hash functions.
	BlockSize = 128
)

type digest512 struct {
	ctx openssl.SHA512_CTX
}

func (d *digest512) Size() int { return Size }

func (d *digest512) BlockSize() int { return BlockSize }

func (d *digest512) Reset() {
	d.ctx.Init()
}

func (d *digest512) Write(p []byte) (nn int, err error) {
	d.ctx.UpdateBytes(p)
	return len(p), nil
}

func (d *digest512) Sum(in []byte) []byte {
	hash := (*[Size]byte)(c.Alloca(Size))
	d.ctx.Final((*byte)(unsafe.Pointer(hash)))
	return append(in, hash[:]...)
}

func New() hash.Hash {
	d := new(digest512)
	d.ctx.Init()
	return d
}

func New384() hash.Hash {
	d := new(digest384)
	d.ctx.Init()
	return d
}

func Sum384(data []byte) (ret [Size384]byte) {
	openssl.SHA384Bytes(data, &ret[0])
	return
}

func Sum512(data []byte) (ret [Size]byte) {
	openssl.SHA512Bytes(data, &ret[0])
	return
}

func New512_224() hash.Hash {
	panic("todo: New512_224")
}

func New512_256() hash.Hash {
	panic("todo: New512_256")
}

func Sum512_224(data []byte) [Size224]byte {
	panic("todo: Sum512_224")
}

func Sum512_256(data []byte) [Size256]byte {
	panic("todo: Sum512_256")
}
