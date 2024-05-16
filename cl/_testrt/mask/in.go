package main

func main() {
	println(mask(1))
}
func mask(x int8) int32 {
	return int32(x) << 31 >> 31
}
