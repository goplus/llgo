package test

import "testing"

func ifaceMultiResultSlice(x []int) ([]int, []int) {
	return x, x
}

func ifaceMultiResultStringPair(x string) (string, string) {
	return x, x
}

func TestInterfaceConversionFromMultiResultSlice(t *testing.T) {
	s := []int{1}
	x, _ := ifaceMultiResultSlice(s)
	var h any = x
	got := h.([]int)
	if len(got) != 1 || got[0] != 1 {
		t.Fatalf("unexpected slice in interface: %#v", got)
	}
}

func TestInterfaceConversionFromMultiResultString(t *testing.T) {
	x, _ := ifaceMultiResultStringPair("hello")
	var h any = x
	got := h.(string)
	if got != "hello" {
		t.Fatalf("unexpected string in interface: %q", got)
	}
}
