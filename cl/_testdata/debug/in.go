package foo

type IFoo interface {
	Foo(a []int, b string) int
}

type Foo struct {
	nexy *Foo
	data map[string]uint64
	f32  float32
	f64  float64
	u8   uint8
	u16  uint16
	u32  uint32
	u64  uint64
	u    uint
	i8   int8
	i16  int16
	i32  int32
	i64  int64
	i    int
	b    bool
	arr  [10]int
	c64  complex64
	c128 complex128
}

func (Foo) Foo(a []int, b string) int {
	return 1
}

func fn(a int, b float64) int {
	return 1
}

func fn1(fn func(int, float64) int) {
	fn(1, 1.0)
}

func fn2() {
	fn1(fn)
	ch := make(chan int)
	go func() {
		ch <- 1
	}()
	<-ch

	f := Foo{}
	var foo IFoo = f
	foo.Foo(nil, "")
}
