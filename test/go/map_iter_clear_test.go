package gotest

import "testing"

func mapIterClearNaN() float64 {
	var x, y float64
	return x / y
}

func TestMapIterClearAfterGrowStops(t *testing.T) {
	m := map[float64]int{}
	for i := 0; i < 8; i++ {
		m[mapIterClearNaN()] = i
	}

	start := true
	for _, v := range m {
		if start {
			for i := 0; i < 10; i++ {
				m[float64(i)] = i
			}
			clear(m)
			start = false
			continue
		}
		t.Fatalf("map iteration continued after clear; unexpected value %d", v)
	}
}
