package hmac

// llgo:skipall
import (
	"bytes"
	"fmt"
	"hash"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl"
)

type marshalable interface {
	MarshalBinary() ([]byte, error)
	UnmarshalBinary([]byte) error
}

type hmac struct {
	opad, ipad   []byte
	outer, inner hash.Hash
	// If marshaled is true, then opad and ipad do not contain a padded
	// copy of the key, but rather the marshaled state of outer/inner after
	// opad/ipad has been fed into it.
	marshaled bool
}

func (h *hmac) Sum(in []byte) []byte {
	origLen := len(in)
	in = h.inner.Sum(in)

	if h.marshaled {
		if err := h.outer.(marshalable).UnmarshalBinary(h.opad); err != nil {
			panic(err)
		}
	} else {
		h.outer.Reset()
		h.outer.Write(h.opad)
	}
	h.outer.Write(in[origLen:])
	return h.outer.Sum(in[:origLen])
}

func (h *hmac) Write(p []byte) (n int, err error) {
	return h.inner.Write(p)
}

func (h *hmac) Size() int      { return h.outer.Size() }
func (h *hmac) BlockSize() int { return h.inner.BlockSize() }

func (h *hmac) Reset() {
	if h.marshaled {
		if err := h.inner.(marshalable).UnmarshalBinary(h.ipad); err != nil {
			panic(err)
		}
		return
	}
	h.inner.Reset()
	h.inner.Write(h.ipad)
	// If the underlying hash is marshalable, we can save some time by
	// saving a copy of the hash state now, and restoring it on future
	// calls to Reset and Sum instead of writing ipad/opad every time.
	//
	// If either hash is unmarshalable for whatever reason,
	// it's safe to bail out here.
	marshalableInner, innerOK := h.inner.(marshalable)
	if !innerOK {
		return
	}
	marshalableOuter, outerOK := h.outer.(marshalable)
	if !outerOK {
		return
	}
	imarshal, err := marshalableInner.MarshalBinary()
	if err != nil {
		return
	}
	h.outer.Reset()
	h.outer.Write(h.opad)
	omarshal, err := marshalableOuter.MarshalBinary()
	if err != nil {
		return
	}
	// Marshaling succeeded; save the marshaled state for later
	h.ipad = imarshal
	h.opad = omarshal
	h.marshaled = true
}

// New returns a new HMAC hash using the given [hash.Hash] type and key.
// New functions like sha256.New from [crypto/sha256] can be used as h.
// h must return a new Hash every time it is called.
// Note that unlike other hash implementations in the standard library,
// the returned Hash does not implement [encoding.BinaryMarshaler]
// or [encoding.BinaryUnmarshaler].
func New(h func() hash.Hash, key []byte) hash.Hash {
	fmt.Println("My New")
	return nil
	if true {
		hm := NewHMAC(h, key)
		if hm != nil {
			return hm
		}
		// BoringCrypto did not recognize h, so fall through to standard Go code.
	}
	hm := new(hmac)
	hm.outer = h()
	hm.inner = h()
	unique := true
	func() {
		defer func() {
			// The comparison might panic if the underlying types are not comparable.
			_ = recover()
		}()
		if hm.outer == hm.inner {
			unique = false
		}
	}()
	if !unique {
		panic("crypto/hmac: hash generation function does not produce unique values")
	}
	blocksize := hm.inner.BlockSize()
	hm.ipad = make([]byte, blocksize)
	hm.opad = make([]byte, blocksize)
	if len(key) > blocksize {
		// If key is too big, hash it.
		hm.outer.Write(key)
		key = hm.outer.Sum(nil)
	}
	copy(hm.ipad, key)
	copy(hm.opad, key)
	for i := range hm.ipad {
		hm.ipad[i] ^= 0x36
	}
	for i := range hm.opad {
		hm.opad[i] ^= 0x5c
	}
	hm.inner.Write(hm.ipad)

	return hm
}

// Equal compares two MACs for equality without leaking timing information.
func Equal(mac1, mac2 []byte) bool {
	// We don't have to be constant time if the lengths of the MACs are
	// different as that suggests that a completely different hash function
	// was used.
	return constantTimeCompare(mac1, mac2) == 1
}

func constantTimeCompare(x, y []byte) int {
	if len(x) != len(y) {
		return 0
	}

	var v byte

	for i := 0; i < len(x); i++ {
		v |= x[i] ^ y[i]
	}

	return constantTimeByteEq(v, 0)
}

func constantTimeByteEq(x, y uint8) int {
	return int((uint32(x^y) - 1) >> 31)
}

type boringHMAC struct {
	md        *openssl.EVP_MD
	ctx       *openssl.HMAC_CTX
	ctx2      *openssl.HMAC_CTX
	size      int
	blockSize int
	key       []byte
	sum       []byte
}

func (h *boringHMAC) Reset() {
	if h.ctx != nil {
		h.ctx.Free()
	}
	h.ctx = openssl.NewHMAC_CTX()
	if h.ctx == nil {
		panic("NewHMAC_CTX fail")
	}
	ret := h.ctx.Init(unsafe.Pointer(unsafe.SliceData(h.key)), c.Int(len(h.key)), h.md)
	if ret == 0 {
		panic("boringcrypto: HMAC_Init failed")
	}
	if c.Int(h.ctx.Size()) != c.Int(h.size) {
		println("boringcrypto: HMAC size:", h.ctx.Size(), "!=", h.size)
		panic("boringcrypto: HMAC size mismatch")
	}
	h.sum = nil
}

func (h *boringHMAC) Write(p []byte) (int, error) {
	if len(p) > 0 {
		h.ctx.UpdateBytes(p)
	}
	//runtime.KeepAlive(h)
	return len(p), nil
}

func (h *boringHMAC) Size() int {
	return h.size
}

func (h *boringHMAC) BlockSize() int {
	return h.blockSize
}

func (h *boringHMAC) Sum(in []byte) []byte {
	if h.sum == nil {
		size := h.Size()
		h.sum = make([]byte, size)
	}
	// Make copy of context because Go hash.Hash mandates
	// that Sum has no effect on the underlying stream.
	// In particular it is OK to Sum, then Write more, then Sum again,
	// and the second Sum acts as if the first didn't happen.
	h.ctx2 = openssl.NewHMAC_CTX()
	if h.ctx2 == nil {
		panic("NewHMAC_CTX fail")
	}
	ret := h.ctx.Copy(h.ctx2)
	if ret == 0 {
		panic("boringcrypto: HMAC_CTX_copy_ex failed")
	}
	var lenSum c.Uint = c.Uint(len(h.sum))
	h.ctx2.Final(&h.sum[0], &lenSum)
	return append(in, h.sum...)
}

func NewHMAC(h func() hash.Hash, key []byte) hash.Hash {
	if h == nil {
		panic("h == nil")
	}
	ch := h()
	if ch == nil {
		panic("ch == nil")
	}
	md := hashToMD(ch)
	if md == nil {
		panic("md == nil")
	}
	hkey := bytes.Clone(key)
	hmac := &boringHMAC{
		md:        md,
		size:      ch.Size(),
		blockSize: ch.BlockSize(),
		key:       hkey,
	}
	hmac.Reset()
	return hmac
}

func hashToMD(h hash.Hash) *openssl.EVP_MD {
	return openssl.EVP_sha1()
}
