package math_test

import (
	"math"
	"testing"
)

var (
	floatSink float64
	intSink   int
)

func BenchmarkSin(b *testing.B) {
	x := 0.1
	var sum float64
	for i := 0; i < b.N; i++ {
		sum += math.Sin(x)
		x += 0.0001
		if x > 1.0 {
			x = 0.1
		}
	}
	floatSink = sum
}

func BenchmarkCos(b *testing.B) {
	x := 0.2
	var sum float64
	for i := 0; i < b.N; i++ {
		sum += math.Cos(x)
		x += 0.0001
		if x > 1.0 {
			x = 0.2
		}
	}
	floatSink = sum
}

func BenchmarkTan(b *testing.B) {
	x := 0.3
	var sum float64
	for i := 0; i < b.N; i++ {
		sum += math.Tan(x)
		x += 0.0001
		if x > 1.2 {
			x = 0.3
		}
	}
	floatSink = sum
}

func BenchmarkSqrt(b *testing.B) {
	x := 2.0
	var sum float64
	for i := 0; i < b.N; i++ {
		sum += math.Sqrt(x)
		x += 0.001
		if x > 4.0 {
			x = 2.0
		}
	}
	floatSink = sum
}

func BenchmarkExp(b *testing.B) {
	x := 0.5
	var sum float64
	for i := 0; i < b.N; i++ {
		sum += math.Exp(x)
		x += 0.0002
		if x > 1.5 {
			x = 0.5
		}
	}
	floatSink = sum
}

func BenchmarkLog(b *testing.B) {
	x := 2.0
	var sum float64
	for i := 0; i < b.N; i++ {
		sum += math.Log(x)
		x += 0.001
		if x > 3.0 {
			x = 2.0
		}
	}
	floatSink = sum
}

func BenchmarkPow(b *testing.B) {
	x, y := 1.5, 2.5
	var sum float64
	for i := 0; i < b.N; i++ {
		sum += math.Pow(x, y)
		x += 0.001
		y += 0.001
		if x > 3.0 {
			x = 1.5
		}
		if y > 3.5 {
			y = 2.5
		}
	}
	floatSink = sum
}

func BenchmarkAbs(b *testing.B) {
	x := -1.5
	var sum float64
	for i := 0; i < b.N; i++ {
		sum += math.Abs(x)
		x -= 0.001
		if x < -3.0 {
			x = -1.5
		}
	}
	floatSink = sum
}

func BenchmarkMod(b *testing.B) {
	x, y := 10.0, 3.0
	var sum float64
	for i := 0; i < b.N; i++ {
		sum += math.Mod(x, y)
		x += 0.5
		y += 0.1
		if x > 20.0 {
			x = 10.0
		}
		if y > 5.0 {
			y = 3.0
		}
	}
	floatSink = sum
}

func BenchmarkFrexp(b *testing.B) {
	x := 8.0
	var sum float64
	var expSum int
	for i := 0; i < b.N; i++ {
		f, exp := math.Frexp(x)
		sum += f
		expSum += exp
		x += 0.5
		if x > 32.0 {
			x = 8.0
		}
	}
	floatSink = sum
	intSink = expSum
}
