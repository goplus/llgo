package gotest

import (
	"reflect"
	"testing"
)

type directIfaceInt int
type directIfacePtr *int
type directIfaceStruct struct {
	p *int
}

func TestDirectInterfaceABIDecoding(t *testing.T) {
	x := 42
	cases := []struct {
		name string
		in   any
		want any
	}{
		{"int", directIfaceInt(7), directIfaceInt(7)},
		{"named pointer", directIfacePtr(&x), directIfacePtr(&x)},
		{"single pointer field struct", directIfaceStruct{&x}, directIfaceStruct{&x}},
	}
	for _, tt := range cases {
		got := reflect.ValueOf(tt.in).Interface()
		if !reflect.DeepEqual(got, tt.want) {
			t.Fatalf("%s: got %#v, want %#v", tt.name, got, tt.want)
		}
	}
}

type directIfaceFields struct {
	F float32
	G float32
	S string
	T string
	U uint32
	V uint32
	W uint32
	X uint32
}

func TestReflectFieldInterfaceScalarComparison(t *testing.T) {
	x := directIfaceFields{
		F: 1,
		G: 1,
		S: "abc",
		T: "abc",
		U: 1,
		V: 2,
		W: 1 << 28,
		X: 2 << 28,
	}
	v := reflect.ValueOf(x)
	if v.Field(0).Interface() != v.Field(1).Interface() {
		t.Fatal("equal float32 fields compared unequal")
	}
	if v.Field(2).Interface() != v.Field(3).Interface() {
		t.Fatal("equal string fields compared unequal")
	}
	if v.Field(4).Interface() == v.Field(5).Interface() {
		t.Fatal("different uint32 fields compared equal")
	}
	if v.Field(6).Interface() == v.Field(7).Interface() {
		t.Fatal("different high-bit uint32 fields compared equal")
	}
}
