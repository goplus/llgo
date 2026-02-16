package reflect_test

import (
	"reflect"
	"testing"
)

// Test basic TypeOf and ValueOf
func TestBasicTypeAndValue(t *testing.T) {
	// Test TypeOf
	var i int = 42
	typ := reflect.TypeOf(i)
	if typ == nil {
		t.Fatal("TypeOf returned nil")
	}
	if typ.Kind() != reflect.Int {
		t.Errorf("Kind should be Int, got %v", typ.Kind())
	}

	// Test ValueOf
	val := reflect.ValueOf(i)
	if !val.IsValid() {
		t.Fatal("ValueOf returned invalid value")
	}
	if val.Kind() != reflect.Int {
		t.Errorf("Value Kind should be Int, got %v", val.Kind())
	}
	if val.Int() != 42 {
		t.Errorf("Value should be 42, got %d", val.Int())
	}
}

// Test Kind constants
func TestKindConstants(t *testing.T) {
	kinds := []reflect.Kind{
		reflect.Invalid,
		reflect.Bool,
		reflect.Int,
		reflect.Int8,
		reflect.Int16,
		reflect.Int32,
		reflect.Int64,
		reflect.Uint,
		reflect.Uint8,
		reflect.Uint16,
		reflect.Uint32,
		reflect.Uint64,
		reflect.Uintptr,
		reflect.Float32,
		reflect.Float64,
		reflect.Complex64,
		reflect.Complex128,
		reflect.Array,
		reflect.Chan,
		reflect.Func,
		reflect.Interface,
		reflect.Map,
		reflect.Pointer,
		reflect.Slice,
		reflect.String,
		reflect.Struct,
		reflect.UnsafePointer,
	}

	for _, k := range kinds {
		_ = k.String()
	}
}

// Test DeepEqual
func TestDeepEqual(t *testing.T) {
	// Test with basic types
	if !reflect.DeepEqual(42, 42) {
		t.Error("DeepEqual should be true for equal ints")
	}
	if reflect.DeepEqual(42, 43) {
		t.Error("DeepEqual should be false for different ints")
	}

	// Test with slices
	s1 := []int{1, 2, 3}
	s2 := []int{1, 2, 3}
	s3 := []int{1, 2, 4}
	if !reflect.DeepEqual(s1, s2) {
		t.Error("DeepEqual should be true for equal slices")
	}
	if reflect.DeepEqual(s1, s3) {
		t.Error("DeepEqual should be false for different slices")
	}

	// Test with maps
	m1 := map[string]int{"a": 1, "b": 2}
	m2 := map[string]int{"a": 1, "b": 2}
	m3 := map[string]int{"a": 1, "b": 3}
	if !reflect.DeepEqual(m1, m2) {
		t.Error("DeepEqual should be true for equal maps")
	}
	if reflect.DeepEqual(m1, m3) {
		t.Error("DeepEqual should be false for different maps")
	}
}

// Test TypeOf with nil
func TestTypeOfNil(t *testing.T) {
	typ := reflect.TypeOf(nil)
	if typ != nil {
		t.Error("TypeOf(nil) should return nil")
	}
}

// Test Zero
func TestZero(t *testing.T) {
	intType := reflect.TypeOf(0)
	zeroVal := reflect.Zero(intType)
	if !zeroVal.IsValid() {
		t.Fatal("Zero returned invalid value")
	}
	if zeroVal.Int() != 0 {
		t.Errorf("Zero int should be 0, got %d", zeroVal.Int())
	}
}

// Test Swapper
func TestSwapper(t *testing.T) {
	s := []int{1, 2, 3, 4, 5}
	swap := reflect.Swapper(s)

	swap(0, 4)
	if s[0] != 5 || s[4] != 1 {
		t.Errorf("After swap, expected [5,2,3,4,1], got %v", s)
	}
}

// Test Copy
func TestCopy(t *testing.T) {
	src := []int{1, 2, 3, 4, 5}
	dst := make([]int, 3)

	srcVal := reflect.ValueOf(src)
	dstVal := reflect.ValueOf(dst)

	n := reflect.Copy(dstVal, srcVal)
	if n != 3 {
		t.Errorf("Copy should return 3, got %d", n)
	}
	if dst[0] != 1 || dst[1] != 2 || dst[2] != 3 {
		t.Errorf("After copy, expected [1,2,3], got %v", dst)
	}
}

// Test ChanDir constants and String
func TestChanDir(t *testing.T) {
	_ = reflect.RecvDir
	_ = reflect.SendDir
	_ = reflect.BothDir

	dir := reflect.BothDir
	_ = dir.String()
}

// Test Ptr constant
func TestPtrConstant(t *testing.T) {
	if reflect.Ptr != reflect.Pointer {
		t.Error("Ptr should equal Pointer")
	}
}

// Test SelectCase and SelectDir
func TestSelectCaseDir(t *testing.T) {
	_ = reflect.SelectSend
	_ = reflect.SelectRecv
	_ = reflect.SelectDefault

	ch := make(chan int)
	sc := reflect.SelectCase{
		Dir:  reflect.SelectRecv,
		Chan: reflect.ValueOf(ch),
	}
	_ = sc
}

// Test SelectDir type and constants
func TestSelectDir(t *testing.T) {
	var sd reflect.SelectDir
	sd = reflect.SelectSend
	if sd != reflect.SelectSend {
		t.Error("SelectDir assignment failed")
	}
}

// Test SliceHeader and StringHeader
func TestSliceAndStringHeader(t *testing.T) {
	var sh reflect.SliceHeader
	sh.Data = 0
	sh.Len = 0
	sh.Cap = 0

	var strh reflect.StringHeader
	strh.Data = 0
	strh.Len = 0
}

// Test Foo (if exists - may be internal/test-only)
func TestFoo(t *testing.T) {
	// Foo may not exist in all Go versions
	// Just ensure this test compiles
	defer func() {
		recover() // In case Foo doesn't exist
	}()
	// Intentionally empty - Foo doesn't exist in standard reflect
}
