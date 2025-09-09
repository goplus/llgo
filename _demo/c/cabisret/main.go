package main

type array9 struct {
	x [9]float32
}

func demo1(a array9) array9 {
	a.x[0] += 1
	return a
}

func demo2(a array9) array9 {
	for i := 0; i < 1024*128; i++ {
		a = demo1(a)
	}
	return a
}

func testDemo() {
	ar := array9{x: [9]float32{1, 2, 3, 4, 5, 6, 7, 8, 9}}
	for i := 0; i < 1024*128; i++ {
		ar = demo1(ar)
	}
	ar = demo2(ar)
	println(ar.x[0], ar.x[1])
}

func testSlice() {
	var b []byte
	for i := 0; i < 1024*128; i++ {
		b = append(b, byte(i))
	}
	_ = b
}

func main() {
	testDemo()
	testSlice()
}
