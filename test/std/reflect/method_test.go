//go:build !llgo

package reflect_test

import (
	"reflect"
	"testing"
)

// Type for testing method operations
type MyInt int

func (m MyInt) Double() int {
	return int(m) * 2
}

// Type for TestMethodStruct
type MyIntStringer int

func (m MyIntStringer) String() string { return "myint" }

// Test method operations
func TestMethodOperations(t *testing.T) {
	var mi MyInt = 21
	typ := reflect.TypeOf(mi)

	// Test NumMethod
	if typ.NumMethod() != 1 {
		t.Errorf("NumMethod should be 1, got %d", typ.NumMethod())
	}

	// Test Method
	method := typ.Method(0)
	if method.Name != "Double" {
		t.Errorf("Method(0).Name should be 'Double', got %q", method.Name)
	}

	// Test MethodByName
	method, ok := typ.MethodByName("Double")
	if !ok {
		t.Fatal("MethodByName('Double') should be found")
	}
	if method.Name != "Double" {
		t.Errorf("Method.Name should be 'Double', got %q", method.Name)
	}
}

// Test Value.Method and Call
func TestValueMethodAndCall(t *testing.T) {
	var mi MyInt = 21
	v := reflect.ValueOf(mi)

	// Test NumMethod
	if v.NumMethod() != 1 {
		t.Errorf("Value.NumMethod should be 1, got %d", v.NumMethod())
	}

	// Test Method
	method := v.Method(0)
	if !method.IsValid() {
		t.Fatal("Value.Method(0) should be valid")
	}

	// Test Call
	results := method.Call(nil)
	if len(results) != 1 {
		t.Fatalf("Call should return 1 result, got %d", len(results))
	}
	if results[0].Int() != 42 {
		t.Errorf("Call result should be 42, got %d", results[0].Int())
	}

	// Test MethodByName
	method = v.MethodByName("Double")
	if !method.IsValid() {
		t.Fatal("MethodByName('Double') should be valid")
	}
}

// Test Value.CallSlice
func TestValueCallSlice(t *testing.T) {
	fn := func(args ...int) int {
		sum := 0
		for _, arg := range args {
			sum += arg
		}
		return sum
	}

	v := reflect.ValueOf(fn)
	args := []reflect.Value{
		reflect.ValueOf([]int{1, 2, 3}),
	}

	results := v.CallSlice(args)
	if len(results) != 1 {
		t.Fatalf("CallSlice should return 1 result, got %d", len(results))
	}
	if results[0].Int() != 6 {
		t.Errorf("CallSlice result should be 6, got %d", results[0].Int())
	}
}

// Test Method struct
func TestMethodStruct(t *testing.T) {
	typ := reflect.TypeOf(MyIntStringer(0))
	method := typ.Method(0)

	_ = method.Name
	_ = method.Type
	_ = method.Func

	// Test IsExported
	if !method.IsExported() {
		t.Error("String method should be exported")
	}
}
