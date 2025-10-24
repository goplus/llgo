package randv2_test

import (
	"math/rand/v2"
	"testing"
)

func BenchmarkRandFloat64(b *testing.B) {
	r := rand.New(rand.NewPCG(1, 2))
	for i := 0; i < b.N; i++ {
		_ = r.Float64()
	}
}

func BenchmarkUint64(b *testing.B) {
	for i := 0; i < b.N; i++ {
		_ = rand.Uint64()
	}
}
