package gotest

import "testing"

type nilPointerInterfaceLarge [1 << 21]byte

var nilPointerInterfaceSink any

func TestNilPointerLargeValueToInterfacePanics(t *testing.T) {
	defer func() {
		if recover() == nil {
			t.Fatal("expected nil pointer dereference panic")
		}
	}()
	var p *nilPointerInterfaceLarge
	nilPointerInterfaceSink = *p
}
