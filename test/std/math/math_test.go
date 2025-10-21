package math_test

import (
	"math"
	"testing"

	"github.com/goplus/llgo/test/std/common"
)

const tolerance = 1e-10

func TestSin(t *testing.T) {
	testCases := []struct {
		input    float64
		expected float64
	}{
		{0, 0},
		{math.Pi / 2, 1},
		{math.Pi, 0},
		{-math.Pi / 2, -1},
		{math.Pi / 6, 0.5},
	}

	for _, tc := range testCases {
		result := math.Sin(tc.input)
		common.AssertFloatNear(t, result, tc.expected, tolerance)
	}
}

func TestCos(t *testing.T) {
	testCases := []struct {
		input    float64
		expected float64
	}{
		{0, 1},
		{math.Pi / 2, 0},
		{math.Pi, -1},
		{-math.Pi, -1},
		{math.Pi / 3, 0.5},
	}

	for _, tc := range testCases {
		result := math.Cos(tc.input)
		common.AssertFloatNear(t, result, tc.expected, tolerance)
	}
}

func TestTan(t *testing.T) {
	testCases := []struct {
		input    float64
		expected float64
	}{
		{0, 0},
		{math.Pi / 4, 1},
		{-math.Pi / 4, -1},
		{math.Pi / 6, 0.5773502691896257},
	}

	for _, tc := range testCases {
		result := math.Tan(tc.input)
		common.AssertFloatNear(t, result, tc.expected, tolerance)
	}
}

func TestSqrt(t *testing.T) {
	testCases := []struct {
		input    float64
		expected float64
	}{
		{0, 0},
		{1, 1},
		{4, 2},
		{9, 3},
		{2, 1.4142135623730951},
		{0.25, 0.5},
	}

	for _, tc := range testCases {
		result := math.Sqrt(tc.input)
		common.AssertFloatNear(t, result, tc.expected, tolerance)
	}
}

func TestExp(t *testing.T) {
	testCases := []struct {
		input    float64
		expected float64
	}{
		{0, 1},
		{1, math.E},
		{2, 7.38905609893065},
		{-1, 0.36787944117144233},
	}

	for _, tc := range testCases {
		result := math.Exp(tc.input)
		common.AssertFloatNear(t, result, tc.expected, tolerance)
	}
}

func TestLog(t *testing.T) {
	testCases := []struct {
		input    float64
		expected float64
	}{
		{1, 0},
		{math.E, 1},
		{10, 2.302585092994046},
		{2, 0.6931471805599453},
	}

	for _, tc := range testCases {
		result := math.Log(tc.input)
		common.AssertFloatNear(t, result, tc.expected, tolerance)
	}
}

func TestPow(t *testing.T) {
	testCases := []struct {
		base     float64
		exponent float64
		expected float64
	}{
		{2, 0, 1},
		{2, 1, 2},
		{2, 2, 4},
		{2, 3, 8},
		{3, 2, 9},
		{10, 2, 100},
		{2, -1, 0.5},
		{4, 0.5, 2},
	}

	for _, tc := range testCases {
		result := math.Pow(tc.base, tc.exponent)
		common.AssertFloatNear(t, result, tc.expected, tolerance)
	}
}

func TestAbs(t *testing.T) {
	testCases := []struct {
		input    float64
		expected float64
	}{
		{0, 0},
		{1, 1},
		{-1, 1},
		{3.14, 3.14},
		{-3.14, 3.14},
		{-0.0, 0.0},
	}

	for _, tc := range testCases {
		result := math.Abs(tc.input)
		common.AssertFloatNear(t, result, tc.expected, tolerance)
	}
}

func TestMod(t *testing.T) {
	testCases := []struct {
		x        float64
		y        float64
		expected float64
	}{
		{10, 3, 1},
		{10.5, 3, 1.5},
		{-10, 3, -1},
		{10, -3, 1},
		{7.5, 2.5, 0},
	}

	for _, tc := range testCases {
		result := math.Mod(tc.x, tc.y)
		common.AssertFloatNear(t, result, tc.expected, tolerance)
	}
}

func TestFrexp(t *testing.T) {
	testCases := []struct {
		input    float64
		wantFrac float64
		wantExp  int
	}{
		{0, 0, 0},
		{1, 0.5, 1},
		{2, 0.5, 2},
		{4, 0.5, 3},
		{8, 0.5, 4},
		{0.5, 0.5, 0},
		{0.25, 0.5, -1},
	}

	for _, tc := range testCases {
		frac, exp := math.Frexp(tc.input)
		common.AssertFloatNear(t, frac, tc.wantFrac, tolerance)
		if exp != tc.wantExp {
			t.Errorf("Frexp(%v) exp = %v, want %v", tc.input, exp, tc.wantExp)
		}
	}
}

func TestSpecialValues(t *testing.T) {
	if !math.IsNaN(math.NaN()) {
		t.Error("NaN() should return NaN")
	}
	if !math.IsInf(math.Inf(1), 1) {
		t.Error("Inf(1) should return positive infinity")
	}
	if !math.IsInf(math.Inf(-1), -1) {
		t.Error("Inf(-1) should return negative infinity")
	}
	if math.IsNaN(1.0) {
		t.Error("1.0 should not be NaN")
	}
	if math.IsInf(1.0, 0) {
		t.Error("1.0 should not be infinity")
	}
}
