package maps_test

import (
	"iter"
	"maps"
	"testing"
)

func BenchmarkClone(b *testing.B) {
	base := make(map[int]int, 256)
	for i := 0; i < 256; i++ {
		base[i] = i + 1
	}

	b.ResetTimer()
	var sum int
	for i := 0; i < b.N; i++ {
		clone := maps.Clone(base)
		sum += len(clone)
	}
	if sum == 0 {
		b.Fatalf("unexpected zero sum")
	}
}

func BenchmarkEqual(b *testing.B) {
	a := make(map[int]int, 128)
	bMap := make(map[int]int, 128)
	for i := 0; i < 128; i++ {
		a[i] = i * 2
		bMap[i] = i * 2
	}

	b.ResetTimer()
	var last bool
	for i := 0; i < b.N; i++ {
		last = maps.Equal(a, bMap)
	}
	if !last {
		b.Fatalf("maps.Equal reported inequality")
	}
}

func BenchmarkInsert(b *testing.B) {
	seq := iter.Seq2[int, int](func(yield func(int, int) bool) {
		for i := 0; i < 64; i++ {
			if !yield(i, i*i) {
				return
			}
		}
	})

	b.ResetTimer()
	var total int
	for i := 0; i < b.N; i++ {
		m := make(map[int]int, 64)
		maps.Insert(m, seq)
		for _, v := range m {
			total += v
		}
	}
	if total == 0 {
		b.Fatalf("total should be non-zero")
	}
}
