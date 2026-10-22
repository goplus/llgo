package main

import (
	"errors"
	"runtime"
	"strings"
)

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

type NamedString string
type NamedInts []int

type Struct struct{}

func (s *Struct) Foo(a []int, b string) int {
	return 1
}

type Counter struct {
	base int
}

func (c *Counter) Add(value int) int {
	return c.base + value
}

func Plain(value int) int {
	return value + 1
}

type IntFunc func(int) int

type NamedMap map[string]int
type NamedChan chan int

type LargeKey struct {
	ID  int
	Pad [128]byte
}

type LargeValue struct {
	Value int
	Pad   [128]byte
}

type InterfaceResults struct {
	intResult  int
	textResult string
	fooResult  int
	errResult  string
}

type ContainerResults struct {
	mapValue    uint64
	namedValue  int
	largeValue  int
	channelHead int
	channelLen  int
	channelCap  int
	closedHead  string
	closedOK    bool
}

var containerResults *ContainerResults
var goroutineReadySum int

func RuntimeInterfaceValues() {
	var nilAny any
	anyInt := any(42)
	anyText := any("interface")
	var nilFoo Interface
	foo := Interface(&Struct{})
	err := errors.New("interface error")
	results := &InterfaceResults{
		intResult:  anyInt.(int) + 1,
		textResult: anyText.(string) + "!",
		fooResult:  foo.Foo([]int{1, 2}, "x"),
		errResult:  err.Error(),
	}
	InspectInterfaceValues(nilAny, anyInt, anyText, nilFoo, foo, err, results)
}

func InspectInterfaceValues(nilAny, anyInt, anyText any, nilFoo, foo Interface, err error, results *InterfaceResults) {
	println(nilAny, anyInt, anyText, nilFoo, foo, err,
		results.intResult, results.textResult, results.fooResult, results.errResult) // LLDB_BREAK: interface_values
}

func RuntimeFunctionValues() {
	plain := Plain
	named := IntFunc(Plain)
	base := 5
	closure := func(value int) int { return base + value }
	counter := &Counter{base: 10}
	bound := counter.Add
	var nilFunc func(int) int
	plainResult := plain(1)
	namedResult := named(2)
	closureResult := closure(2)
	boundResult := bound(3)
	println(plain, named, closure, bound, nilFunc, plainResult, namedResult, closureResult, boundResult) // LLDB_BREAK: function_values
}

func RuntimeContainerValues() {
	var nilMap map[string]uint64
	single := map[string]uint64{"answer": 42}
	named := NamedMap{"named": 17}
	many := make(map[int]int, 24)
	for index := 0; index < 24; index++ {
		many[index] = index * index
	}
	counter := &Counter{base: 23}
	pointers := map[string]*Counter{"counter": counter}
	largeKey := LargeKey{ID: 5}
	large := map[LargeKey]LargeValue{
		largeKey: {Value: 29},
	}

	var nilChannel chan int
	queued := make(chan int, 4)
	queued <- 7
	queued <- 8
	channelHead := <-queued
	queued <- 9
	namedChannel := NamedChan(make(chan int, 2))
	namedChannel <- 31
	pointerChannel := make(chan *Counter, 1)
	pointerChannel <- counter
	closedChannel := make(chan string, 2)
	closedChannel <- "first"
	closedChannel <- "remaining"
	close(closedChannel)
	closedHead, closedOK := <-closedChannel

	results := &ContainerResults{
		mapValue:    single["answer"],
		namedValue:  named["named"],
		largeValue:  large[largeKey].Value,
		channelHead: channelHead,
		channelLen:  len(queued),
		channelCap:  cap(queued),
		closedHead:  closedHead,
		closedOK:    closedOK,
	}
	containerResults = results
	InspectContainerValues(
		nilMap, single, named, many, pointers, large,
		nilChannel, queued, namedChannel, pointerChannel, closedChannel,
	)
}

func InspectContainerValues(
	nilMap map[string]uint64,
	single map[string]uint64,
	named NamedMap,
	many map[int]int,
	pointers map[string]*Counter,
	large map[LargeKey]LargeValue,
	nilChannel chan int,
	queued chan int,
	namedChannel NamedChan,
	pointerChannel chan *Counter,
	closedChannel chan string,
) {
	println( // LLDB_BREAK: container_values
		nilMap, single, named, many, pointers, large,
		nilChannel, queued, namedChannel, pointerChannel, closedChannel,
		containerResults.mapValue, containerResults.namedValue,
		containerResults.largeValue, containerResults.channelHead,
		containerResults.channelLen, containerResults.channelCap,
		containerResults.closedHead, containerResults.closedOK,
	)
}

func RuntimeGoroutineValues() {
	ready := make(chan int, 2)
	collected := make(chan struct{})
	release := make(chan struct{})
	results := make(chan int, 2)
	for worker := 1; worker <= 2; worker++ {
		go func(value int) {
			ready <- value
			<-collected
			ready <- value
			<-release
			results <- value * value
		}(worker)
	}
	readySum := <-ready + <-ready
	goroutineReadySum = readySum
	// Collect while worker threads are live so debugger signal handling is tested.
	runtime.GC()
	close(collected)
	// Wait until both workers have returned from collector signal handlers
	// before asking debuggers to unwind their ordinary application stacks.
	if <-ready+<-ready != readySum {
		panic("goroutine ready mismatch")
	}
	waitForParkedWorkers()
	InspectGoroutineValues(readySum)
	close(release)
	resultSum := <-results + <-results
	if resultSum != 5 {
		panic("goroutine result mismatch")
	}
}

func InspectGoroutineValues(readySum int) {
	println(readySum) // LLDB_BREAK: goroutine_values
}

func RuntimeValues() {
	text := "hello"
	empty := ""
	binary := "a\x00b"
	unicodeText := "世界"
	longUnicode := strings.Repeat("a", 255) + "界tail"
	invalid := "\xff"
	ints := []int{7, 8, 9, 10}[:2]
	var nilInts []int
	emptyInts := []int{}
	namedText := NamedString("named")
	namedInts := NamedInts{11, 12, 13, 14}
	println(text, empty, binary, unicodeText, longUnicode, invalid, ints, nilInts, emptyInts, namedText, namedInts) // LLDB_BREAK: runtime_values
}

func FuncWithAllTypeStructParam(s StructWithAllTypeFields) {
	println(&s)
	s.i8 = '\b'             // LLDB_BREAK: struct_param_initial
	println(len(s.s), s.i8) // LLDB_BREAK: struct_param_updated
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
	currentI32 := i32
	currentI64 := i64
	currentI := i
	currentU32 := u32
	currentU64 := u64
	currentU := u
	currentF32 := f32
	currentF64 := f64
	println( // LLDB_BREAK: all_params_initial
		i8, i16, currentI32, currentI64, currentI, u8, u16, currentU32, currentU64, currentU,
		currentF32, currentF64, b,
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
	currentI32 = i32
	currentI64 = i64
	currentI = i
	currentU32 = u32
	currentU64 = u64
	currentU = u
	currentF32 = f32
	currentF64 = f64
	println(i8, i16, currentI32, currentI64, currentI, u8, u16, currentU32, currentU64, currentU,
		currentF32, currentF64, b,
		c64, c128,
		slice, arr[0:], &arr2,
		s,
		&e,
		&f, pf, pi, intr, m,
		c,
		err,
		fn,
	)
	return 1, errors.New("some error") // LLDB_BREAK: all_params_updated
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
	println(t.I, s.I, s.J, m.I, m.J, m.K, b.I, b.J, b.K, b.L, b.M, b.N, b.O, b.P, b.Q, b.R) // LLDB_BREAK: struct_values_initial
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
	println("done") // LLDB_BREAK: struct_values_updated
}

func FuncStructPtrParams(t *TinyStruct, s *SmallStruct, m *MidStruct, b *BigStruct) {
	println(t, s, m, b) // LLDB_BREAK: struct_ptrs_initial
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
	println(t.I, s.I, s.J, m.I, m.J, m.K, b.I, b.J, b.K, b.L, b.M, b.N, b.O, b.P, b.Q, b.R) // LLDB_BREAK: struct_ptrs_updated
	println("done")
}

func ScopeIf(branch int) {
	a := 1
	println(a) // LLDB_BREAK: scope_if_entry
	if branch == 1 {
		b := 2
		c := 3
		println(a, b, c) // LLDB_BREAK: scope_if_true
	} else {
		c := 3
		d := 4
		println(a, c, d) // LLDB_BREAK: scope_if_false
	}
	println("a:", a) // LLDB_BREAK: scope_if_exit
}

func ScopeFor() {
	a := 1
	for i := 0; i < 10; i++ {
		switch i {
		case 0:
			println("i is 0")
			println("i:", i) // LLDB_BREAK: scope_for_zero
		case 1:
			println("i is 1")
			println("i:", i) // LLDB_BREAK: scope_for_one
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
		println("i:", i, "a:", a, "b:", b) // LLDB_BREAK: scope_switch_one
	case 2:
		c := 2
		println("i is 2")
		println("i:", i, "a:", a, "c:", c) // LLDB_BREAK: scope_switch_two
	default:
		d := 3
		println("i is", i)
		println("i:", i, "a:", a, "d:", d) // LLDB_BREAK: scope_switch_default
	}
	println("a:", a) // LLDB_BREAK: scope_switch_exit
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
	globalStructPtr = &s // LLDB_BREAK: main_struct_initial
	globalStruct = s
	println("globalInt:", globalInt)
	println("s:", &s) // LLDB_BREAK: main_globals
	FuncWithAllTypeStructParam(s)
	RuntimeValues()
	RuntimeInterfaceValues()
	RuntimeFunctionValues()
	RuntimeContainerValues()
	RuntimeGoroutineValues()
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
	println((*globalStructPtr).i8) // LLDB_BREAK: main_struct_updated
	println((*globalStructPtr).i8)
	println("done")
	println("")
	println(&s, &globalStruct, globalStructPtr.i16, globalStructPtr)
	globalStructPtr = nil
}

var globalInt int = 301
var globalStruct StructWithAllTypeFields
var globalStructPtr *StructWithAllTypeFields
