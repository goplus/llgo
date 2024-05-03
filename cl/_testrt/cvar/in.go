package main

import _ "unsafe"

//go:linkname barX _bar_x
var barX struct {
	Arr       [16]int8
	Callbacks [2]func()
}

//go:linkname barY _bar_y
var barY struct {
	Arr [16]int8
}

func main() {
	_ = barX
	_ = barY
}
