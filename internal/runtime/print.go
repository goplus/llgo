// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

// The compiler knows that a print of a value of this type
// should use printhex instead of printuint (decimal).
func bytes(s string) (ret []byte) {
	rp := (*Slice)(unsafe.Pointer(&ret))
	sp := (*String)(unsafe.Pointer(&s))
	rp.data = sp.data
	rp.len = sp.len
	rp.cap = sp.len
	return
}

func gwrite(b []byte) {
	if len(b) == 0 {
		return
	}
	for _, v := range b {
		c.Fprintf(c.Stderr, c.Str("%c"), v)
	}
}

func PrintBool(v bool) {
	if v {
		PrintString("true")
	} else {
		PrintString("false")
	}
}

func PrintFloat(v float64) {
	switch {
	case v != v:
		PrintString("NaN")
		return
	case v+v == v && v > 0:
		PrintString("+Inf")
		return
	case v+v == v && v < 0:
		PrintString("-Inf")
		return
	}

	const n = 7 // digits printed
	var buf [n + 7]byte
	buf[0] = '+'
	e := 0 // exp
	if v == 0 {
		if 1/v < 0 {
			buf[0] = '-'
		}
	} else {
		if v < 0 {
			v = -v
			buf[0] = '-'
		}

		// normalize
		for v >= 10 {
			e++
			v /= 10
		}
		for v < 1 {
			e--
			v *= 10
		}

		// round
		h := 5.0
		for i := 0; i < n; i++ {
			h /= 10
		}
		v += h
		if v >= 10 {
			e++
			v /= 10
		}
	}

	// format +d.dddd+edd
	for i := 0; i < n; i++ {
		s := int(v)
		buf[i+2] = byte(s + '0')
		v -= float64(s)
		v *= 10
	}
	buf[1] = buf[2]
	buf[2] = '.'

	buf[n+2] = 'e'
	buf[n+3] = '+'
	if e < 0 {
		e = -e
		buf[n+3] = '-'
	}

	buf[n+4] = byte(e/100) + '0'
	buf[n+5] = byte(e/10)%10 + '0'
	buf[n+6] = byte(e%10) + '0'
	gwrite(buf[:])
}

// func PrintComplex(c complex128) {
// 	print("(", real(c), imag(c), "i)")
// }

func PrintUint(v uint64) {
	var buf [100]byte
	i := len(buf)
	for i--; i > 0; i-- {
		buf[i] = byte(v%10 + '0')
		if v < 10 {
			break
		}
		v /= 10
	}
	gwrite(buf[i:])
}

func PrintInt(v int64) {
	if v < 0 {
		PrintString("-")
		v = -v
	}
	PrintUint(uint64(v))
}

func PrintHex(v uint64) {
	const dig = "0123456789abcdef"
	var buf [100]byte
	i := len(buf)
	for i--; i > 0; i-- {
		buf[i] = dig[v%16]
		if v < 16 && len(buf)-i >= 0 {
			break
		}
		v /= 16
	}
	i--
	buf[i] = 'x'
	i--
	buf[i] = '0'
	gwrite(buf[i:])
}

func PrintPointer(p unsafe.Pointer) {
	PrintHex(uint64(uintptr(p)))
}

func PrintString(s string) {
	gwrite(bytes(s))
}

func PrintSlice(s Slice) {
	sp := (*Slice)(unsafe.Pointer(&s))
	print("[", s.len, "/", s.cap, "]")
	PrintPointer(sp.data)
}

func PrintIface(i iface) {
	print("(", i.tab, ",", i.data, ")")
}
