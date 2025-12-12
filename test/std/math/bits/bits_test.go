//go:build !llgo

package bits_test

import (
	"math/big"
	"math/bits"
	"strconv"
	"testing"
)

func TestUintSizeMatchesIntSize(t *testing.T) {
	if bits.UintSize != strconv.IntSize {
		t.Fatalf("UintSize=%d IntSize=%d", bits.UintSize, strconv.IntSize)
	}
	if bits.UintSize != 32 && bits.UintSize != 64 {
		t.Fatalf("unexpected UintSize %d", bits.UintSize)
	}
}

func TestLeadingLenTrailingCounts(t *testing.T) {
	values := []uint64{0, 1, 2, 3, 8, 0xFFFF, 1 << 63}
	for _, v := range values {
		lz := bits.LeadingZeros64(v)
		ln := bits.Len64(v)
		tz := bits.TrailingZeros64(v)
		if v == 0 {
			if lz != 64 || ln != 0 || tz != 64 {
				t.Fatalf("zero counts mismatch: lz=%d ln=%d tz=%d", lz, ln, tz)
			}
			continue
		}
		if lz+ln != 64 {
			t.Fatalf("value %x: leading+len=%d", v, lz+ln)
		}
		expectedTZ := trailingZerosSlow64(v)
		if tz != expectedTZ {
			t.Fatalf("value %x: trailing=%d expected=%d", v, tz, expectedTZ)
		}
	}

	values32 := []uint32{0, 1, 2, 3, 8, 0x7FFF0000}
	for _, v := range values32 {
		if v == 0 {
			if bits.LeadingZeros32(v) != 32 || bits.Len32(v) != 0 || bits.TrailingZeros32(v) != 32 {
				t.Fatalf("zero counts32 mismatch")
			}
			continue
		}
		if bits.LeadingZeros32(v)+bits.Len32(v) != 32 {
			t.Fatalf("value32 %x: leading+len mismatch", v)
		}
		if bits.TrailingZeros32(v) != trailingZerosSlow32(v) {
			t.Fatalf("value32 %x: trailing mismatch", v)
		}
	}

	values16 := []uint16{0, 1, 2, 4, 0x00FF, 0x8000}
	for _, v := range values16 {
		if v == 0 {
			if bits.LeadingZeros16(v) != 16 || bits.Len16(v) != 0 || bits.TrailingZeros16(v) != 16 {
				t.Fatalf("zero counts16 mismatch")
			}
			continue
		}
		if bits.LeadingZeros16(v)+bits.Len16(v) != 16 {
			t.Fatalf("value16 %x: leading+len mismatch", v)
		}
		if bits.TrailingZeros16(v) != trailingZerosSlow16(v) {
			t.Fatalf("value16 %x: trailing mismatch", v)
		}
	}

	values8 := []uint8{0, 1, 2, 4, 0x0F, 0x80}
	for _, v := range values8 {
		if v == 0 {
			if bits.LeadingZeros8(v) != 8 || bits.Len8(v) != 0 || bits.TrailingZeros8(v) != 8 {
				t.Fatalf("zero counts8 mismatch")
			}
			continue
		}
		if bits.LeadingZeros8(v)+bits.Len8(v) != 8 {
			t.Fatalf("value8 %x: leading+len mismatch", v)
		}
		if bits.TrailingZeros8(v) != trailingZerosSlow8(v) {
			t.Fatalf("value8 %x: trailing mismatch", v)
		}
	}

	valuesUint := []uint{0, 1, 2, 3, 8, 1 << (bits.UintSize - 1)}
	for _, v := range valuesUint {
		if v == 0 {
			if bits.LeadingZeros(v) != bits.UintSize || bits.Len(v) != 0 || bits.TrailingZeros(v) != bits.UintSize {
				t.Fatalf("zero counts uint mismatch")
			}
			continue
		}
		if bits.LeadingZeros(v)+bits.Len(v) != bits.UintSize {
			t.Fatalf("value uint %x: leading+len mismatch", v)
		}
		if bits.TrailingZeros(v) != trailingZerosSlowUint(v) {
			t.Fatalf("value uint %x: trailing mismatch", v)
		}
	}
}

func trailingZerosSlow64(v uint64) int {
	if v == 0 {
		return 64
	}
	count := 0
	for (v & 1) == 0 {
		count++
		v >>= 1
	}
	return count
}

func trailingZerosSlow32(v uint32) int {
	if v == 0 {
		return 32
	}
	count := 0
	for (v & 1) == 0 {
		count++
		v >>= 1
	}
	return count
}

func trailingZerosSlow16(v uint16) int {
	if v == 0 {
		return 16
	}
	count := 0
	for (v & 1) == 0 {
		count++
		v >>= 1
	}
	return count
}

func trailingZerosSlow8(v uint8) int {
	if v == 0 {
		return 8
	}
	count := 0
	for (v & 1) == 0 {
		count++
		v >>= 1
	}
	return count
}

func trailingZerosSlowUint(v uint) int {
	if v == 0 {
		return bits.UintSize
	}
	count := 0
	for (v & 1) == 0 {
		count++
		v >>= 1
	}
	return count
}

func TestOnesCount(t *testing.T) {
	if bits.OnesCount(0) != 0 {
		t.Fatal("OnesCount(0) should be zero")
	}
	if bits.OnesCount(1) != 1 {
		t.Fatal("OnesCount(1) should be one")
	}
	if ones := bits.OnesCount64(0xF0F0F0F0F0F0F0F0); ones != 32 {
		t.Fatalf("OnesCount64 expected 32 got %d", ones)
	}
	if ones := bits.OnesCount32(0xAAAAAAAA); ones != 16 {
		t.Fatalf("OnesCount32 expected 16 got %d", ones)
	}
	if ones := bits.OnesCount16(0xF0F0); ones != 8 {
		t.Fatalf("OnesCount16 expected 8 got %d", ones)
	}
	if ones := bits.OnesCount8(0xAA); ones != 4 {
		t.Fatalf("OnesCount8 expected 4 got %d", ones)
	}
}

func TestReverseAndReverseBytes(t *testing.T) {
	if got, want := bits.Reverse8(0x16), uint8(reverseSlow(0x16, 8)); got != want {
		t.Fatalf("Reverse8 got 0x%02x want 0x%02x", got, want)
	}
	if got, want := bits.Reverse16(0x00F3), uint16(reverseSlow(0x00F3, 16)); got != want {
		t.Fatalf("Reverse16 got 0x%04x want 0x%04x", got, want)
	}
	if got, want := bits.Reverse32(0x0000000F), uint32(reverseSlow(0x0000000F, 32)); got != want {
		t.Fatalf("Reverse32 got 0x%08x want 0x%08x", got, want)
	}
	if got, want := bits.Reverse64(0x0123456789ABCDEF), reverseSlow(0x0123456789ABCDEF, 64); got != want {
		t.Fatalf("Reverse64 got 0x%016x want 0x%016x", got, want)
	}

	var uintValue uint64
	if bits.UintSize == 64 {
		uintValue = 0x0123456789ABCDEF
	} else {
		uintValue = 0x89ABCDEF
	}
	if got, want := bits.Reverse(uint(uintValue)), uint(reverseSlow(uintValue, uint(bits.UintSize))); got != want {
		t.Fatalf("Reverse(uint) got 0x%x want 0x%x", got, want)
	}

	if got := bits.ReverseBytes16(0x0102); got != 0x0201 {
		t.Fatalf("ReverseBytes16 got 0x%04x", got)
	}
	if got := bits.ReverseBytes32(0x01020304); got != 0x04030201 {
		t.Fatalf("ReverseBytes32 got 0x%08x", got)
	}
	if got := bits.ReverseBytes64(0x0102030405060708); got != 0x0807060504030201 {
		t.Fatalf("ReverseBytes64 got 0x%016x", got)
	}
	if got, want := bits.ReverseBytes(uint(uintValue)), uint(reverseBytesSlow(uintValue, uint(bits.UintSize))); got != want {
		t.Fatalf("ReverseBytes(uint) got 0x%x want 0x%x", got, want)
	}
}

func reverseSlow(value uint64, width uint) uint64 {
	var result uint64
	for i := uint(0); i < width; i++ {
		if (value>>i)&1 == 1 {
			result |= 1 << (width - 1 - i)
		}
	}
	if width < 64 {
		mask := uint64(1<<width) - 1
		result &= mask
	}
	return result
}

func reverseBytesSlow(value uint64, width uint) uint64 {
	bytes := width / 8
	var result uint64
	for i := uint(0); i < bytes; i++ {
		byteVal := (value >> (8 * i)) & 0xFF
		result |= byteVal << (8 * (bytes - 1 - i))
	}
	if width < 64 {
		mask := uint64(1<<width) - 1
		result &= mask
	}
	return result
}

func TestRotateLeft(t *testing.T) {
	x := uint32(0x12345678)
	if got := bits.RotateLeft32(x, 0); got != x {
		t.Fatalf("RotateLeft32(0) = 0x%08x", got)
	}
	if got := bits.RotateLeft32(x, 4); got != 0x23456781 {
		t.Fatalf("RotateLeft32(4) got 0x%08x", got)
	}
	if got := bits.RotateLeft32(x, -8); got != 0x78123456 {
		t.Fatalf("RotateLeft32(-8) got 0x%08x", got)
	}
	if got := bits.RotateLeft32(x, 36); got != bits.RotateLeft32(x, 4) {
		t.Fatal("RotateLeft32 should wrap shift amount")
	}

	var y uint
	if bits.UintSize == 64 {
		y = 0xC000000000000000
	} else {
		y = 0xC0000000
	}
	if bits.RotateLeft(y, bits.UintSize) != y {
		t.Fatal("RotateLeft should wrap full width")
	}
	if got := bits.RotateLeft16(0x1234, 4); got != 0x2341 {
		t.Fatalf("RotateLeft16(4) got 0x%04x", got)
	}
	if got := bits.RotateLeft16(0x1234, -4); got != 0x4123 {
		t.Fatalf("RotateLeft16(-4) got 0x%04x", got)
	}
	if got := bits.RotateLeft8(0x96, 3); got != 0xB4 {
		t.Fatalf("RotateLeft8(3) got 0x%02x", got)
	}
	if got := bits.RotateLeft8(0x96, -2); got != 0xA5 {
		t.Fatalf("RotateLeft8(-2) got 0x%02x", got)
	}
}

func TestAddSubCarryBorrow(t *testing.T) {
	if sum, carry := bits.Add(^uint(0), 1, 0); sum != 0 || carry != 1 {
		t.Fatalf("Add wraparound sum=%d carry=%d", sum, carry)
	}
	if sum, carry := bits.Add32(0xFFFFFFFF, 2, 0); sum != 1 || carry != 1 {
		t.Fatalf("Add32 sum=%d carry=%d", sum, carry)
	}
	if sum, carry := bits.Add64(0xFFFFFFFFFFFFFFFF, 0, 1); sum != 0 || carry != 1 {
		t.Fatalf("Add64 carry propagation failed sum=%d carry=%d", sum, carry)
	}

	if diff, borrow := bits.Sub(0, 1, 0); diff != ^uint(0) || borrow != 1 {
		t.Fatalf("Sub borrow diff=%d borrow=%d", diff, borrow)
	}
	if diff, borrow := bits.Sub32(1, 2, 1); diff != 0xFFFFFFFE || borrow != 1 {
		t.Fatalf("Sub32 diff=%d borrow=%d", diff, borrow)
	}
	if diff, borrow := bits.Sub64(0, 0xFFFFFFFFFFFFFFFF, 0); diff != 1 || borrow != 1 {
		t.Fatalf("Sub64 diff=%d borrow=%d", diff, borrow)
	}
}

func TestMulProducesHiLo(t *testing.T) {
	if hi, lo := bits.Mul(0xFFFFFFFF, 0x10); combineMulResult(hi, lo).Cmp(mulExpectedUint(0xFFFFFFFF, 0x10)) != 0 {
		t.Fatalf("Mul incorrect hi=%d lo=%d", hi, lo)
	}
	if hi, lo := bits.Mul32(0xFFFFFFFF, 0x10); uint64(hi)<<32|uint64(lo) != uint64(0xFFFFFFFF)*0x10 {
		t.Fatalf("Mul32 incorrect hi=%d lo=%d", hi, lo)
	}
	if hi, lo := bits.Mul64(0xFFFFFFFFFFFFFFFF, 2); hi != 1 || lo != 0xFFFFFFFFFFFFFFFE {
		t.Fatalf("Mul64 hi=%d lo=%d", hi, lo)
	}
}

func TestDivAndRem(t *testing.T) {
	tests64 := []struct {
		hi uint64
		lo uint64
		y  uint64
	}{
		{0, 12345, 10},
		{1, 0, 3},
		{0x7, 0xFFFFFFFFFFFFFFFD, 0xFFF},
	}

	for _, tt := range tests64 {
		wantQuo, wantRem := divRem128(tt.hi, tt.lo, tt.y)
		if q, r := bits.Div64(tt.hi, tt.lo, tt.y); q != wantQuo || r != wantRem {
			t.Fatalf("Div64 hi=%x lo=%x y=%x got=(%x,%x) want=(%x,%x)", tt.hi, tt.lo, tt.y, q, r, wantQuo, wantRem)
		}
		if r := bits.Rem64(tt.hi, tt.lo, tt.y); r != wantRem {
			t.Fatalf("Rem64 mismatch r=%x want=%x", r, wantRem)
		}
	}

	tests32 := []struct {
		hi uint32
		lo uint32
		y  uint32
	}{
		{0, 65535, 17},
		{5, 0, 13},
	}
	for _, tt := range tests32 {
		wantQuo, wantRem := divRem64From32(tt.hi, tt.lo, tt.y)
		if q, r := bits.Div32(tt.hi, tt.lo, tt.y); q != wantQuo || r != wantRem {
			t.Fatalf("Div32 hi=%x lo=%x y=%x got=(%x,%x) want=(%x,%x)", tt.hi, tt.lo, tt.y, q, r, wantQuo, wantRem)
		}
		if r := bits.Rem32(tt.hi, tt.lo, tt.y); r != wantRem {
			t.Fatalf("Rem32 mismatch r=%x want=%x", r, wantRem)
		}
	}

	tests := []struct {
		hi uint
		lo uint
		y  uint
	}{
		{0, 99, 7},
		{1, 0, 5},
	}
	for _, tt := range tests {
		wantQuo, wantRem := divRemUint(tt.hi, tt.lo, tt.y)
		if q, r := bits.Div(tt.hi, tt.lo, tt.y); q != wantQuo || r != wantRem {
			t.Fatalf("Div hi=%x lo=%x y=%x got=(%x,%x) want=(%x,%x)", tt.hi, tt.lo, tt.y, q, r, wantQuo, wantRem)
		}
		if r := bits.Rem(tt.hi, tt.lo, tt.y); r != wantRem {
			t.Fatalf("Rem mismatch r=%x want=%x", r, wantRem)
		}
	}
}

func TestDivPanicsOnZero(t *testing.T) {
	checkDivPanics(t)
}

func checkDivPanics(t *testing.T) {
	defer func() {
		if recover() == nil {
			t.Fatal("expected panic on division by zero")
		}
	}()
	bits.Div32(0, 1, 0)
}

func combineMulResult(hi, lo uint) *big.Int {
	shift := uint(bits.UintSize)
	res := new(big.Int).Lsh(new(big.Int).SetUint64(uint64(hi)), shift)
	res.Or(res, new(big.Int).SetUint64(uint64(lo)))
	return res
}

func mulExpectedUint(x, y uint) *big.Int {
	xb := new(big.Int).SetUint64(uint64(x))
	yb := new(big.Int).SetUint64(uint64(y))
	return new(big.Int).Mul(xb, yb)
}

func divRem128(hi, lo, y uint64) (uint64, uint64) {
	n := new(big.Int).Lsh(new(big.Int).SetUint64(hi), 64)
	n.Or(n, new(big.Int).SetUint64(lo))
	d := new(big.Int).SetUint64(y)
	q, r := new(big.Int), new(big.Int)
	q, r = q.DivMod(n, d, r)
	return q.Uint64(), r.Uint64()
}

func divRemUint(hi, lo, y uint) (uint, uint) {
	shift := uint(bits.UintSize)
	n := new(big.Int).Lsh(new(big.Int).SetUint64(uint64(hi)), shift)
	n.Or(n, new(big.Int).SetUint64(uint64(lo)))
	d := new(big.Int).SetUint64(uint64(y))
	q, r := new(big.Int), new(big.Int)
	q, r = q.DivMod(n, d, r)
	return uint(q.Uint64()), uint(r.Uint64())
}

func divRem64From32(hi, lo, y uint32) (uint32, uint32) {
	combined := (uint64(hi) << 32) | uint64(lo)
	quo := combined / uint64(y)
	rem := combined % uint64(y)
	return uint32(quo), uint32(rem)
}
