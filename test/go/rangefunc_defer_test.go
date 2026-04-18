package gotest

import (
	"reflect"
	"testing"
)

func rangefuncDeferYield4(yield func(int) bool) {
	_ = yield(1) && yield(2) && yield(3) && yield(4)
}

func TestRangeFuncDefersRunAfterOuterFunction(t *testing.T) {
	var saved []int
	save := func(v int) {
		saved = append(saved, v)
	}

	func() {
		defer save(-1)
		for i := range rangefuncDeferYield4 {
			defer save(i)
		}
		defer save(5)
	}()

	want := []int{5, 4, 3, 2, 1, -1}
	if !reflect.DeepEqual(saved, want) {
		t.Fatalf("defer order = %v, want %v", saved, want)
	}
}
