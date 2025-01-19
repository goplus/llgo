// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package sha256

import (
	"encoding/binary"
)

// Initialize the K constants for SHA256
var k = []uint32{
	0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5,
	0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
	0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3,
	0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
	0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc,
	0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
	0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7,
	0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
	0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13,
	0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
	0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3,
	0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
	0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5,
	0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
	0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208,
	0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2,
}

func sha256block(h []uint32, p []byte, k []uint32) {
	if len(p)%64 != 0 {
		panic("sha256block: len(p) % 64 != 0")
	}

	var w [64]uint32

	h0, h1, h2, h3, h4, h5, h6, h7 := h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7]

	for len(p) >= 64 {
		// Load message into w[0:16]
		for i := 0; i < 16; i++ {
			j := i * 4
			w[i] = binary.BigEndian.Uint32(p[j:])
		}

		// Extend the first 16 words into the remaining 48 words w[16..63]
		for i := 16; i < 64; i++ {
			v1 := w[i-2]
			t1 := (rightRotate(v1, 17)) ^ (rightRotate(v1, 19)) ^ (v1 >> 10)
			v2 := w[i-15]
			t2 := (rightRotate(v2, 7)) ^ (rightRotate(v2, 18)) ^ (v2 >> 3)
			w[i] = t1 + w[i-7] + t2 + w[i-16]
		}

		a, b, c, d, e, f, g, h := h0, h1, h2, h3, h4, h5, h6, h7

		// Compression function main loop
		for i := 0; i < 64; i++ {
			t1 := h + ((rightRotate(e, 6)) ^ (rightRotate(e, 11)) ^ (rightRotate(e, 25))) + ((e & f) ^ (^e & g)) + k[i] + w[i]
			t2 := ((rightRotate(a, 2)) ^ (rightRotate(a, 13)) ^ (rightRotate(a, 22))) + ((a & b) ^ (a & c) ^ (b & c))
			h = g
			g = f
			f = e
			e = d + t1
			d = c
			c = b
			b = a
			a = t1 + t2
		}

		h0 += a
		h1 += b
		h2 += c
		h3 += d
		h4 += e
		h5 += f
		h6 += g
		h7 += h

		p = p[64:]
	}

	h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7] = h0, h1, h2, h3, h4, h5, h6, h7
}

func rightRotate(x uint32, n uint) uint32 {
	return (x >> n) | (x << (32 - n))
}
