package hmac

// llgo:skipall
import (
	"crypto/subtle"
	"hash"
)

// New returns a new HMAC hash using the given [hash.Hash] type and key.
// New functions like sha256.New from [crypto/sha256] can be used as h.
// h must return a new Hash every time it is called.
// Note that unlike other hash implementations in the standard library,
// the returned Hash does not implement [encoding.BinaryMarshaler]
// or [encoding.BinaryUnmarshaler].
func New(h func() hash.Hash, key []byte) hash.Hash {
	panic("todo")
}

// Equal compares two MACs for equality without leaking timing information.
func Equal(mac1, mac2 []byte) bool {
	// We don't have to be constant time if the lengths of the MACs are
	// different as that suggests that a completely different hash function
	// was used.
	return subtle.ConstantTimeCompare(mac1, mac2) == 1
}
