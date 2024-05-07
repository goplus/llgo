package main

import (
	"unsafe"

	"github.com/goplus/llgo/internal/runtime/c"
)

func gwrite(b []byte) {
	if len(b) == 0 {
		return
	}
	for _, v := range b {
		c.Printf(c.Str("%c"), v)
	}
}

// func printfloat(v float64) {
// 	switch {
// 	case v != v:
// 		printstring("NaN")
// 		return
// 	case v+v == v && v > 0:
// 		printstring("+Inf")
// 		return
// 	case v+v == v && v < 0:
// 		printstring("-Inf")
// 		return
// 	}

// 	const n = 7 // digits printed
// 	var buf [n + 7]byte
// 	buf[0] = '+'
// 	e := 0 // exp
// 	if v == 0 {
// 		if 1/v < 0 {
// 			buf[0] = '-'
// 		}
// 	} else {
// 		if v < 0 {
// 			v = -v
// 			buf[0] = '-'
// 		}

// 		// normalize
// 		for v >= 10 {
// 			e++
// 			v /= 10
// 		}
// 		for v < 1 {
// 			e--
// 			v *= 10
// 		}

// 		// round
// 		h := 5.0
// 		for i := 0; i < n; i++ {
// 			h /= 10
// 		}
// 		v += h
// 		if v >= 10 {
// 			e++
// 			v /= 10
// 		}
// 	}

// 	// format +d.dddd+edd
// 	for i := 0; i < n; i++ {
// 		s := int(v)
// 		buf[i+2] = byte(s + '0')
// 		v -= float64(s)
// 		v *= 10
// 	}
// 	buf[1] = buf[2]
// 	buf[2] = '.'

// 	buf[n+2] = 'e'
// 	buf[n+3] = '+'
// 	if e < 0 {
// 		e = -e
// 		buf[n+3] = '-'
// 	}

// 	buf[n+4] = byte(e/100) + '0'
// 	buf[n+5] = byte(e/10)%10 + '0'
// 	buf[n+6] = byte(e%10) + '0'
// 	gwrite(buf[:])
// }

func printuint(v uint64) {
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

func printint(v int64) {
	if v < 0 {
		printstring("-")
		v = -v
	}
	printuint(uint64(v))
}

var minhexdigits = 0

func printhex(v uint64) {
	const dig = "0123456789abcdef"
	var buf [100]byte
	i := len(buf)
	for i--; i > 0; i-- {
		buf[i] = dig[v%16]
		if v < 16 && len(buf)-i >= minhexdigits {
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

func printsp() {
	printstring(" ")
}

func printnl() {
	printstring("\n")
}

func printstring(s string) {
	gwrite(bytes(s))
}

type slice struct {
	array unsafe.Pointer
	len   int
	cap   int
}

type stringStruct struct {
	str unsafe.Pointer
	len int
}

func stringStructOf(sp *string) *stringStruct {
	return (*stringStruct)(unsafe.Pointer(sp))
}

func bytes(s string) (ret []byte) {
	rp := (*slice)(unsafe.Pointer(&ret))
	sp := stringStructOf(&s)
	rp.array = sp.str
	rp.len = sp.len
	rp.cap = sp.len
	return
}

func main() {
	printstring("llgo")
	printnl()
	printuint(1024)
	printnl()
	printhex(0x1234abcf)
	printnl()
	prinxor(1)
	printnl()
	prinsub(100)
	printnl()
	prinusub(1<<64 - 1)
	printnl()
	prinfsub(100.1)
}

func prinxor(n int64) {
	printint(^n)
}

func prinsub(n int64) {
	printint(-n)
}

func prinusub(n uint64) {
	printuint(-n)
}

func prinfsub(n float64) {
	_ = -n
}
