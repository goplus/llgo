/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package big

// llgo:skipall
import (
	"sync"

	"github.com/goplus/llgo/c/openssl"
)

// A Word represents a single digit of a multi-precision unsigned integer.
type Word openssl.BN_ULONG

// -----------------------------------------------------------------------------

// TODO(xsw): share ctx
func ctxGet() *openssl.BN_CTX {
	return openssl.BN_CTXNew()
}

func ctxPut(ctx *openssl.BN_CTX) {
	ctx.Free()
}

var g_lock = &sync.Mutex{}
var g_ctx *openssl.BN_CTX

func getCtxInstance() *openssl.BN_CTX {
	if g_ctx == nil {
		g_lock.Lock()
		defer g_lock.Unlock()
		g_ctx = ctxGet()
	}
	return g_ctx
}

// -----------------------------------------------------------------------------

type Int openssl.BIGNUM

// Sign returns:
//
//	-1 if x <  0
//	 0 if x == 0
//	+1 if x >  0
func (x *Int) Sign() int {
	a := (*openssl.BIGNUM)(x)
	if a.IsNegative() != 0 {
		return -1
	} else if a.IsZero() != 0 {
		return 0
	}
	return 1
}

// SetInt64 sets z to x and returns z.
func (z *Int) SetInt64(x int64) *Int {
	a := (*openssl.BIGNUM)(z)
	if x < 0 {
		a.SetWord(openssl.BN_ULONG(-x))
		a.SetNegative(1)
	} else {
		a.SetWord(openssl.BN_ULONG(x))
		a.SetNegative(0)
	}
	return z
}

// SetUint64 sets z to x and returns z.
func (z *Int) SetUint64(x uint64) *Int {
	a := (*openssl.BIGNUM)(z)
	a.SetWord(openssl.BN_ULONG(x))
	a.SetNegative(0)
	return z
}

// NewInt allocates and returns a new Int set to x.
func NewInt(x int64) *Int {
	z := (*Int)(openssl.BNNew())
	return z.SetInt64(x)
}

// Set sets z to x and returns z.
func (z *Int) Set(x *Int) *Int {
	if z != x {
		a := (*openssl.BIGNUM)(z)
		b := (*openssl.BIGNUM)(x)
		a.SetWord(b.GetWord())
		a.SetNegative(b.IsNegative())
	}
	return z
}

// Abs sets z to |x| (the absolute value of x) and returns z.
func (z *Int) Abs(x *Int) *Int {
	z.Set(x)
	a := (*openssl.BIGNUM)(z)
	a.SetNegative(0)
	return z
}

// Neg sets z to -x and returns z.
func (z *Int) Neg(x *Int) *Int {
	z.Set(x)
	a := (*openssl.BIGNUM)(z)
	if a.IsNegative() != 0 {
		a.SetNegative(0)
	} else {
		a.SetNegative(1)
	}
	return z
}

// Bits provides raw (unchecked but fast) access to x by returning its
// absolute value as a little-endian Word slice. The result and x share
// the same underlying array.
// Bits is intended to support implementation of missing low-level Int
// functionality outside this package; it should be avoided otherwise.
func (x *Int) Bits() []Word {
	panic("big.Bits")
}

// SetBits provides raw (unchecked but fast) access to z by setting its
// value to abs, interpreted as a little-endian Word slice, and returning
// z. The result and abs share the same underlying array.
// SetBits is intended to support implementation of missing low-level Int
// functionality outside this package; it should be avoided otherwise.
func (z *Int) SetBits(abs []Word) *Int {
	panic("big.SetBits")
}

// Add sets z to the sum x+y and returns z.
func (z *Int) Add(x, y *Int) *Int {
	(*openssl.BIGNUM)(z).Add((*openssl.BIGNUM)(x), (*openssl.BIGNUM)(y))
	return z
}

// Sub sets z to the difference x-y and returns z.
func (z *Int) Sub(x, y *Int) *Int {
	(*openssl.BIGNUM)(z).Sub((*openssl.BIGNUM)(x), (*openssl.BIGNUM)(y))
	return z
}

// Mul sets z to the product x*y and returns z.
func (z *Int) Mul(x, y *Int) *Int {
	a := (*openssl.BIGNUM)(z)
	xx := (*openssl.BIGNUM)(x)
	yy := (*openssl.BIGNUM)(y)
	getCtxInstance().Start()
	defer getCtxInstance().End()
	a.Mul(a, xx, yy, getCtxInstance())
	return z
}

// MulRange sets z to the product of all integers
// in the range [a, b] inclusively and returns z.
// If a > b (empty range), the result is 1.
func (z *Int) MulRange(a, b int64) *Int {
	switch {
	case a > b:
		return z.SetInt64(1) // empty range
	case a <= 0 && b >= 0:
		return z.SetInt64(0) // range includes 0
	}
	// a <= b && (b < 0 || a > 0)
	neg := false
	if a < 0 {
		neg = (b-a)&1 == 0
		a, b = -b, -a
	}
	zz := (*openssl.BIGNUM)(z)
	for i := a; i < b; i++ {
		zz.MulWord(openssl.BN_ULONG(i))
	}
	if neg {
		zz.SetNegative(1)
	} else {
		zz.SetNegative(0)
	}
	return z
}

// Binomial sets z to the binomial coefficient C(n, k) and returns z.
func (z *Int) Binomial(n, k int64) *Int {
	if k > n {
		return z.SetInt64(0)
	}
	// reduce the number of multiplications by reducing k
	if k > n-k {
		k = n - k // C(n, k) == C(n, n-k)
	}
	// C(n, k) == n * (n-1) * ... * (n-k+1) / k * (k-1) * ... * 1
	//         == n * (n-1) * ... * (n-k+1) / 1 * (1+1) * ... * k
	//
	// Using the multiplicative formula produces smaller values
	// at each step, requiring fewer allocations and computations:
	//
	// z = 1
	// for i := 0; i < k; i = i+1 {
	//     z *= n-i
	//     z /= i+1
	// }
	//
	// finally to avoid computing i+1 twice per loop:
	//
	// z = 1
	// i := 0
	// for i < k {
	//     z *= n-i
	//     i++
	//     z /= i
	// }
	var N, K, i, t Int
	N.SetInt64(n)
	K.SetInt64(k)

	intOne := NewInt(1)

	z.Set(intOne)
	for i.Cmp(&K) < 0 {
		z.Mul(z, t.Sub(&N, &i))
		i.Add(&i, intOne)
		z.Quo(z, &i)
	}
	return z
}

// Quo sets z to the quotient x/y for y != 0 and returns z.
// If y == 0, a division-by-zero run-time panic occurs.
// Quo implements truncated division (like Go); see QuoRem for more details.
func (z *Int) Quo(x, y *Int) *Int {
	panic("big.Quo")
}

// Rem sets z to the remainder x%y for y != 0 and returns z.
// If y == 0, a division-by-zero run-time panic occurs.
// Rem implements truncated modulus (like Go); see QuoRem for more details.
func (z *Int) Rem(x, y *Int) *Int {
	panic("big.Rem")
}

// QuoRem sets z to the quotient x/y and r to the remainder x%y
// and returns the pair (z, r) for y != 0.
// If y == 0, a division-by-zero run-time panic occurs.
//
// QuoRem implements T-division and modulus (like Go):
//
//	q = x/y      with the result truncated to zero
//	r = x - y*q
//
// (See Daan Leijen, “Division and Modulus for Computer Scientists”.)
// See DivMod for Euclidean division and modulus (unlike Go).
func (z *Int) QuoRem(x, y, r *Int) (*Int, *Int) {
	panic("big.QuoRem")
}

// Div sets z to the quotient x/y for y != 0 and returns z.
// If y == 0, a division-by-zero run-time panic occurs.
// Div implements Euclidean division (unlike Go); see DivMod for more details.
func (z *Int) Div(x, y *Int) *Int {
	panic("big.Div")
}

// Mod sets z to the modulus x%y for y != 0 and returns z.
// If y == 0, a division-by-zero run-time panic occurs.
// Mod implements Euclidean modulus (unlike Go); see DivMod for more details.
func (z *Int) Mod(x, y *Int) *Int {
	panic("big.Mod")
}

// DivMod sets z to the quotient x div y and m to the modulus x mod y
// and returns the pair (z, m) for y != 0.
// If y == 0, a division-by-zero run-time panic occurs.
//
// DivMod implements Euclidean division and modulus (unlike Go):
//
//	q = x div y  such that
//	m = x - y*q  with 0 <= m < |y|
//
// (See Raymond T. Boute, “The Euclidean definition of the functions
// div and mod”. ACM Transactions on Programming Languages and
// Systems (TOPLAS), 14(2):127-144, New York, NY, USA, 4/1992.
// ACM press.)
// See QuoRem for T-division and modulus (like Go).
func (z *Int) DivMod(x, y, m *Int) (*Int, *Int) {
	panic("big.DivMod")
}

// Cmp compares x and y and returns:
//
//	-1 if x <  y
//	 0 if x == y
//	+1 if x >  y
func (x *Int) Cmp(y *Int) (r int) {
	return int((*openssl.BIGNUM)(x).Cmp((*openssl.BIGNUM)(y)))
}

// CmpAbs compares the absolute values of x and y and returns:
//
//	-1 if |x| <  |y|
//	 0 if |x| == |y|
//	+1 if |x| >  |y|
func (x *Int) CmpAbs(y *Int) int {
	return int((*openssl.BIGNUM)(x).Ucmp((*openssl.BIGNUM)(y)))
}

// Int64 returns the int64 representation of x.
// If x cannot be represented in an int64, the result is undefined.
func (x *Int) Int64() int64 {
	panic("big.Int64")
}

// Uint64 returns the uint64 representation of x.
// If x cannot be represented in a uint64, the result is undefined.
func (x *Int) Uint64() uint64 {
	panic("big.Uint64")
}

/*
// IsInt64 reports whether x can be represented as an int64.
func (x *Int) IsInt64() bool {
}

// IsUint64 reports whether x can be represented as a uint64.
func (x *Int) IsUint64() bool {
}

// Float64 returns the float64 value nearest x,
// and an indication of any rounding that occurred.
// TODO(xsw):
// func (x *Int) Float64() (float64, Accuracy)

// SetString sets z to the value of s, interpreted in the given base,
// and returns z and a boolean indicating success. The entire string
// (not just a prefix) must be valid for success. If SetString fails,
// the value of z is undefined but the returned value is nil.
//
// The base argument must be 0 or a value between 2 and MaxBase.
// For base 0, the number prefix determines the actual base: A prefix of
// “0b” or “0B” selects base 2, “0”, “0o” or “0O” selects base 8,
// and “0x” or “0X” selects base 16. Otherwise, the selected base is 10
// and no prefix is accepted.
//
// For bases <= 36, lower and upper case letters are considered the same:
// The letters 'a' to 'z' and 'A' to 'Z' represent digit values 10 to 35.
// For bases > 36, the upper case letters 'A' to 'Z' represent the digit
// values 36 to 61.
//
// For base 0, an underscore character “_” may appear between a base
// prefix and an adjacent digit, and between successive digits; such
// underscores do not change the value of the number.
// Incorrect placement of underscores is reported as an error if there
// are no other errors. If base != 0, underscores are not recognized
// and act like any other character that is not a valid digit.
func (z *Int) SetString(s string, base int) (*Int, bool) {
}

// SetBytes interprets buf as the bytes of a big-endian unsigned
// integer, sets z to that value, and returns z.
func (z *Int) SetBytes(buf []byte) *Int {
}

// Bytes returns the absolute value of x as a big-endian byte slice.
//
// To use a fixed length slice, or a preallocated one, use FillBytes.
func (x *Int) Bytes() []byte {
}

// FillBytes sets buf to the absolute value of x, storing it as a zero-extended
// big-endian byte slice, and returns buf.
//
// If the absolute value of x doesn't fit in buf, FillBytes will panic.
func (x *Int) FillBytes(buf []byte) []byte {
}

// BitLen returns the length of the absolute value of x in bits.
// The bit length of 0 is 0.
func (x *Int) BitLen() int {
}

// TrailingZeroBits returns the number of consecutive least significant zero
// bits of |x|.
func (x *Int) TrailingZeroBits() uint {
}
*/

// Exp sets z = x**y mod |m| (i.e. the sign of m is ignored), and returns z.
// If m == nil or m == 0, z = x**y unless y <= 0 then z = 1. If m != 0, y < 0,
// and x and m are not relatively prime, z is unchanged and nil is returned.
//
// Modular exponentiation of inputs of a particular size is not a
// cryptographically constant-time operation.
func (z *Int) Exp(x, y, m *Int) *Int {
	ctx := ctxGet()
	mbn := (*openssl.BIGNUM)(m)
	if mbn == nil || mbn.IsZero() != 0 {
		(*openssl.BIGNUM)(z).Exp((*openssl.BIGNUM)(x), (*openssl.BIGNUM)(y), ctx)
	} else {
		(*openssl.BIGNUM)(z).ModExp((*openssl.BIGNUM)(x), (*openssl.BIGNUM)(y), mbn, ctx)
	}
	ctxPut(ctx)
	return z
}

/*
// GCD sets z to the greatest common divisor of a and b and returns z.
// If x or y are not nil, GCD sets their value such that z = a*x + b*y.
//
// a and b may be positive, zero or negative. (Before Go 1.14 both had
// to be > 0.) Regardless of the signs of a and b, z is always >= 0.
//
// If a == b == 0, GCD sets z = x = y = 0.
//
// If a == 0 and b != 0, GCD sets z = |b|, x = 0, y = sign(b) * 1.
//
// If a != 0 and b == 0, GCD sets z = |a|, x = sign(a) * 1, y = 0.
func (z *Int) GCD(x, y, a, b *Int) *Int {
}

// Rand sets z to a pseudo-random number in [0, n) and returns z.
//
// As this uses the math/rand package, it must not be used for
// security-sensitive work. Use crypto/rand.Int instead.
func (z *Int) Rand(rnd *rand.Rand, n *Int) *Int {
}

// ModInverse sets z to the multiplicative inverse of g in the ring ℤ/nℤ
// and returns z. If g and n are not relatively prime, g has no multiplicative
// inverse in the ring ℤ/nℤ.  In this case, z is unchanged and the return value
// is nil. If n == 0, a division-by-zero run-time panic occurs.
func (z *Int) ModInverse(g, n *Int) *Int {
}

// Jacobi returns the Jacobi symbol (x/y), either +1, -1, or 0.
// The y argument must be an odd integer.
func Jacobi(x, y *Int) int {
}

// ModSqrt sets z to a square root of x mod p if such a square root exists, and
// returns z. The modulus p must be an odd prime. If x is not a square mod p,
// ModSqrt leaves z unchanged and returns nil. This function panics if p is
// not an odd integer, its behavior is undefined if p is odd but not prime.
func (z *Int) ModSqrt(x, p *Int) *Int {
}

// Lsh sets z = x << n and returns z.
func (z *Int) Lsh(x *Int, n uint) *Int {
}

// Rsh sets z = x >> n and returns z.
func (z *Int) Rsh(x *Int, n uint) *Int {
}

// Bit returns the value of the i'th bit of x. That is, it
// returns (x>>i)&1. The bit index i must be >= 0.
func (x *Int) Bit(i int) uint {
}

// SetBit sets z to x, with x's i'th bit set to b (0 or 1).
// That is, if b is 1 SetBit sets z = x | (1 << i);
// if b is 0 SetBit sets z = x &^ (1 << i). If b is not 0 or 1,
// SetBit will panic.
func (z *Int) SetBit(x *Int, i int, b uint) *Int {
}

// And sets z = x & y and returns z.
func (z *Int) And(x, y *Int) *Int {
}

// AndNot sets z = x &^ y and returns z.
func (z *Int) AndNot(x, y *Int) *Int {
}

// Or sets z = x | y and returns z.
func (z *Int) Or(x, y *Int) *Int {
}

// Xor sets z = x ^ y and returns z.
func (z *Int) Xor(x, y *Int) *Int {
}

// Not sets z = ^x and returns z.
func (z *Int) Not(x *Int) *Int {
}

// Sqrt sets z to ⌊√x⌋, the largest integer such that z² ≤ x, and returns z.
// It panics if x is negative.
func (z *Int) Sqrt(x *Int) *Int {
}
*/

// -----------------------------------------------------------------------------
