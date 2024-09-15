package foo

import "errors"

type Base struct {
	name string
}

type E struct {
	Base
	i int
}
type StructWithAllTypeFields struct {
	i8    int8
	i16   int16
	i32   int32
	i64   int64
	i     int
	u8    uint8
	u16   uint16
	u32   uint32
	u64   uint64
	u     uint
	f32   float32
	f64   float64
	c64   complex64
	c128  complex128
	slice []int
	arr   [3]int
	b     bool
	s     string
	e     E
	pf    *StructWithAllTypeFields // resursive
	pi    *int
	intr  Interface
	m     map[string]uint64
	c     chan int
	err   error
}

type Interface interface {
	Foo(a []int, b string) int
}

type Struct struct{}

func (s *Struct) Foo(a []int, b string) int {
	return 1
}

func FuncWithAllTypeStructParam(s StructWithAllTypeFields) {
	println(&s)
}

// Params is a function with all types of parameters.
func FuncWithAllTypeParams(
	i8 int8,
	i16 int16,
	i32 int32,
	i64 int64,
	i int,
	u8 uint8,
	u16 uint16,
	u32 uint32,
	u64 uint64,
	u uint,
	f32 float32,
	f64 float64,
	c64 complex64,
	c128 complex128,
	slice []int,
	arr [3]int,
	b bool,
	s string,
	e E,
	f StructWithAllTypeFields,
	pf *StructWithAllTypeFields,
	pi *int,
	intr Interface,
	m map[string]uint64,
	c chan int,
	err error,
) (int, error) {
	println(
		i8, i16, i32, i64, i, u8, u16, u32, u64, u, f32, f64, c64, c128,
		slice, arr[0:], b, s, &e, &f, pf, pi, intr, m, c, err,
	)
	return 1, errors.New("Some error")
}
