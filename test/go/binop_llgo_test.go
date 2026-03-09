//go:build llgo
// +build llgo

package gotest

import (
	"math"
	"testing"
)

func TestFloat64ToInt32ConversionLikeGo(t *testing.T) {
	cases := []struct {
		name string
		in   float64
		want int32
	}{
		{name: "nan", in: math.NaN(), want: 0},
		{name: "pos_inf", in: math.Inf(1), want: 2147483647},
		{name: "neg_inf", in: math.Inf(-1), want: -2147483648},
		{name: "below_min", in: -4294967296, want: -2147483648},
		{name: "just_below_min", in: -2147483649, want: -2147483648},
		{name: "at_min", in: -2147483648, want: -2147483648},
		{name: "minus_one", in: -1, want: -1},
		{name: "at_zero", in: 0, want: 0},
		{name: "at_one", in: 1, want: 1},
		{name: "at_max", in: 2147483647, want: 2147483647},
		{name: "just_above_max", in: 2147483648, want: 2147483647},
		{name: "from_max_uint32", in: float64(uint32(0xFFFFFFFF)), want: 2147483647},
		{name: "above_uint32_max", in: 4294967296, want: 2147483647},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			if got := int32(tc.in); got != tc.want {
				t.Fatalf("int32(%v) = %d, want %d", tc.in, got, tc.want)
			}
		})
	}
}

func TestFloat64ToSignedNarrowIntWrapsLikeGo(t *testing.T) {
	int8Cases := []struct {
		name string
		in   float64
		want int8
	}{
		{name: "nan", in: math.NaN(), want: 0},
		{name: "pos_inf", in: math.Inf(1), want: -1},
		{name: "neg_inf", in: math.Inf(-1), want: 0},
		{name: "huge_pos", in: 1e20, want: -1},
		{name: "huge_neg", in: -1e20, want: 0},
		{name: "below_min", in: -200, want: 56},
		{name: "just_below_min", in: -129, want: 127},
		{name: "at_min", in: -128, want: -128},
		{name: "at_max", in: 127, want: 127},
		{name: "just_above_max", in: 128, want: -128},
		{name: "above_max", in: 200, want: -56},
	}
	for _, tc := range int8Cases {
		t.Run("int8/"+tc.name, func(t *testing.T) {
			if got := int8(tc.in); got != tc.want {
				t.Fatalf("int8(%v) = %d, want %d", tc.in, got, tc.want)
			}
		})
	}

	int16Cases := []struct {
		name string
		in   float64
		want int16
	}{
		{name: "nan", in: math.NaN(), want: 0},
		{name: "pos_inf", in: math.Inf(1), want: -1},
		{name: "neg_inf", in: math.Inf(-1), want: 0},
		{name: "huge_pos", in: 1e20, want: -1},
		{name: "huge_neg", in: -1e20, want: 0},
		{name: "below_min", in: -40000, want: 25536},
		{name: "just_below_min", in: -32769, want: 32767},
		{name: "at_min", in: -32768, want: -32768},
		{name: "at_max", in: 32767, want: 32767},
		{name: "just_above_max", in: 32768, want: -32768},
		{name: "above_max", in: 40000, want: -25536},
	}
	for _, tc := range int16Cases {
		t.Run("int16/"+tc.name, func(t *testing.T) {
			if got := int16(tc.in); got != tc.want {
				t.Fatalf("int16(%v) = %d, want %d", tc.in, got, tc.want)
			}
		})
	}
}

func TestFloat32ToInt32ConversionLikeGo(t *testing.T) {
	cases := []struct {
		name string
		in   float32
		want int32
	}{
		{name: "nan", in: float32(math.NaN()), want: 0},
		{name: "pos_inf", in: float32(math.Inf(1)), want: 2147483647},
		{name: "neg_inf", in: float32(math.Inf(-1)), want: -2147483648},
		{name: "just_above_max", in: 2147483648, want: 2147483647},
		{name: "from_max_uint32", in: float32(4294967295), want: 2147483647},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			if got := int32(tc.in); got != tc.want {
				t.Fatalf("int32(%v) = %d, want %d", tc.in, got, tc.want)
			}
		})
	}
}
