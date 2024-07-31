package sha512

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl"
)

type digest384 struct {
	ctx openssl.SHA384_CTX
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
