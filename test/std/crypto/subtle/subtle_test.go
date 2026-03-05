package subtle_test

import (
	"crypto/subtle"
	"testing"
)

func TestConstantTimeByteEq(t *testing.T) {
	tests := []struct {
		x, y uint8
		want int
	}{
		{0, 0, 1},
		{1, 1, 1},
		{255, 255, 1},
		{0, 1, 0},
		{1, 0, 0},
		{42, 43, 0},
	}

	for _, tt := range tests {
		got := subtle.ConstantTimeByteEq(tt.x, tt.y)
		if got != tt.want {
			t.Errorf("ConstantTimeByteEq(%d, %d) = %d, want %d", tt.x, tt.y, got, tt.want)
		}
	}
}

func TestConstantTimeCompare(t *testing.T) {
	tests := []struct {
		name string
		x, y []byte
		want int
	}{
		{"equal empty", []byte{}, []byte{}, 1},
		{"equal same", []byte{1, 2, 3}, []byte{1, 2, 3}, 1},
		{"not equal different values", []byte{1, 2, 3}, []byte{1, 2, 4}, 0},
		{"not equal different length", []byte{1, 2}, []byte{1, 2, 3}, 0},
		{"nil equal", nil, nil, 1},
		{"nil vs empty", nil, []byte{}, 1},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := subtle.ConstantTimeCompare(tt.x, tt.y)
			if got != tt.want {
				t.Errorf("ConstantTimeCompare(%v, %v) = %d, want %d", tt.x, tt.y, got, tt.want)
			}
		})
	}
}

func TestConstantTimeCopy(t *testing.T) {
	dst := make([]byte, 4)
	x := []byte{1, 2, 3, 4}
	y := []byte{5, 6, 7, 8}

	subtle.ConstantTimeCopy(1, dst, x)
	for i, v := range x {
		if dst[i] != v {
			t.Errorf("ConstantTimeCopy(1, dst, x): dst[%d] = %d, want %d", i, dst[i], v)
		}
	}

	subtle.ConstantTimeCopy(0, dst, y)
	for i, v := range x {
		if dst[i] != v {
			t.Errorf("ConstantTimeCopy(0, dst, y): dst[%d] = %d, should still be %d", i, dst[i], v)
		}
	}
}

func TestConstantTimeEq(t *testing.T) {
	tests := []struct {
		x, y int32
		want int
	}{
		{0, 0, 1},
		{1, 1, 1},
		{-1, -1, 1},
		{2147483647, 2147483647, 1},
		{-2147483648, -2147483648, 1},
		{0, 1, 0},
		{1, 0, 0},
		{-1, 1, 0},
		{100, 101, 0},
	}

	for _, tt := range tests {
		got := subtle.ConstantTimeEq(tt.x, tt.y)
		if got != tt.want {
			t.Errorf("ConstantTimeEq(%d, %d) = %d, want %d", tt.x, tt.y, got, tt.want)
		}
	}
}

func TestConstantTimeLessOrEq(t *testing.T) {
	tests := []struct {
		x, y int
		want int
	}{
		{0, 0, 1},
		{0, 1, 1},
		{1, 1, 1},
		{1, 2, 1},
		{-1, 0, 1},
		{-1, -1, 1},
		{1, 0, 0},
		{2, 1, 0},
		{0, -1, 0},
	}

	for _, tt := range tests {
		got := subtle.ConstantTimeLessOrEq(tt.x, tt.y)
		if got != tt.want {
			t.Errorf("ConstantTimeLessOrEq(%d, %d) = %d, want %d", tt.x, tt.y, got, tt.want)
		}
	}
}

func TestConstantTimeSelect(t *testing.T) {
	tests := []struct {
		v, x, y int
		want    int
	}{
		{1, 10, 20, 10},
		{0, 10, 20, 20},
		{1, -5, 5, -5},
		{0, -5, 5, 5},
		{1, 0, 0, 0},
		{0, 0, 0, 0},
	}

	for _, tt := range tests {
		got := subtle.ConstantTimeSelect(tt.v, tt.x, tt.y)
		if got != tt.want {
			t.Errorf("ConstantTimeSelect(%d, %d, %d) = %d, want %d", tt.v, tt.x, tt.y, got, tt.want)
		}
	}
}

func TestWithDataIndependentTiming(t *testing.T) {
	executed := false
	f := func() {
		executed = true
	}

	subtle.WithDataIndependentTiming(f)

	if !executed {
		t.Error("WithDataIndependentTiming() did not execute the function")
	}
}

func TestXORBytes(t *testing.T) {
	tests := []struct {
		name     string
		x, y     []byte
		expected []byte
		wantN    int
	}{
		{
			"equal length",
			[]byte{0x01, 0x02, 0x03},
			[]byte{0x0F, 0x0E, 0x0D},
			[]byte{0x0E, 0x0C, 0x0E},
			3,
		},
		{
			"x longer",
			[]byte{0x01, 0x02, 0x03, 0x04},
			[]byte{0x0F, 0x0E},
			[]byte{0x0E, 0x0C},
			2,
		},
		{
			"y longer",
			[]byte{0x01, 0x02},
			[]byte{0x0F, 0x0E, 0x0D, 0x0C},
			[]byte{0x0E, 0x0C},
			2,
		},
		{
			"empty",
			[]byte{},
			[]byte{},
			[]byte{},
			0,
		},
		{
			"all zeros",
			[]byte{0x00, 0x00, 0x00},
			[]byte{0x00, 0x00, 0x00},
			[]byte{0x00, 0x00, 0x00},
			3,
		},
		{
			"same bytes",
			[]byte{0xFF, 0xFF, 0xFF},
			[]byte{0xFF, 0xFF, 0xFF},
			[]byte{0x00, 0x00, 0x00},
			3,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			dst := make([]byte, len(tt.expected))
			n := subtle.XORBytes(dst, tt.x, tt.y)

			if n != tt.wantN {
				t.Errorf("XORBytes() returned %d, want %d", n, tt.wantN)
			}

			for i := 0; i < n; i++ {
				if dst[i] != tt.expected[i] {
					t.Errorf("XORBytes() dst[%d] = 0x%02X, want 0x%02X", i, dst[i], tt.expected[i])
				}
			}
		})
	}
}

func TestXORBytesInPlace(t *testing.T) {
	x := []byte{0x01, 0x02, 0x03, 0x04}
	y := []byte{0x0F, 0x0E, 0x0D, 0x0C}
	expected := []byte{0x0E, 0x0C, 0x0E, 0x08}

	n := subtle.XORBytes(x, x, y)

	if n != 4 {
		t.Errorf("XORBytes() returned %d, want 4", n)
	}

	for i := 0; i < n; i++ {
		if x[i] != expected[i] {
			t.Errorf("XORBytes() x[%d] = 0x%02X, want 0x%02X", i, x[i], expected[i])
		}
	}
}
