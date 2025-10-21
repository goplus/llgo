package math_test

import (
	"math"
	"testing"
)

func BenchmarkSin(b *testing.B) {
	x := 0.5
	for i := 0; i < b.N; i++ {
		math.Sin(x)
	}
}

func BenchmarkCos(b *testing.B) {
	x := 0.5
	for i := 0; i < b.N; i++ {
		math.Cos(x)
	}
}

func BenchmarkTan(b *testing.B) {
	x := 0.5
	for i := 0; i < b.N; i++ {
		math.Tan(x)
	}
}

func BenchmarkSqrt(b *testing.B) {
	x := 2.0
	for i := 0; i < b.N; i++ {
		math.Sqrt(x)
	}
}

func BenchmarkExp(b *testing.B) {
	x := 1.0
	for i := 0; i < b.N; i++ {
		math.Exp(x)
	}
}

func BenchmarkLog(b *testing.B) {
	x := 2.0
	for i := 0; i < b.N; i++ {
		math.Log(x)
	}
}

func BenchmarkPow(b *testing.B) {
	x, y := 2.0, 3.0
	for i := 0; i < b.N; i++ {
		math.Pow(x, y)
	}
}

func BenchmarkAbs(b *testing.B) {
	x := -1.5
	for i := 0; i < b.N; i++ {
		math.Abs(x)
	}
}

func BenchmarkMod(b *testing.B) {
	x, y := 10.0, 3.0
	for i := 0; i < b.N; i++ {
		math.Mod(x, y)
	}
}

func BenchmarkFrexp(b *testing.B) {
	x := 8.0
	for i := 0; i < b.N; i++ {
		math.Frexp(x)
	}
}
