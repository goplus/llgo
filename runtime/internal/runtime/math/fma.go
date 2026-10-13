// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license. See LICENSES/Go-BSD-3-Clause.txt at this module root.

package math

import "unsafe"

// Adapted from Go 1.27 math.FMA for targets whose C library
// does not provide correctly rounded fused multiply-add.
const (
	fmaInf      = uint64(0x7ff0000000000000)
	fmaMask     = 0x7ff
	fmaBias     = 1023
	fmaFracMask = uint64(1<<52 - 1)
)

func fmaFloat64bits(x float64) uint64     { return *(*uint64)(unsafe.Pointer(&x)) }
func fmaFloat64frombits(x uint64) float64 { return *(*float64)(unsafe.Pointer(&x)) }

func fmaZero(x uint64) uint64 {
	if x == 0 {
		return 1
	}
	return 0
	// branchless:
	// return ((x>>1 | x&1) - 1) >> 63
}

func fmaNonzero(x uint64) uint64 {
	if x != 0 {
		return 1
	}
	return 0
	// branchless:
	// return 1 - ((x>>1|x&1)-1)>>63
}

func fmaShl(u1, u2 uint64, n uint) (r1, r2 uint64) {
	r1 = u1<<n | u2>>(64-n) | u2<<(n-64)
	r2 = u2 << n
	return
}

func fmaShr(u1, u2 uint64, n uint) (r1, r2 uint64) {
	r2 = u2>>n | u1<<(64-n) | u1>>(n-64)
	r1 = u1 >> n
	return
}

// fmaShrcompress compresses the bottom n+1 bits of the two-word
// value into a single bit. the result is equal to the value
// shifted to the right by n, except the result's 0th bit is
// set to the bitwise OR of the bottom n+1 bits.
func fmaShrcompress(u1, u2 uint64, n uint) (r1, r2 uint64) {
	// TODO: Performance here is really sensitive to the
	// order/placement of these branches. n == 0 is common
	// enough to be in the fast path. Perhaps more measurement
	// needs to be done to find the optimal order/placement?
	switch {
	case n == 0:
		return u1, u2
	case n == 64:
		return 0, u1 | fmaNonzero(u2)
	case n >= 128:
		return 0, fmaNonzero(u1 | u2)
	case n < 64:
		r1, r2 = fmaShr(u1, u2, n)
		r2 |= fmaNonzero(u2 & (1<<n - 1))
	case n < 128:
		r1, r2 = fmaShr(u1, u2, n)
		r2 |= fmaNonzero(u1&(1<<(n-64)-1) | u2)
	}
	return
}

func fmaLeadingZeros(u1, u2 uint64) (l int32) {
	l = int32(fmaLeadingZeros64(u1))
	if l == 64 {
		l += int32(fmaLeadingZeros64(u2))
	}
	return l
}

// fmaSplit splits b into sign, biased exponent, and mantissa.
// It adds the implicit 1 bit to the mantissa for normal values,
// and normalizes subnormal values.
func fmaSplit(b uint64) (sign uint32, exp int32, mantissa uint64) {
	sign = uint32(b >> 63)
	exp = int32(b>>52) & fmaMask
	mantissa = b & fmaFracMask

	if exp == 0 {
		// Normalize value if subnormal.
		shift := uint(fmaLeadingZeros64(mantissa) - 11)
		mantissa <<= shift
		exp = 1 - int32(shift)
	} else {
		// Add implicit 1 bit
		mantissa |= 1 << 52
	}
	return
}

// FMA64 returns x * y + z, computed with only one rounding.
// (That is, FMA64 returns the fused multiply-add of x, y, and z.)
func FMA64(x, y, z float64) float64 {
	bx, by, bz := fmaFloat64bits(x), fmaFloat64bits(y), fmaFloat64bits(z)

	// Inf or NaN or zero involved. At most one rounding will occur.
	if x == 0.0 || y == 0.0 || bx&fmaInf == fmaInf || by&fmaInf == fmaInf {
		return x*y + z
	}
	// Handle z == 0.0 separately.
	// Adding zero usually does not change the original value.
	// However, there is an exception with negative zero. (e.g. (-0) + (+0) = (+0))
	// This applies when x * y is negative and underflows.
	if z == 0.0 {
		return x * y
	}
	// Handle non-finite z separately. Evaluating x*y+z where
	// x and y are finite, but z is infinite, should always result in z.
	if bz&fmaInf == fmaInf {
		return z
	}

	// Inputs are (sub)normal.
	// Split x, y, z into sign, exponent, mantissa.
	xs, xe, xm := fmaSplit(bx)
	ys, ye, ym := fmaSplit(by)
	zs, ze, zm := fmaSplit(bz)

	// Compute product p = x*y as sign, exponent, two-word mantissa.
	// Start with exponent. "is normal" bit isn't subtracted yet.
	pe := xe + ye - fmaBias + 1

	// pm1:pm2 is the double-word mantissa for the product p.
	// Shift left to leave top bit in product. Effectively
	// shifts the 106-bit product to the left by 21.
	pm1, pm2 := Mul64(xm<<10, ym<<11)
	zm1, zm2 := zm<<10, uint64(0)
	ps := xs ^ ys // product sign

	// normalize to 62nd bit
	is62zero := uint((^pm1 >> 62) & 1)
	pm1, pm2 = fmaShl(pm1, pm2, is62zero)
	pe -= int32(is62zero)

	// Swap addition operands so |p| >= |z|
	if pe < ze || pe == ze && pm1 < zm1 {
		ps, pe, pm1, pm2, zs, ze, zm1, zm2 = zs, ze, zm1, zm2, ps, pe, pm1, pm2
	}

	// Special case: if p == -z the result is always +0 since neither operand is zero.
	if ps != zs && pe == ze && pm1 == zm1 && pm2 == zm2 {
		return 0
	}

	// Align significands
	zm1, zm2 = fmaShrcompress(zm1, zm2, uint(pe-ze))

	// Compute resulting significands, normalizing if necessary.
	var m, c uint64
	if ps == zs {
		// Adding (pm1:pm2) + (zm1:zm2)
		pm2, c = fmaAdd64(pm2, zm2, 0)
		pm1, _ = fmaAdd64(pm1, zm1, c)
		pe -= int32(^pm1 >> 63)
		pm1, m = fmaShrcompress(pm1, pm2, uint(64+pm1>>63))
	} else {
		// Subtracting (pm1:pm2) - (zm1:zm2)
		// TODO: should we special-case cancellation?
		pm2, c = fmaSub64(pm2, zm2, 0)
		pm1, _ = fmaSub64(pm1, zm1, c)
		nz := fmaLeadingZeros(pm1, pm2)
		pe -= nz
		m, pm2 = fmaShl(pm1, pm2, uint(nz-1))
		m |= fmaNonzero(pm2)
	}

	// Round and break ties to even
	if pe > 1022+fmaBias || pe == 1022+fmaBias && (m+1<<9)>>63 == 1 {
		// rounded value overflows exponent range
		return fmaFloat64frombits(uint64(ps)<<63 | fmaInf)
	}
	if pe < 0 {
		n := uint(-pe)
		m = m>>n | fmaNonzero(m&(1<<n-1))
		pe = 0
	}
	m = ((m + 1<<9) >> 10) & ^fmaZero((m&(1<<10-1))^1<<9)
	pe &= -int32(fmaNonzero(m))
	return fmaFloat64frombits(uint64(ps)<<63 + uint64(pe)<<52 + m)
}

// FMA32 rounds only once to float32. The float64 product is exact, and a
// round-to-odd sum prevents double rounding when it lies on a float32 midpoint.
func FMA32(x, y, z float32) float32 {
	p, add := float64(x)*float64(y), float64(z)
	sum := p + add
	if fmaFloat64bits(sum)&fmaInf == fmaInf {
		return float32(sum)
	}
	var residual float64
	if fmaFloat64bits(p)&^uint64(1<<63) >= fmaFloat64bits(add)&^uint64(1<<63) {
		residual = (p - sum) + add
	} else {
		residual = (add - sum) + p
	}
	raw := fmaFloat64bits(sum)
	if residual != 0 && raw&1 == 0 {
		if (sum > 0) == (residual > 0) {
			raw++
		} else {
			raw--
		}
	}
	return float32(fmaFloat64frombits(raw))
}

// Keep these bit operations local: importing math/bits into the bootstrap
// runtime makes even runtime-free lib/c programs retain a runtime dependency.
func fmaAdd64(x, y, carry uint64) (sum, carryOut uint64) {
	sum = x + y + carry
	carryOut = ((x & y) | ((x | y) &^ sum)) >> 63
	return
}

func fmaSub64(x, y, borrow uint64) (diff, borrowOut uint64) {
	diff = x - y - borrow
	borrowOut = ((^x & y) | (^(x ^ y) & diff)) >> 63
	return
}

func fmaLeadingZeros64(x uint64) int {
	if x == 0 {
		return 64
	}
	n := 0
	if x>>32 == 0 {
		n += 32
		x <<= 32
	}
	if x>>48 == 0 {
		n += 16
		x <<= 16
	}
	if x>>56 == 0 {
		n += 8
		x <<= 8
	}
	if x>>60 == 0 {
		n += 4
		x <<= 4
	}
	if x>>62 == 0 {
		n += 2
		x <<= 2
	}
	if x>>63 == 0 {
		n++
	}
	return n
}
