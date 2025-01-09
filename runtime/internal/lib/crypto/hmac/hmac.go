package hmac

// llgo:skipall
import (
	"crypto/sha256"
	"crypto/subtle"
	"hash"
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/openssl"
)

type eface struct {
	_type   unsafe.Pointer
	funcPtr *unsafe.Pointer
}

func funcOf(a any) unsafe.Pointer {
	e := (*eface)(unsafe.Pointer(&a))
	return *e.funcPtr
}

type digest openssl.HMAC_CTX

func (d *digest) Size() int { panic("todo: hmac.(*digest).Size") }

func (d *digest) BlockSize() int { panic("todo: hmac.(*digest).BlockSize") }

func (d *digest) Reset() {
	(*openssl.HMAC_CTX)(d).Reset()
}

func (d *digest) Write(p []byte) (nn int, err error) {
	(*openssl.HMAC_CTX)(d).UpdateBytes(p)
	return len(p), nil
}

func (d *digest) Sum(in []byte) []byte {
	const Size = openssl.EVP_MAX_MD_SIZE
	var digestLen c.Uint
	hash := (*[Size]byte)(c.Alloca(Size))
	(*openssl.HMAC_CTX)(d).Final(&hash[0], &digestLen)
	return append(in, hash[:digestLen]...)
}

// New returns a new HMAC hash using the given [hash.Hash] type and key.
// New functions like sha256.New from [crypto/sha256] can be used as h.
// h must return a new Hash every time it is called.
// Note that unlike other hash implementations in the standard library,
// the returned Hash does not implement [encoding.BinaryMarshaler]
// or [encoding.BinaryUnmarshaler].
func New(h func() hash.Hash, key []byte) hash.Hash {
	var md *openssl.EVP_MD
	switch funcOf(h) {
	case c.Func(sha256.New):
		md = openssl.EVP_sha256()
	default:
		panic("todo: hmac.New: unsupported hash function")
	}
	ctx := openssl.NewHMAC_CTX()
	ctx.InitBytes(key, md)
	return (*digest)(ctx)
}

// Equal compares two MACs for equality without leaking timing information.
func Equal(mac1, mac2 []byte) bool {
	// We don't have to be constant time if the lengths of the MACs are
	// different as that suggests that a completely different hash function
	// was used.
	return subtle.ConstantTimeCompare(mac1, mac2) == 1
}
