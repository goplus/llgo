package sha256

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl"
)

type digest224 struct {
	ctx openssl.SHA224_CTX
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
