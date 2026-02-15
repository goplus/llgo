package bits_test

import (
	"math/bits"
	"testing"
)

func BenchmarkOnesCount64(b *testing.B) {
	var total int
	for i := 0; i < b.N; i++ {
		total += bits.OnesCount64(uint64(i))
	}
	if total == 0 {
		b.Fatalf("unexpected zero total")
	}
}

func BenchmarkRotateLeft64(b *testing.B) {
	var acc uint64 = 0x123456789ABCDEF0
	for i := 0; i < b.N; i++ {
		acc = bits.RotateLeft64(acc, 13)
	}
	if acc == 0 {
		b.Fatalf("rotate produced zero")
	}
}

func BenchmarkDiv64(b *testing.B) {
	var sum uint64
	for i := 0; i < b.N; i++ {
		q, r := bits.Div64(1, uint64(i)+12345, 37)
		sum += q + r
	}
	if sum == 0 {
		b.Fatalf("sum should be non-zero")
	}
}
