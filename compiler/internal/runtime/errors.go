// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package runtime

// A boundsError represents an indexing or slicing operation gone wrong.
type boundsError struct {
	x int64
	y int
	// Values in an index or slice expression can be signed or unsigned.
	// That means we'd need 65 bits to encode all possible indexes, from -2^63 to 2^64-1.
	// Instead, we keep track of whether x should be interpreted as signed or unsigned.
	// y is known to be nonnegative and to fit in an int.
	signed bool
	code   boundsErrorCode
}

type boundsErrorCode uint8

const (
	boundsIndex boundsErrorCode = iota // s[x], 0 <= x < len(s) failed

	boundsSliceAlen // s[?:x], 0 <= x <= len(s) failed
	boundsSliceAcap // s[?:x], 0 <= x <= cap(s) failed
	boundsSliceB    // s[x:y], 0 <= x <= y failed (but boundsSliceA didn't happen)

	boundsSlice3Alen // s[?:?:x], 0 <= x <= len(s) failed
	boundsSlice3Acap // s[?:?:x], 0 <= x <= cap(s) failed
	boundsSlice3B    // s[?:x:y], 0 <= x <= y failed (but boundsSlice3A didn't happen)
	boundsSlice3C    // s[x:y:?], 0 <= x <= y failed (but boundsSlice3A/B didn't happen)

	boundsConvert // (*[x]T)(s), 0 <= x <= len(s) failed
	// Note: in the above, len(s) and cap(s) are stored in y
)

// boundsErrorFmts provide error text for various out-of-bounds panics.
// Note: if you change these strings, you should adjust the size of the buffer
// in boundsError.Error below as well.
var boundsErrorFmts = [...]string{
	boundsIndex:      "index out of range [%x] with length %y",
	boundsSliceAlen:  "slice bounds out of range [:%x] with length %y",
	boundsSliceAcap:  "slice bounds out of range [:%x] with capacity %y",
	boundsSliceB:     "slice bounds out of range [%x:%y]",
	boundsSlice3Alen: "slice bounds out of range [::%x] with length %y",
	boundsSlice3Acap: "slice bounds out of range [::%x] with capacity %y",
	boundsSlice3B:    "slice bounds out of range [:%x:%y]",
	boundsSlice3C:    "slice bounds out of range [%x:%y:]",
	boundsConvert:    "cannot convert slice with length %y to array or pointer to array with length %x",
}

// boundsNegErrorFmts are overriding formats if x is negative. In this case there's no need to report y.
var boundsNegErrorFmts = [...]string{
	boundsIndex:      "index out of range [%x]",
	boundsSliceAlen:  "slice bounds out of range [:%x]",
	boundsSliceAcap:  "slice bounds out of range [:%x]",
	boundsSliceB:     "slice bounds out of range [%x:]",
	boundsSlice3Alen: "slice bounds out of range [::%x]",
	boundsSlice3Acap: "slice bounds out of range [::%x]",
	boundsSlice3B:    "slice bounds out of range [:%x:]",
	boundsSlice3C:    "slice bounds out of range [%x::]",
}

func (e boundsError) RuntimeError() {}

func appendIntStr(b []byte, v int64, signed bool) []byte {
	if signed && v < 0 {
		b = append(b, '-')
		v = -v
	}
	var buf [20]byte
	b = append(b, itoa(buf[:], uint64(v))...)
	return b
}

func (e boundsError) Error() string {
	fmt := boundsErrorFmts[e.code]
	if e.signed && e.x < 0 {
		fmt = boundsNegErrorFmts[e.code]
	}
	// max message length is 99: "runtime error: slice bounds out of range [::%x] with capacity %y"
	// x can be at most 20 characters. y can be at most 19.
	b := make([]byte, 0, 100)
	b = append(b, "runtime error: "...)
	for i := 0; i < len(fmt); i++ {
		c := fmt[i]
		if c != '%' {
			b = append(b, c)
			continue
		}
		i++
		switch fmt[i] {
		case 'x':
			b = appendIntStr(b, e.x, e.signed)
		case 'y':
			b = appendIntStr(b, int64(e.y), true)
		}
	}
	return string(b)
}

func itoa(buf []byte, val uint64) []byte {
	i := len(buf) - 1
	for val >= 10 {
		buf[i] = byte(val%10 + '0')
		i--
		val /= 10
	}
	buf[i] = byte(val + '0')
	return buf[i:]
}

// failures in the conversion ([x]T)(s) or (*[x]T)(s), 0 <= x <= y, y == len(s)
func PanicSliceConvert(x int, y int) {
	panic(boundsError{x: int64(x), signed: true, y: y, code: boundsConvert})
}
