package main

func main() {
	cvt32Fto8U(-1, 255)
	cvt32Fto32U(4294967295.1, 0)
	cvt32Fto32U(5294967295.1, 1000000000)
	cvt32Fto32U(-1294967295.1, 3000000000)
	cvt32Fto32U(-1.1, 4294967295)
}

func cvt32Fto8U(a float32, b uint8) {
	if uint8(a) != b {
		panic("error")
	}
}

func cvt32Fto32U(a float32, b uint32) {
	if uint32(a) != b {
		panic("error")
	}
}
