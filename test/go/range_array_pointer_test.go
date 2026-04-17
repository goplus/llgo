package gotest

import "testing"

type rangeArrayPointerHolder struct {
	data *[3]int
}

func TestRangeOverNilArrayPointerUsesLength(t *testing.T) {
	var p *[3]int

	sum := 0
	for i := range *p {
		sum += i
	}
	if sum != 3 {
		t.Fatalf("range over nil *array sum = %d, want 3", sum)
	}
}

func TestRangeOverNilArrayPointerFieldUsesLength(t *testing.T) {
	var holder *rangeArrayPointerHolder

	sum := 0
	for i := range *holder.data {
		sum += i
	}
	if sum != 3 {
		t.Fatalf("range over nil *array field sum = %d, want 3", sum)
	}
}
