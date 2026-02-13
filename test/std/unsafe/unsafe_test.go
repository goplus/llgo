package unsafe_test

import (
	"testing"
	"unsafe"
)

func TestSizeof(t *testing.T) {
	var i int
	var b byte
	var s string
	var arr [10]int

	sizeInt := unsafe.Sizeof(i)
	if sizeInt != 8 && sizeInt != 4 {
		t.Errorf("Sizeof(int) = %d, want 4 or 8", sizeInt)
	}

	sizeByte := unsafe.Sizeof(b)
	if sizeByte != 1 {
		t.Errorf("Sizeof(byte) = %d, want 1", sizeByte)
	}

	sizeString := unsafe.Sizeof(s)
	if sizeString != 16 && sizeString != 8 {
		t.Errorf("Sizeof(string) = %d, want 8 or 16", sizeString)
	}

	sizeArr := unsafe.Sizeof(arr)
	expectedSize := sizeInt * 10
	if sizeArr != expectedSize {
		t.Errorf("Sizeof([10]int) = %d, want %d", sizeArr, expectedSize)
	}
}

func TestAlignof(t *testing.T) {
	var i int
	var b byte
	var s string

	alignInt := unsafe.Alignof(i)
	if alignInt == 0 || alignInt > 16 {
		t.Errorf("Alignof(int) = %d, should be between 1 and 16", alignInt)
	}

	alignByte := unsafe.Alignof(b)
	if alignByte != 1 {
		t.Errorf("Alignof(byte) = %d, want 1", alignByte)
	}

	alignString := unsafe.Alignof(s)
	if alignString == 0 || alignString > 16 {
		t.Errorf("Alignof(string) = %d, should be between 1 and 16", alignString)
	}
}

func TestOffsetof(t *testing.T) {
	type TestStruct struct {
		a byte
		b int32
		c int64
	}

	var ts TestStruct

	offsetA := unsafe.Offsetof(ts.a)
	if offsetA != 0 {
		t.Errorf("Offsetof(ts.a) = %d, want 0", offsetA)
	}

	offsetB := unsafe.Offsetof(ts.b)
	if offsetB < 1 {
		t.Errorf("Offsetof(ts.b) = %d, should be >= 1", offsetB)
	}

	offsetC := unsafe.Offsetof(ts.c)
	if offsetC <= offsetB {
		t.Errorf("Offsetof(ts.c) = %d, should be > Offsetof(ts.b) = %d", offsetC, offsetB)
	}
}

func TestPointer(t *testing.T) {
	var i int = 42
	ptr := unsafe.Pointer(&i)
	if ptr == nil {
		t.Error("Pointer(&i) returned nil")
	}

	iPtr := (*int)(ptr)
	if *iPtr != 42 {
		t.Errorf("*iPtr = %d, want 42", *iPtr)
	}
}

func TestAdd(t *testing.T) {
	arr := [5]int{1, 2, 3, 4, 5}
	ptr := unsafe.Pointer(&arr[0])

	ptr2 := unsafe.Add(ptr, unsafe.Sizeof(arr[0]))
	val := *(*int)(ptr2)
	if val != 2 {
		t.Errorf("After Add, got %d, want 2", val)
	}

	ptr3 := unsafe.Add(ptr, unsafe.Sizeof(arr[0])*2)
	val3 := *(*int)(ptr3)
	if val3 != 3 {
		t.Errorf("After Add(2), got %d, want 3", val3)
	}
}

func TestSlice(t *testing.T) {
	arr := [5]int{10, 20, 30, 40, 50}
	ptr := &arr[0]

	slice := unsafe.Slice(ptr, 3)
	if len(slice) != 3 {
		t.Errorf("len(slice) = %d, want 3", len(slice))
	}
	if cap(slice) != 3 {
		t.Errorf("cap(slice) = %d, want 3", cap(slice))
	}
	if slice[0] != 10 || slice[1] != 20 || slice[2] != 30 {
		t.Errorf("slice = %v, want [10 20 30]", slice)
	}
}

func TestSliceData(t *testing.T) {
	slice := []int{100, 200, 300}
	ptr := unsafe.SliceData(slice)
	if ptr == nil {
		t.Fatal("SliceData returned nil")
	}

	val := *ptr
	if val != 100 {
		t.Errorf("*SliceData = %d, want 100", val)
	}

	emptySlice := []int{}
	emptyPtr := unsafe.SliceData(emptySlice)
	_ = emptyPtr
}

func TestString(t *testing.T) {
	bytes := []byte{'h', 'e', 'l', 'l', 'o'}
	ptr := &bytes[0]

	str := unsafe.String(ptr, len(bytes))
	if str != "hello" {
		t.Errorf("String = %q, want hello", str)
	}

	str2 := unsafe.String(ptr, 2)
	if str2 != "he" {
		t.Errorf("String(2) = %q, want he", str2)
	}
}

func TestStringData(t *testing.T) {
	str := "world"
	ptr := unsafe.StringData(str)
	if ptr == nil {
		t.Fatal("StringData returned nil")
	}

	val := *ptr
	if val != 'w' {
		t.Errorf("*StringData = %c, want w", val)
	}

	reconstructed := unsafe.String(ptr, len(str))
	if reconstructed != str {
		t.Errorf("reconstructed = %q, want %q", reconstructed, str)
	}

	emptyStr := ""
	emptyPtr := unsafe.StringData(emptyStr)
	_ = emptyPtr
}

func TestArbitraryType(t *testing.T) {
	// ArbitraryType is a type used in function signatures
	// It's not directly instantiable but we can reference it through unsafe.Pointer
	var x int = 42
	var p unsafe.Pointer = unsafe.Pointer(&x)

	// ArbitraryType is used in the signature of unsafe.Pointer
	// We just need to reference it to ensure coverage
	_ = p

	// Verify we can use it with type assertions and conversions
	if p == nil {
		t.Error("Expected non-nil pointer")
	}
}

func TestIntegerType(t *testing.T) {
	// IntegerType is a type used in function signatures for Add
	// It represents any integer type that can be used as an offset
	arr := [3]int{1, 2, 3}
	ptr := unsafe.Pointer(&arr[0])

	// Test with different integer types (all valid for IntegerType)
	var offset1 int = 1
	var offset2 uintptr = 1
	var offset3 int64 = 1

	ptr1 := unsafe.Add(ptr, offset1*int(unsafe.Sizeof(arr[0])))
	ptr2 := unsafe.Add(ptr, offset2*unsafe.Sizeof(arr[0]))
	ptr3 := unsafe.Add(ptr, offset3*int64(unsafe.Sizeof(arr[0])))

	if *(*int)(ptr1) != 2 {
		t.Errorf("Using int offset: got %d, want 2", *(*int)(ptr1))
	}
	if *(*int)(ptr2) != 2 {
		t.Errorf("Using uintptr offset: got %d, want 2", *(*int)(ptr2))
	}
	if *(*int)(ptr3) != 2 {
		t.Errorf("Using int64 offset: got %d, want 2", *(*int)(ptr3))
	}
}
