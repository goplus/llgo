package reflect_test

import (
	"reflect"
	"testing"
)

func TestPointerTo(t *testing.T) {
	got := reflect.PointerTo(reflect.TypeOf((*int)(nil)))
	want := reflect.TypeOf((**int)(nil))
	if got != want {
		t.Fatalf("PointerTo(*int) = %v, want %v", got, want)
	}
}

func TestAddrOnPointerField(t *testing.T) {
	type S struct{ N *int }
	v := reflect.ValueOf(&S{}).Elem().Field(0).Addr().Type()
	want := reflect.TypeOf((**int)(nil))
	if v != want {
		t.Fatalf("Addr().Type() = %v, want %v", v, want)
	}
}
