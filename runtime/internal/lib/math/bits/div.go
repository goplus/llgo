// Patch bits division to enforce Go semantics (panic on y==0 or overflow).

package bits

import "errors"

//llgo:skip Div32 Div64

var (
	divideError   = errors.New("math/bits: divide by zero")
	overflowError = errors.New("math/bits: quotient overflow")
)

func leadingZeros64(x uint64) int {
	if x == 0 {
		return 64
	}
	n := 0
	for (x >> 63) == 0 {
		n++
		x <<= 1
	}
	return n
}

// Div32 returns the quotient and remainder of (hi, lo) divided by y.
// Panics if y==0 or y<=hi, matching standard library semantics.
func Div32(hi, lo, y uint32) (quo, rem uint32) {
	if y == 0 {
		panic(divideError)
	}
	if y <= hi {
		panic(overflowError)
	}
	z := uint64(hi)<<32 | uint64(lo)
	return uint32(z / uint64(y)), uint32(z % uint64(y))
}

// Div64 returns the quotient and remainder of (hi, lo) divided by y.
// Panics if y==0 or y<=hi, matching standard library semantics.
func Div64(hi, lo, y uint64) (quo, rem uint64) {
	if y == 0 {
		panic(divideError)
	}
	if y <= hi {
		panic(overflowError)
	}
	if hi == 0 {
		return lo / y, lo % y
	}
	// scaled division (copy of std library implementation)
	s := uint(leadingZeros64(y))
	y <<= s
	const (
		two32  = 1 << 32
		mask32 = two32 - 1
	)
	yn1 := y >> 32
	yn0 := y & mask32
	un32 := hi<<s | lo>>(64-s)
	un10 := lo << s
	un1 := un10 >> 32
	un0 := un10 & mask32
	q1 := un32 / yn1
	rhat := un32 - q1*yn1
	for q1 >= two32 || q1*yn0 > two32*rhat+un1 {
		q1--
		rhat += yn1
		if rhat >= two32 {
			break
		}
	}
	un21 := un32*two32 + un1 - q1*y
	q0 := un21 / yn1
	rhat = un21 - q0*yn1
	for q0 >= two32 || q0*yn0 > two32*rhat+un0 {
		q0--
		rhat += yn1
		if rhat >= two32 {
			break
		}
	}
	return q1*two32 + q0, (un21*two32 + un0 - q0*y) >> s
}
