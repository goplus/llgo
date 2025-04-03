package main

type MyBytes []byte

func main() {
	var i any = MyBytes{}
	_, ok := i.(MyBytes)
	if !ok {
		panic("bad slice")
	}
}
