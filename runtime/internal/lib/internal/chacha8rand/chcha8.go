package chacha8rand

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/runtime/goarch"
)

func block(seed *[4]uint64, blocks *[32]uint64, counter uint32) {
	block_generic(seed, blocks, counter)
}

// setup sets up 4 ChaCha8 blocks in b32 with the counter and seed.
// Note that b32 is [16][4]uint32 not [4][16]uint32: the blocks are interlaced
// the same way they would be in a 4-way SIMD implementations.
func setup(seed *[4]uint64, b32 *[16][4]uint32, counter uint32) {
	// Convert to uint64 to do half as many stores to memory.
	b := (*[16][2]uint64)(unsafe.Pointer(b32))

	// Constants; same as in ChaCha20: "expand 32-byte k"
	b[0][0] = 0x61707865_61707865
	b[0][1] = 0x61707865_61707865

	b[1][0] = 0x3320646e_3320646e
	b[1][1] = 0x3320646e_3320646e

	b[2][0] = 0x79622d32_79622d32
	b[2][1] = 0x79622d32_79622d32

	b[3][0] = 0x6b206574_6b206574
	b[3][1] = 0x6b206574_6b206574

	// Seed values.
	var x64 uint64
	var x uint32

	x = uint32(seed[0])
	x64 = uint64(x)<<32 | uint64(x)
	b[4][0] = x64
	b[4][1] = x64

	x = uint32(seed[0] >> 32)
	x64 = uint64(x)<<32 | uint64(x)
	b[5][0] = x64
	b[5][1] = x64

	x = uint32(seed[1])
	x64 = uint64(x)<<32 | uint64(x)
	b[6][0] = x64
	b[6][1] = x64

	x = uint32(seed[1] >> 32)
	x64 = uint64(x)<<32 | uint64(x)
	b[7][0] = x64
	b[7][1] = x64

	x = uint32(seed[2])
	x64 = uint64(x)<<32 | uint64(x)
	b[8][0] = x64
	b[8][1] = x64

	x = uint32(seed[2] >> 32)
	x64 = uint64(x)<<32 | uint64(x)
	b[9][0] = x64
	b[9][1] = x64

	x = uint32(seed[3])
	x64 = uint64(x)<<32 | uint64(x)
	b[10][0] = x64
	b[10][1] = x64

	x = uint32(seed[3] >> 32)
	x64 = uint64(x)<<32 | uint64(x)
	b[11][0] = x64
	b[11][1] = x64

	// Counters.
	if goarch.BigEndian {
		b[12][0] = uint64(counter+0)<<32 | uint64(counter+1)
		b[12][1] = uint64(counter+2)<<32 | uint64(counter+3)
	} else {
		b[12][0] = uint64(counter+0) | uint64(counter+1)<<32
		b[12][1] = uint64(counter+2) | uint64(counter+3)<<32
	}

	// Zeros.
	b[13][0] = 0
	b[13][1] = 0
	b[14][0] = 0
	b[14][1] = 0

	b[15][0] = 0
	b[15][1] = 0
}

// block_generic is the non-assembly block implementation,
// for use on systems without special assembly.
// Even on such systems, it is quite fast: on GOOS=386,
// ChaCha8 using this code generates random values faster than PCG-DXSM.
func block_generic(seed *[4]uint64, buf *[32]uint64, counter uint32) {
	b := (*[16][4]uint32)(unsafe.Pointer(buf))

	setup(seed, b, counter)

	for i := range b[0] {
		// Load block i from b[*][i] into local variables.
		b0 := b[0][i]
		b1 := b[1][i]
		b2 := b[2][i]
		b3 := b[3][i]
		b4 := b[4][i]
		b5 := b[5][i]
		b6 := b[6][i]
		b7 := b[7][i]
		b8 := b[8][i]
		b9 := b[9][i]
		b10 := b[10][i]
		b11 := b[11][i]
		b12 := b[12][i]
		b13 := b[13][i]
		b14 := b[14][i]
		b15 := b[15][i]

		// 4 iterations of eight quarter-rounds each is 8 rounds
		for round := 0; round < 4; round++ {
			b0, b4, b8, b12 = qr(b0, b4, b8, b12)
			b1, b5, b9, b13 = qr(b1, b5, b9, b13)
			b2, b6, b10, b14 = qr(b2, b6, b10, b14)
			b3, b7, b11, b15 = qr(b3, b7, b11, b15)

			b0, b5, b10, b15 = qr(b0, b5, b10, b15)
			b1, b6, b11, b12 = qr(b1, b6, b11, b12)
			b2, b7, b8, b13 = qr(b2, b7, b8, b13)
			b3, b4, b9, b14 = qr(b3, b4, b9, b14)
		}

		// Store block i back into b[*][i].
		// Add b4..b11 back to the original key material,
		// like in ChaCha20, to avoid trivial invertibility.
		// There is no entropy in b0..b3 and b12..b15
		// so we can skip the additions and save some time.
		b[0][i] = b0
		b[1][i] = b1
		b[2][i] = b2
		b[3][i] = b3
		b[4][i] += b4
		b[5][i] += b5
		b[6][i] += b6
		b[7][i] += b7
		b[8][i] += b8
		b[9][i] += b9
		b[10][i] += b10
		b[11][i] += b11
		b[12][i] = b12
		b[13][i] = b13
		b[14][i] = b14
		b[15][i] = b15
	}

	if goarch.BigEndian {
		// On a big-endian system, reading the uint32 pairs as uint64s
		// will word-swap them compared to little-endian, so we word-swap
		// them here first to make the next swap get the right answer.
		for i, x := range buf {
			buf[i] = x>>32 | x<<32
		}
	}
}

// qr is the (inlinable) ChaCha8 quarter round.
func qr(a, b, c, d uint32) (_a, _b, _c, _d uint32) {
	a += b
	d ^= a
	d = d<<16 | d>>16
	c += d
	b ^= c
	b = b<<12 | b>>20
	a += b
	d ^= a
	d = d<<8 | d>>24
	c += d
	b ^= c
	b = b<<7 | b>>25
	return a, b, c, d
}
