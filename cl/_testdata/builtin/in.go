package main

var a int64 = 1<<63 - 1
var b int64 = -1 << 63
var c uint64 = 1<<64 - 1

func main() {
	var a = []int{1, 2, 3, 4}
	_ = len(a)
	_ = len([]int{1, 2, 3, 4})
}
