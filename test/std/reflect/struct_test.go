package reflect_test

import (
	"reflect"
	"testing"
)

// Test struct field operations
func TestStructFieldOperations(t *testing.T) {
	type Person struct {
		Name string
		Age  int
	}

	p := Person{Name: "Alice", Age: 30}
	v := reflect.ValueOf(p)

	// Test NumField
	if v.NumField() != 2 {
		t.Errorf("NumField should be 2, got %d", v.NumField())
	}

	// Test Field
	nameField := v.Field(0)
	if nameField.String() != "Alice" {
		t.Errorf("Field(0) should be 'Alice', got %q", nameField.String())
	}

	// Test FieldByName
	ageField := v.FieldByName("Age")
	if !ageField.IsValid() {
		t.Fatal("FieldByName('Age') should be valid")
	}
	if ageField.Int() != 30 {
		t.Errorf("FieldByName('Age') should be 30, got %d", ageField.Int())
	}
}

// Test Type methods
func TestTypeMethods(t *testing.T) {
	type Person struct {
		Name string
		Age  int
	}

	typ := reflect.TypeOf(Person{})

	// Test NumField
	if typ.NumField() != 2 {
		t.Errorf("Type.NumField should be 2, got %d", typ.NumField())
	}

	// Test Field
	field := typ.Field(0)
	if field.Name != "Name" {
		t.Errorf("Field(0).Name should be 'Name', got %q", field.Name)
	}

	// Test FieldByName
	field, ok := typ.FieldByName("Age")
	if !ok {
		t.Fatal("FieldByName('Age') should be found")
	}
	if field.Name != "Age" {
		t.Errorf("Field.Name should be 'Age', got %q", field.Name)
	}
}

// Test StructField and StructTag
func TestStructFieldAndTag(t *testing.T) {
	type Tagged struct {
		Field1 string `json:"field1" xml:"f1"`
		Field2 int    `json:"field2,omitempty"`
	}

	typ := reflect.TypeOf(Tagged{})
	field := typ.Field(0)

	// Test StructField
	if field.Name != "Field1" {
		t.Errorf("StructField.Name should be 'Field1', got %q", field.Name)
	}

	// Test StructTag.Get
	tag := field.Tag.Get("json")
	if tag != "field1" {
		t.Errorf("Tag.Get('json') should be 'field1', got %q", tag)
	}

	// Test StructTag.Lookup
	val, ok := field.Tag.Lookup("xml")
	if !ok {
		t.Fatal("Tag.Lookup('xml') should find tag")
	}
	if val != "f1" {
		t.Errorf("Tag.Lookup('xml') should be 'f1', got %q", val)
	}
}

// Test StructField.IsExported
func TestStructFieldIsExported(t *testing.T) {
	type T struct {
		Exported   int
		unexported int
	}

	typ := reflect.TypeOf(T{})

	field0 := typ.Field(0)
	if !field0.IsExported() {
		t.Error("Exported field should be exported")
	}

	field1 := typ.Field(1)
	if field1.IsExported() {
		t.Error("unexported field should not be exported")
	}
}

// Test Value.FieldByIndex
func TestValueFieldByIndex(t *testing.T) {
	type Inner struct {
		Value int
	}
	type Outer struct {
		Inner
	}

	o := Outer{Inner{42}}
	v := reflect.ValueOf(o)

	field := v.FieldByIndex([]int{0, 0})
	if field.Int() != 42 {
		t.Errorf("FieldByIndex should get 42, got %d", field.Int())
	}
}

// Test FieldByNameFunc
func TestValueFieldByNameFunc(t *testing.T) {
	type Person struct {
		FirstName string
		LastName  string
	}

	p := Person{FirstName: "John", LastName: "Doe"}
	v := reflect.ValueOf(p)

	field := v.FieldByNameFunc(func(name string) bool {
		return name == "LastName"
	})

	if !field.IsValid() {
		t.Fatal("FieldByNameFunc should find LastName")
	}
	if field.String() != "Doe" {
		t.Errorf("FieldByNameFunc should get 'Doe', got %q", field.String())
	}
}
