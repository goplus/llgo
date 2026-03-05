package cmplx_test

import (
	"math"
	"math/cmplx"
	"testing"
)

func closeComplex(a, b complex128, eps float64) bool {
	return cmplx.Abs(a-b) <= eps
}

func closeFloat(a, b, eps float64) bool {
	return math.Abs(a-b) <= eps
}

func TestBasicFunctionsAndInverses(t *testing.T) {
	z := complex(1.25, -0.75)
	eps := 1e-10

	if got := cmplx.Abs(z); got <= 0 {
		t.Fatalf("Abs(%v) = %v, want > 0", z, got)
	}
	if got := cmplx.Conj(z); got != complex(real(z), -imag(z)) {
		t.Fatalf("Conj(%v) = %v, want %v", z, got, complex(real(z), -imag(z)))
	}
	if got := cmplx.Phase(z); !closeFloat(got, math.Atan2(imag(z), real(z)), eps) {
		t.Fatalf("Phase(%v) = %v, want %v", z, got, math.Atan2(imag(z), real(z)))
	}

	r, theta := cmplx.Polar(z)
	if got := cmplx.Rect(r, theta); !closeComplex(got, z, eps) {
		t.Fatalf("Rect(Polar(%v)) = %v, want %v", z, got, z)
	}

	if got := cmplx.Sin(cmplx.Asin(z)); !closeComplex(got, z, eps) {
		t.Fatalf("Sin(Asin(%v)) = %v, want %v", z, got, z)
	}
	if got := cmplx.Cos(cmplx.Acos(z)); !closeComplex(got, z, eps) {
		t.Fatalf("Cos(Acos(%v)) = %v, want %v", z, got, z)
	}
	if got := cmplx.Tan(cmplx.Atan(z)); !closeComplex(got, z, eps) {
		t.Fatalf("Tan(Atan(%v)) = %v, want %v", z, got, z)
	}

	w := complex(0.3, -0.2)
	if got := cmplx.Sinh(cmplx.Asinh(w)); !closeComplex(got, w, eps) {
		t.Fatalf("Sinh(Asinh(%v)) = %v, want %v", w, got, w)
	}
	if got := cmplx.Cosh(cmplx.Acosh(2 + w)); !closeComplex(got, 2+w, eps) {
		t.Fatalf("Cosh(Acosh(%v)) = %v, want %v", 2+w, got, 2+w)
	}
	if got := cmplx.Tanh(cmplx.Atanh(w)); !closeComplex(got, w, eps) {
		t.Fatalf("Tanh(Atanh(%v)) = %v, want %v", w, got, w)
	}

	if got := cmplx.Cot(z); !closeComplex(got, 1/cmplx.Tan(z), eps) {
		t.Fatalf("Cot(%v) = %v, want %v", z, got, 1/cmplx.Tan(z))
	}
}

func TestExpLogPowSqrt(t *testing.T) {
	z := complex(1.2, 0.6)
	eps := 1e-10

	if got := cmplx.Exp(cmplx.Log(z)); !closeComplex(got, z, eps) {
		t.Fatalf("Exp(Log(%v)) = %v, want %v", z, got, z)
	}
	if got := cmplx.Log10(z); !closeComplex(got, cmplx.Log(z)/complex(math.Ln10, 0), eps) {
		t.Fatalf("Log10(%v) = %v, want %v", z, got, cmplx.Log(z)/complex(math.Ln10, 0))
	}
	if got := cmplx.Pow(z, 1); !closeComplex(got, z, eps) {
		t.Fatalf("Pow(%v, 1) = %v, want %v", z, got, z)
	}
	if got := cmplx.Pow(z, 0); !closeComplex(got, 1, eps) {
		t.Fatalf("Pow(%v, 0) = %v, want 1", z, got)
	}

	root := cmplx.Sqrt(z)
	if got := root * root; !closeComplex(got, z, eps) {
		t.Fatalf("Sqrt(%v)^2 = %v, want %v", z, got, z)
	}
}

func TestInfAndNaN(t *testing.T) {
	inf := cmplx.Inf()
	if !cmplx.IsInf(inf) {
		t.Fatalf("IsInf(Inf()) = false, want true")
	}
	if cmplx.IsNaN(inf) {
		t.Fatalf("IsNaN(Inf()) = true, want false")
	}

	nan := cmplx.NaN()
	if !cmplx.IsNaN(nan) {
		t.Fatalf("IsNaN(NaN()) = false, want true")
	}
}
