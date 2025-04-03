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
	// Expected:
	//   all variables: s
	//   s.i8: '\x01'
	//   s.i16: 2
	//   s.i32: 3
	//   s.i64: 4
	//   s.i: 5
	//   s.u8: '\x06'
	//   s.u16: 7
	//   s.u32: 8
	//   s.u64: 9
	//   s.u: 10
	//   s.f32: 11
	//   s.f64: 12
	//   s.b: true
	//   s.c64: complex64{real = 13, imag = 14}
	//   s.c128: complex128{real = 15, imag = 16}
	//   s.slice: []int{21, 22, 23}
	//   s.arr: [3]int{24, 25, 26}
	//   s.arr2: [3]lldbtest.E{{i = 27}, {i = 28}, {i = 29}}
	//   s.s: "hello"
	//   s.e: lldbtest.E{i = 30}
	//   s.pad1: 100
	//   s.pad2: 200
	s.i8 = '\b'
	// Expected:
	//   s.i8: '\b'
	//   s.i16: 2
	println(len(s.s), s.i8)
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
	// Expected:
	//   all variables: i8 i16 i32 i64 i u8 u16 u32 u64 u f32 f64 b c64 c128 slice arr arr2 s e f pf pi intr m c err fn
	//   i32: 3
	//   i64: 4
	//   i: 5
	//   u32: 8
	//   u64: 9
	//   u: 10
	//   f32: 11
	//   f64: 12
	//   slice: []int{21, 22, 23}
	//   arr: [3]int{24, 25, 26}
	//   arr2: [3]lldbtest.E{{i = 27}, {i = 28}, {i = 29}}
	//   slice[0]: 21
	//   slice[1]: 22
	//   slice[2]: 23
	//   arr[0]: 24
	//   arr[1]: 25
	//   arr[2]: 26
	//   arr2[0].i: 27
	//   arr2[1].i: 28
	//   arr2[2].i: 29
	//   e: lldbtest.E{i = 30}

	// Expected(skip):
	//   i8: '\b'
	//   i16: 2
	//   u8: '\x06'
	//   u16: 7
	//   b: true
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
	i8 = 9
	i16 = 10
	i32 = 11
	i64 = 12
	i = 13
	u8 = 14
	u16 = 15
	u32 = 16
	u64 = 17
	u = 18
	f32 = 19
	f64 = 20
	b = false
	c64 = 21 + 22i
	c128 = 23 + 24i
	slice = []int{31, 32, 33}
	arr = [3]int{34, 35, 36}
	arr2 = [3]E{{i: 37}, {i: 38}, {i: 39}}
	s = "world"
	e = E{i: 40}

	println(i8, i16, i32, i64, i, u8, u16, u32, u64, u,
		f32, f64, b,
		c64, c128,
		slice, arr[0:], &arr2,
		s,
		&e,
		&f, pf, pi, intr, m,
		c,
		err,
		fn,
	)
	// Expected:
	//   i8: '\t'
	//   i16: 10
	//   i32: 11
	//   i64: 12
	//   i: 13
	//   u8: '\x0e'
	//   u16: 15
	//   u32: 16
	//   u64: 17
	//   u: 18
	//   f32: 19
	//   f64: 20
	//   b: false
	//   c64: complex64{real = 21, imag = 22}
	//   c128: complex128{real = 23, imag = 24}
	//   slice: []int{31, 32, 33}
	//   arr2: [3]lldbtest.E{{i = 37}, {i = 38}, {i = 39}}
	//   s: "world"
	//   e: lldbtest.E{i = 40}

	// Expected(skip):
	//   arr: [3]int{34, 35, 36}
	return 1, errors.New("some error")
}

type TinyStruct struct {
	I int
}

type SmallStruct struct {
	I int
	J int
}

type MidStruct struct {
	I int
	J int
	K int
}

type BigStruct struct {
	I int
	J int
	K int
	L int
	M int
	N int
	O int
	P int
	Q int
	R int
}

func FuncStructParams(t TinyStruct, s SmallStruct, m MidStruct, b BigStruct) {
	// println(&t, &s, &m, &b)
	// Expected:
	//   all variables: t s m b
	//   t.I: 1
	//   s.I: 2
	//   s.J: 3
	//   m.I: 4
	//   m.J: 5
	//   m.K: 6
	//   b.I: 7
	//   b.J: 8
	//   b.K: 9
	//   b.L: 10
	//   b.M: 11
	//   b.N: 12
	//   b.O: 13
	//   b.P: 14
	//   b.Q: 15
	//   b.R: 16
	println(t.I, s.I, s.J, m.I, m.J, m.K, b.I, b.J, b.K, b.L, b.M, b.N, b.O, b.P, b.Q, b.R)
	t.I = 10
	s.I = 20
	s.J = 21
	m.I = 40
	m.J = 41
	m.K = 42
	b.I = 70
	b.J = 71
	b.K = 72
	b.L = 73
	b.M = 74
	b.N = 75
	b.O = 76
	b.P = 77
	b.Q = 78
	b.R = 79
	// Expected:
	//   all variables: t s m b
	//   t.I: 10
	//   s.I: 20
	//   s.J: 21
	//   m.I: 40
	//   m.J: 41
	//   m.K: 42
	//   b.I: 70
	//   b.J: 71
	//   b.K: 72
	//   b.L: 73
	//   b.M: 74
	//   b.N: 75
	//   b.O: 76
	//   b.P: 77
	//   b.Q: 78
	//   b.R: 79
	println("done")
}

func FuncStructPtrParams(t *TinyStruct, s *SmallStruct, m *MidStruct, b *BigStruct) {
	// Expected:
	//   all variables: t s m b
	//   t.I: 1
	//   s.I: 2
	//   s.J: 3
	//   m.I: 4
	//   m.J: 5
	//   m.K: 6
	//   b.I: 7
	//   b.J: 8
	//   b.K: 9
	//   b.L: 10
	//   b.M: 11
	//   b.N: 12
	//   b.O: 13
	//   b.P: 14
	//   b.Q: 15
	//   b.R: 16
	println(t, s, m, b)
	t.I = 10
	s.I = 20
	s.J = 21
	m.I = 40
	m.J = 41
	m.K = 42
	b.I = 70
	b.J = 71
	b.K = 72
	b.L = 73
	b.M = 74
	b.N = 75
	b.O = 76
	b.P = 77
	b.Q = 78
	b.R = 79
	// Expected:
	//   all variables: t s m b
	//   t.I: 10
	//   s.I: 20
	//   s.J: 21
	//   m.I: 40
	//   m.J: 41
	//   m.K: 42
	//   b.I: 70
	//   b.J: 71
	//   b.K: 72
	//   b.L: 73
	//   b.M: 74
	//   b.N: 75
	//   b.O: 76
	//   b.P: 77
	//   b.Q: 78
	//   b.R: 79
	println(t.I, s.I, s.J, m.I, m.J, m.K, b.I, b.J, b.K, b.L, b.M, b.N, b.O, b.P, b.Q, b.R)
	println("done")
}

func ScopeIf(branch int) {
	a := 1
	// Expected:
	//   all variables: a branch
	//   a: 1
	if branch == 1 {
		b := 2
		c := 3
		// Expected:
		//   all variables: a b c branch
		//   a: 1
		//   b: 2
		//   c: 3
		//   branch: 1
		println(a, b, c)
	} else {
		c := 3
		d := 4
		// Expected:
		//   all variables: a c d branch
		//   a: 1
		//   c: 3
		//   d: 4
		//   branch: 0
		println(a, c, d)
	}
	// Expected:
	//   all variables: a branch
	//   a: 1
	println("a:", a)
}

func ScopeFor() {
	a := 1
	for i := 0; i < 10; i++ {
		switch i {
		case 0:
			println("i is 0")
			// Expected:
			//   all variables: i a
			//   i: 0
			//   a: 1
			println("i:", i)
		case 1:
			println("i is 1")
			// Expected:
			//   all variables: i a
			//   i: 1
			//   a: 1
			println("i:", i)
		default:
			println("i is", i)
		}
	}
	println("a:", a)
}

func ScopeSwitch(i int) {
	a := 0
	switch i {
	case 1:
		b := 1
		println("i is 1")
		// Expected:
		//   all variables: i a b
		//   i: 1
		//   a: 0
		//   b: 1
		println("i:", i, "a:", a, "b:", b)
	case 2:
		c := 2
		println("i is 2")
		// Expected:
		//   all variables: i a c
		//   i: 2
		//   a: 0
		//   c: 2
		println("i:", i, "a:", a, "c:", c)
	default:
		d := 3
		println("i is", i)
		// Expected:
		//   all variables: i a d
		//   i: 3
		//   a: 0
		//   d: 3
		println("i:", i, "a:", a, "d:", d)
	}
	// Expected:
	//   all variables: a i
	//   a: 0
	println("a:", a)
}

func main() {
	FuncStructParams(TinyStruct{I: 1}, SmallStruct{I: 2, J: 3}, MidStruct{I: 4, J: 5, K: 6}, BigStruct{I: 7, J: 8, K: 9, L: 10, M: 11, N: 12, O: 13, P: 14, Q: 15, R: 16})
	FuncStructPtrParams(&TinyStruct{I: 1}, &SmallStruct{I: 2, J: 3}, &MidStruct{I: 4, J: 5, K: 6}, &BigStruct{I: 7, J: 8, K: 9, L: 10, M: 11, N: 12, O: 13, P: 14, Q: 15, R: 16})
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
		pf:    &StructWithAllTypeFields{i16: 100},
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
	// Expected:
	//   all variables: s i err
	//   s.i8: '\x01'
	//   s.i16: 2
	//   s.i32: 3
	//   s.i64: 4
	//   s.i: 5
	//   s.u8: '\x06'
	//   s.u16: 7
	//   s.u32: 8
	//   s.u64: 9
	//   s.u: 10
	//   s.f32: 11
	//   s.f64: 12
	//   s.b: true
	//   s.c64: complex64{real = 13, imag = 14}
	//   s.c128: complex128{real = 15, imag = 16}
	//   s.slice: []int{21, 22, 23}
	//   s.arr: [3]int{24, 25, 26}
	//   s.arr2: [3]lldbtest.E{{i = 27}, {i = 28}, {i = 29}}
	//   s.s: "hello"
	//   s.e: lldbtest.E{i = 30}
	//   s.pf.i16: 100
	//   *(s.pf).i16: 100
	//   *(s.pi): 100
	globalStructPtr = &s
	globalStruct = s
	println("globalInt:", globalInt)
	// Expected(skip):
	//   all variables: globalInt globalStruct globalStructPtr s i err
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
	ScopeIf(1)
	ScopeIf(0)
	ScopeFor()
	ScopeSwitch(1)
	ScopeSwitch(2)
	ScopeSwitch(3)
	println(globalStructPtr)
	println(&globalStruct)
	s.i8 = 0x12
	println(s.i8)
	// Expected:
	//   all variables: s i err
	//   s.i8: '\x12'

	// Expected(skip):
	//   globalStruct.i8: '\x01'
	println((*globalStructPtr).i8)
	println("done")
	println("")
	println(&s, &globalStruct, globalStructPtr.i16, globalStructPtr)
	globalStructPtr = nil
}

var globalInt int = 301
var globalStruct StructWithAllTypeFields
var globalStructPtr *StructWithAllTypeFields
