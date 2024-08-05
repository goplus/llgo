package sha512

import (
	"hash"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl/sha"
)

type digest384 struct {
	ctx sha.SHA384_CTX
}

func (d *digest384) Size() int { return Size384 }

func (d *digest384) BlockSize() int { return BlockSize }

func (d *digest384) Reset() {
	d.ctx.Init()
}

func (d *digest384) Write(p []byte) (nn int, err error) {
	d.ctx.UpdateBytes(p)
	return len(p), nil
}

func (d *digest384) Sum(in []byte) []byte {
	hash := (*[Size]byte)(c.Alloca(Size))
	d.ctx.Final((*byte)(unsafe.Pointer(hash)))
	return append(in, hash[:]...)
}

func New384() hash.Hash {
	d := new(digest384)
	d.ctx.Init()
	return d
}

func Sum384(data []byte) (ret [Size384]byte) {
	sha.SHA384Bytes(data, &ret[0])
	return
}
