package gotest

import "testing"

type nilAssertInterface interface {
	M()
}

type nilAssertImpl struct{}

func (*nilAssertImpl) M() {}

func nilAssertValue(ok bool) nilAssertInterface {
	if ok {
		return &nilAssertImpl{}
	}
	return nil
}

func TestNilInterfaceSameTypeAssert(t *testing.T) {
	x := nilAssertValue(false)
	if _, ok := x.(nilAssertInterface); ok {
		t.Fatal("nil interface asserted to the same interface type")
	}

	x = nilAssertValue(true)
	if _, ok := x.(nilAssertInterface); !ok {
		t.Fatal("non-nil interface rejected by same interface assertion")
	}
}
