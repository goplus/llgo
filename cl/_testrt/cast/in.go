package main

//"github.com/goplus/llgo/c"

func main() {
	cvt64to8(0, 0)
	cvt64to8(127, 127)
	cvt64to8(128, -128)
	cvt64to8(-128, -128)
	cvt64to8(-129, 127)
	cvt64to8(256, 0)

	cvt64to8U(0, 0)
	cvt64to8U(255, 255)
	cvt64to8U(256, 0)
	cvt64to8U(257, 1)
	cvt64to8U(-1, 255)

	cvt32Fto8(0.1, 0)
	cvt32Fto8(127.1, 127)
	cvt32Fto8(128.1, -128)
	cvt32Fto8(-128.1, -128)
	cvt32Fto8(-129.1, 127)
	cvt32Fto8(256.1, 0)

	cvt32Fto8U(0, 0)
	cvt32Fto8U(255, 255)
	cvt32Fto8U(256, 0)
	cvt32Fto8U(257, 1)
	cvt32Fto8U(-1, 255)

	// MaxInt32  = 1<<31 - 1           // 2147483647
	// MinInt32  = -1 << 31            // -2147483648
	cvt32Fto32(0, 0)
	cvt32Fto32(1.5, 1)
	cvt32Fto32(1147483647.1, 1147483648)
	cvt32Fto32(-2147483648.1, -2147483648)

	// MaxUint32 = 1<<32 - 1           // 4294967295
	cvt32Fto32U(0, 0)
	cvt32Fto32U(1.5, 1)
	cvt32Fto32U(4294967295.1, 0)
	cvt32Fto32U(5294967295.1, 1000000000)
	cvt32Fto32U(-4294967295.1, 0)
	cvt32Fto32U(-1294967295.1, 3000000000)
	cvt32Fto32U(-1.1, 4294967295)

	// MaxFloat32             = 0x1p127 * (1 + (1 - 0x1p-23)) // 3.40282346638528859811704183484516925440e+38
	// SmallestNonzeroFloat32 = 0x1p-126 * 0x1p-23            // 1.401298464324817070923729583289916131280e-45
	// MaxFloat64             = 0x1p1023 * (1 + (1 - 0x1p-52)) // 1.79769313486231570814527423731704356798070e+308
	// SmallestNonzeroFloat64 = 0x1p-1022 * 0x1p-52            // 4.9406564584124654417656879286822137236505980e-324

	cvt32Fto64F(0, 0)
	cvt32Fto64F(1.5, 1.5)
	cvt32Fto64F(1e10, 1e10)
	cvt32Fto64F(-1e10, -1e10)

	cvt64Fto32F(0, 0)
	cvt64Fto32F(1.5, 1.5)
	cvt64Fto32F(1e10, 1e10)
	cvt64Fto32F(-1e10, -1e10)

	// MaxInt64  = 1<<63 - 1           // 9223372036854775807
	// MinInt64  = -1 << 63            // -9223372036854775808
	cvt64to64F(0, 0)
	cvt64to64F(1e10, 1e10)
	cvt64to64F(9223372036854775807, 9223372036854775807)
	cvt64to64F(-9223372036854775807, -9223372036854775807)

	// MaxUint64 = 1<<64 - 1           // 18446744073709551615
	cvt64Uto64F(0, 0)
	cvt64Uto64F(1e10, 1e10)
	cvt64Uto64F(9223372036854775807, 9223372036854775807)
	cvt64Uto64F(18446744073709551615, 18446744073709551615)

	cvt32to64(0, 0)
	cvt32to64(2147483647, 2147483647)

	cvtUinptr(1024, 1024)
}

func cvtUinptr(a int32, b uintptr) {
	if uintptr(a) != b {
		panic("error")
	}
	if int32(b) != a {
		panic("error")
	}
}

func cvt32to64(a int32, b int64) {
	if int64(a) != b {
		panic("error")
	}
}

func cvt64to64F(a int64, b float64) {
	if float64(a) != b {
		panic("error")
	}
}

func cvt64Uto64F(a uint64, b float64) {
	if float64(a) != b {
		panic("error")
	}
}

func cvt64Fto32F(a float64, b float32) {
	if float32(a) != b {
		panic("error")
	}
}

func cvt32Fto64F(a float32, b float64) {
	if float64(a) != b {
		panic("error")
	}
}

func cvt32Fto32(a float32, b int32) {
	if int32(a) != b {
		panic("error")
	}
}

func cvt32Fto32U(a float32, b uint32) {
	if uint32(a) != b {
		panic("error")
	}
}

func cvt32Fto8(a float32, b int8) {
	if int8(a) != b {
		panic("error")
	}
}

func cvt32Fto8U(a float32, b uint8) {
	if uint8(a) != b {
		panic("error")
	}
}

func cvt64to8(a int64, b int8) {
	if int8(a) != b {
		panic("error")
	}
}

func cvt64to8U(a int, b uint8) {
	if uint8(a) != b {
		panic("error")
	}
}
