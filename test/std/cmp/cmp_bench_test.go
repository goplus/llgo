package cmp_test

import (
	"cmp"
	"testing"
)

func BenchmarkCompareInt(b *testing.B) {
	var x int
	for i := 0; i < b.N; i++ {
		x += cmp.Compare(i, i+1)
	}
	b.StopTimer()
	if x == 0 { // keep result alive
		b.Fatalf("unexpected zero result")
	}
}

func BenchmarkLessString(b *testing.B) {
	words := []string{"alpha", "beta", "gamma"}
	var count int
	for i := 0; i < b.N; i++ {
		if cmp.Less(words[i%len(words)], words[(i+1)%len(words)]) {
			count++
		}
	}
	b.StopTimer()
	if count == 0 {
		b.Fatalf("compare count should be positive")
	}
}

func BenchmarkOrInt(b *testing.B) {
	var result int
	for i := 0; i < b.N; i++ {
		result = cmp.Or[int](0, 0, i)
	}
	b.StopTimer()
	if result == 0 {
		b.Fatalf("result should not be zero")
	}
}
