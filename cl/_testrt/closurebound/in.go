package main

func main() {
	se := demo1{}
	f := se.encode
	if f() != 1 {
		panic("error")
	}
}

var my = demo2{}.encode

type demo1 struct {
}

func (se demo1) encode() int {
	return 1
}

type demo2 struct {
}

func (se demo2) encode() int {
	return 2
}
