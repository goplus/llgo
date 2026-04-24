package foo

import "testing"

func TestFooInternal(t *testing.T) {
	if Foo() != 1 {
		t.Fatal("Foo() != 1")
	}
}
