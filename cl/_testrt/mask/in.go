package main

func main() {
	println(mask(1))
	println(mask_shl(127, 5))
	println(mask_shl8(127, 5))
	println(mask_shl8u(127, 5))
	println(mask_shl8(127, 16))
	println(mask_shl8u(127, 16))
	println(mask_shr(127, 5))
	println(mask_shr8(127, 5))
	println(mask_shr8u(127, 5))
	println(mask_shr8(127, 16))
}

func mask(x int8) int32 {
	return int32(x) << 31 >> 31
}

func mask_shl8(x int8, y int) int8 {
	return x << y
}

func mask_shl8u(x uint8, y int) uint8 {
	return x << y
}

func mask_shl(x int, y int) int {
	return x << y
}

func mask_shr8(x int8, y int) int8 {
	return x >> y
}

func mask_shr8u(x uint8, y int) uint8 {
	return x >> y
}

func mask_shr(x int, y int) int {
	return x >> y
}
