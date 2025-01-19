package sha256

import (
	_ "unsafe"
)

const (
	chunk = 64
)

type digest struct {
	h     [8]uint32
	x     [chunk]byte
	nx    int
	len   uint64
	is224 bool // mark if this digest is SHA-224
}

//go:linkname blockGeneric crypto.sha256.blockGeneric
func blockGeneric(dig *digest, p []byte)
