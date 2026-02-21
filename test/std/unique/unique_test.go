package unique_test

import (
	"testing"
	"unique"
)

func TestMakeBasicTypes(t *testing.T) {
	// Test with int
	h1 := unique.Make(42)
	h2 := unique.Make(42)
	h3 := unique.Make(43)

	if h1 != h2 {
		t.Error("Make(42) handles should be equal")
	}
	if h1 == h3 {
		t.Error("Make(42) and Make(43) handles should not be equal")
	}

	// Test with string
	s1 := unique.Make("hello")
	s2 := unique.Make("hello")
	s3 := unique.Make("world")

	if s1 != s2 {
		t.Error("Make(\"hello\") handles should be equal")
	}
	if s1 == s3 {
		t.Error("Make(\"hello\") and Make(\"world\") handles should not be equal")
	}

	// Test with bool
	b1 := unique.Make(true)
	b2 := unique.Make(true)
	b3 := unique.Make(false)

	if b1 != b2 {
		t.Error("Make(true) handles should be equal")
	}
	if b1 == b3 {
		t.Error("Make(true) and Make(false) handles should not be equal")
	}

	// Test with float64
	f1 := unique.Make(3.14)
	f2 := unique.Make(3.14)
	f3 := unique.Make(2.71)

	if f1 != f2 {
		t.Error("Make(3.14) handles should be equal")
	}
	if f1 == f3 {
		t.Error("Make(3.14) and Make(2.71) handles should not be equal")
	}
}

func TestMakeStruct(t *testing.T) {
	type Point struct {
		X, Y int
	}

	p1 := unique.Make(Point{1, 2})
	p2 := unique.Make(Point{1, 2})
	p3 := unique.Make(Point{2, 3})

	if p1 != p2 {
		t.Error("Make(Point{1,2}) handles should be equal")
	}
	if p1 == p3 {
		t.Error("Make(Point{1,2}) and Make(Point{2,3}) handles should not be equal")
	}
}

func TestMakeArray(t *testing.T) {
	a1 := unique.Make([3]int{1, 2, 3})
	a2 := unique.Make([3]int{1, 2, 3})
	a3 := unique.Make([3]int{1, 2, 4})

	if a1 != a2 {
		t.Error("Make([3]int{1,2,3}) handles should be equal")
	}
	if a1 == a3 {
		t.Error("Make([3]int{1,2,3}) and Make([3]int{1,2,4}) handles should not be equal")
	}
}

func TestValue(t *testing.T) {
	// Test with int
	h := unique.Make(42)
	v := h.Value()
	if v != 42 {
		t.Errorf("Handle.Value() = %d, want 42", v)
	}

	// Test with string
	s := unique.Make("test")
	sv := s.Value()
	if sv != "test" {
		t.Errorf("Handle.Value() = %q, want %q", sv, "test")
	}

	// Test with struct
	type Person struct {
		Name string
		Age  int
	}
	p := unique.Make(Person{"Alice", 30})
	pv := p.Value()
	if pv.Name != "Alice" || pv.Age != 30 {
		t.Errorf("Handle.Value() = %+v, want {Alice 30}", pv)
	}
}

func TestMultipleMakes(t *testing.T) {
	// Create multiple handles for the same value
	handles := make([]unique.Handle[int], 10)
	for i := range handles {
		handles[i] = unique.Make(100)
	}

	// All handles should be equal
	for i := 1; i < len(handles); i++ {
		if handles[0] != handles[i] {
			t.Errorf("Handle %d not equal to handle 0", i)
		}
	}
}

func TestDifferentTypes(t *testing.T) {
	// Test that handles of different types are independent
	intHandle := unique.Make(42)
	strHandle := unique.Make("42")

	// Get values back
	if intHandle.Value() != 42 {
		t.Error("int handle value incorrect")
	}
	if strHandle.Value() != "42" {
		t.Error("string handle value incorrect")
	}
}

func TestEmptyString(t *testing.T) {
	h1 := unique.Make("")
	h2 := unique.Make("")
	h3 := unique.Make("a")

	if h1 != h2 {
		t.Error("Make(\"\") handles should be equal")
	}
	if h1 == h3 {
		t.Error("Make(\"\") and Make(\"a\") handles should not be equal")
	}
}

func TestZeroValues(t *testing.T) {
	// Test with zero value of int
	h1 := unique.Make(0)
	h2 := unique.Make(0)
	h3 := unique.Make(1)

	if h1 != h2 {
		t.Error("Make(0) handles should be equal")
	}
	if h1 == h3 {
		t.Error("Make(0) and Make(1) handles should not be equal")
	}

	// Test with zero value of struct
	type Empty struct{}
	e1 := unique.Make(Empty{})
	e2 := unique.Make(Empty{})

	if e1 != e2 {
		t.Error("Make(Empty{}) handles should be equal")
	}
}

func TestComplexStruct(t *testing.T) {
	type Address struct {
		Street string
		City   string
		Zip    int
	}

	type Person struct {
		Name    string
		Age     int
		Address Address
	}

	p1 := Person{
		Name: "Bob",
		Age:  25,
		Address: Address{
			Street: "Main St",
			City:   "NYC",
			Zip:    10001,
		},
	}

	p2 := Person{
		Name: "Bob",
		Age:  25,
		Address: Address{
			Street: "Main St",
			City:   "NYC",
			Zip:    10001,
		},
	}

	p3 := Person{
		Name: "Bob",
		Age:  25,
		Address: Address{
			Street: "Main St",
			City:   "NYC",
			Zip:    10002,
		},
	}

	h1 := unique.Make(p1)
	h2 := unique.Make(p2)
	h3 := unique.Make(p3)

	if h1 != h2 {
		t.Error("Handles for identical complex structs should be equal")
	}
	if h1 == h3 {
		t.Error("Handles for different complex structs should not be equal")
	}
}

func TestHandleInMap(t *testing.T) {
	m := make(map[unique.Handle[string]]int)

	h1 := unique.Make("key1")
	h2 := unique.Make("key2")
	h3 := unique.Make("key1") // Same as h1

	m[h1] = 100
	m[h2] = 200

	if m[h3] != 100 {
		t.Errorf("m[h3] = %d, want 100 (h3 should be same as h1)", m[h3])
	}

	if len(m) != 2 {
		t.Errorf("map length = %d, want 2", len(m))
	}
}

func TestHandleInSlice(t *testing.T) {
	handles := []unique.Handle[int]{
		unique.Make(1),
		unique.Make(2),
		unique.Make(3),
		unique.Make(1), // Duplicate
	}

	if handles[0] != handles[3] {
		t.Error("Handles at index 0 and 3 should be equal")
	}
	if handles[0] == handles[1] {
		t.Error("Handles at index 0 and 1 should not be equal")
	}
}

func TestLargeString(t *testing.T) {
	large := ""
	for i := 0; i < 1000; i++ {
		large += "a"
	}

	h1 := unique.Make(large)
	h2 := unique.Make(large)

	if h1 != h2 {
		t.Error("Handles for large identical strings should be equal")
	}

	if h1.Value() != large {
		t.Error("Value() should return the original large string")
	}
}

func TestPointerInStruct(t *testing.T) {
	type Node struct {
		Value int
		// Note: We can't include pointer fields in comparable types
		// This test uses only comparable fields
	}

	n1 := Node{Value: 10}
	n2 := Node{Value: 10}
	n3 := Node{Value: 20}

	h1 := unique.Make(n1)
	h2 := unique.Make(n2)
	h3 := unique.Make(n3)

	if h1 != h2 {
		t.Error("Handles for equal nodes should be equal")
	}
	if h1 == h3 {
		t.Error("Handles for different nodes should not be equal")
	}
}

func TestByteArray(t *testing.T) {
	a1 := unique.Make([4]byte{1, 2, 3, 4})
	a2 := unique.Make([4]byte{1, 2, 3, 4})
	a3 := unique.Make([4]byte{1, 2, 3, 5})

	if a1 != a2 {
		t.Error("Handles for equal byte arrays should be equal")
	}
	if a1 == a3 {
		t.Error("Handles for different byte arrays should not be equal")
	}
}

func TestRune(t *testing.T) {
	h1 := unique.Make('a')
	h2 := unique.Make('a')
	h3 := unique.Make('b')

	if h1 != h2 {
		t.Error("Handles for equal runes should be equal")
	}
	if h1 == h3 {
		t.Error("Handles for different runes should not be equal")
	}

	if h1.Value() != 'a' {
		t.Errorf("Value() = %c, want 'a'", h1.Value())
	}
}

func TestUnicode(t *testing.T) {
	h1 := unique.Make("Hello, 世界")
	h2 := unique.Make("Hello, 世界")
	h3 := unique.Make("Hello, World")

	if h1 != h2 {
		t.Error("Handles for equal unicode strings should be equal")
	}
	if h1 == h3 {
		t.Error("Handles for different strings should not be equal")
	}

	if h1.Value() != "Hello, 世界" {
		t.Errorf("Value() = %q, want %q", h1.Value(), "Hello, 世界")
	}
}

func TestComplex64(t *testing.T) {
	c1 := unique.Make(complex(1.0, 2.0))
	c2 := unique.Make(complex(1.0, 2.0))
	c3 := unique.Make(complex(1.0, 3.0))

	if c1 != c2 {
		t.Error("Handles for equal complex numbers should be equal")
	}
	if c1 == c3 {
		t.Error("Handles for different complex numbers should not be equal")
	}
}

func TestComplex128(t *testing.T) {
	c1 := unique.Make(complex128(complex(1.0, 2.0)))
	c2 := unique.Make(complex128(complex(1.0, 2.0)))
	c3 := unique.Make(complex128(complex(1.0, 3.0)))

	if c1 != c2 {
		t.Error("Handles for equal complex128 numbers should be equal")
	}
	if c1 == c3 {
		t.Error("Handles for different complex128 numbers should not be equal")
	}
}

func TestUintTypes(t *testing.T) {
	// uint
	u1 := unique.Make(uint(42))
	u2 := unique.Make(uint(42))
	if u1 != u2 {
		t.Error("Handles for equal uint should be equal")
	}

	// uint8
	u8_1 := unique.Make(uint8(255))
	u8_2 := unique.Make(uint8(255))
	if u8_1 != u8_2 {
		t.Error("Handles for equal uint8 should be equal")
	}

	// uint16
	u16_1 := unique.Make(uint16(65535))
	u16_2 := unique.Make(uint16(65535))
	if u16_1 != u16_2 {
		t.Error("Handles for equal uint16 should be equal")
	}

	// uint32
	u32_1 := unique.Make(uint32(4294967295))
	u32_2 := unique.Make(uint32(4294967295))
	if u32_1 != u32_2 {
		t.Error("Handles for equal uint32 should be equal")
	}

	// uint64
	u64_1 := unique.Make(uint64(18446744073709551615))
	u64_2 := unique.Make(uint64(18446744073709551615))
	if u64_1 != u64_2 {
		t.Error("Handles for equal uint64 should be equal")
	}

	// uintptr
	up1 := unique.Make(uintptr(0x1234))
	up2 := unique.Make(uintptr(0x1234))
	if up1 != up2 {
		t.Error("Handles for equal uintptr should be equal")
	}
}

func TestIntTypes(t *testing.T) {
	// int8
	i8_1 := unique.Make(int8(-128))
	i8_2 := unique.Make(int8(-128))
	if i8_1 != i8_2 {
		t.Error("Handles for equal int8 should be equal")
	}

	// int16
	i16_1 := unique.Make(int16(-32768))
	i16_2 := unique.Make(int16(-32768))
	if i16_1 != i16_2 {
		t.Error("Handles for equal int16 should be equal")
	}

	// int32
	i32_1 := unique.Make(int32(-2147483648))
	i32_2 := unique.Make(int32(-2147483648))
	if i32_1 != i32_2 {
		t.Error("Handles for equal int32 should be equal")
	}

	// int64
	i64_1 := unique.Make(int64(-9223372036854775808))
	i64_2 := unique.Make(int64(-9223372036854775808))
	if i64_1 != i64_2 {
		t.Error("Handles for equal int64 should be equal")
	}
}

func TestFloat32(t *testing.T) {
	f1 := unique.Make(float32(3.14))
	f2 := unique.Make(float32(3.14))
	f3 := unique.Make(float32(2.71))

	if f1 != f2 {
		t.Error("Handles for equal float32 should be equal")
	}
	if f1 == f3 {
		t.Error("Handles for different float32 should not be equal")
	}
}

func TestNestedStructs(t *testing.T) {
	type Inner struct {
		A int
		B string
	}
	type Outer struct {
		X     Inner
		Y     int
		Z     [2]int
		Empty struct{}
	}

	o1 := Outer{
		X:     Inner{A: 1, B: "test"},
		Y:     2,
		Z:     [2]int{3, 4},
		Empty: struct{}{},
	}

	o2 := Outer{
		X:     Inner{A: 1, B: "test"},
		Y:     2,
		Z:     [2]int{3, 4},
		Empty: struct{}{},
	}

	o3 := Outer{
		X:     Inner{A: 1, B: "test"},
		Y:     99, // Different
		Z:     [2]int{3, 4},
		Empty: struct{}{},
	}

	h1 := unique.Make(o1)
	h2 := unique.Make(o2)
	h3 := unique.Make(o3)

	if h1 != h2 {
		t.Error("Handles for equal nested structs should be equal")
	}
	if h1 == h3 {
		t.Error("Handles for different nested structs should not be equal")
	}
}

func TestConsistentHashing(t *testing.T) {
	// Create many handles and verify consistency
	const iterations = 100
	values := []int{1, 2, 3, 4, 5}

	for _, v := range values {
		var handles []unique.Handle[int]
		for i := 0; i < iterations; i++ {
			handles = append(handles, unique.Make(v))
		}

		// All handles for the same value should be equal
		for i := 1; i < len(handles); i++ {
			if handles[0] != handles[i] {
				t.Errorf("Inconsistent handles for value %d at iteration %d", v, i)
			}
		}
	}
}
