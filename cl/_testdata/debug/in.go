package main

import "errors"

type Base struct {
	name string
}

type E struct {
	// Base
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
	b     bool
	c64   complex64
	c128  complex128
	slice []int
	arr   [3]int
	arr2  [3]E
	s     string
	e     E
	pf    *StructWithAllTypeFields // resursive
	pi    *int
	intr  Interface
	m     map[string]uint64
	c     chan int
	err   error
	fn    func(string) (int, error)
	pad1  int
	pad2  int
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
	println(len(s.s))
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
	b bool,
	c64 complex64,
	c128 complex128,
	slice []int,
	arr [3]int,
	arr2 [3]E,
	s string,
	e E,
	f StructWithAllTypeFields,
	pf *StructWithAllTypeFields,
	pi *int,
	intr Interface,
	m map[string]uint64,
	c chan int,
	err error,
	fn func(string) (int, error),
) (int, error) {
	println(
		i8, i16, i32, i64, i, u8, u16, u32, u64, u,
		f32, f64, b,
		c64, c128,
		slice, arr[0:],
		s,
		&e,
		&f, pf, pi, intr, m,
		c,
		err,
		fn,
	)
	return 1, errors.New("Some error")
}

func main() {
	i := 100
	s := StructWithAllTypeFields{
		i8:    1,
		i16:   2,
		i32:   3,
		i64:   4,
		i:     5,
		u8:    6,
		u16:   7,
		u32:   8,
		u64:   9,
		u:     10,
		f32:   11,
		f64:   12,
		b:     true,
		c64:   13 + 14i,
		c128:  15 + 16i,
		slice: []int{21, 22, 23},
		arr:   [3]int{24, 25, 26},
		arr2:  [3]E{{i: 27}, {i: 28}, {i: 29}},
		s:     "hello",
		e:     E{i: 30},
		pf:    &StructWithAllTypeFields{},
		pi:    &i,
		intr:  &Struct{},
		m:     map[string]uint64{"a": 31, "b": 32},
		c:     make(chan int),
		err:   errors.New("Test error"),
		fn: func(s string) (int, error) {
			println("fn:", s)
			i = 201
			return 1, errors.New("fn error")
		},
		pad1: 100,
		pad2: 200,
	}
	globalStructPtr = &s
	globalStruct = s
	println("globalInt:", globalInt)
	println("s:", &s)
	FuncWithAllTypeStructParam(s)
	println("called function with struct")
	i, err := FuncWithAllTypeParams(
		s.i8, s.i16, s.i32, s.i64, s.i, s.u8, s.u16, s.u32, s.u64, s.u,
		s.f32, s.f64, s.b,
		s.c64, s.c128,
		s.slice, s.arr, s.arr2,
		s.s,
		s.e, s,
		s.pf, s.pi,
		s.intr,
		s.m,
		s.c,
		s.err,
		s.fn,
	)
	println(i, err)
	println("called function with types")
	println(globalStructPtr)
	println(&globalStruct)
	println("done")
}

var globalInt int = 301
var globalStruct StructWithAllTypeFields
var globalStructPtr *StructWithAllTypeFields
