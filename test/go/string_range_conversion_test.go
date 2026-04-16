package gotest

import "testing"

func rangeRunesFromUint64(v uint64) []rune {
	var out []rune
	for _, r := range string(v) {
		out = append(out, r)
	}
	return out
}

func rangeRunesFromInt64(v int64) []rune {
	var out []rune
	for _, r := range string(v) {
		out = append(out, r)
	}
	return out
}

func TestStringConversionFromWideIntegers(t *testing.T) {
	tests := []struct {
		name string
		got  func() []rune
		want []rune
	}{
		{
			name: "large uint64 becomes runeError",
			got:  func() []rune { return rangeRunesFromUint64(1 << 32) },
			want: []rune{'\uFFFD'},
		},
		{
			name: "large negative int64 becomes runeError",
			got:  func() []rune { return rangeRunesFromInt64(-1 << 40) },
			want: []rune{'\uFFFD'},
		},
		{
			name: "valid uint64 rune is preserved",
			got:  func() []rune { return rangeRunesFromUint64(0x10FFFF) },
			want: []rune{0x10FFFF},
		},
	}
	for _, tt := range tests {
		got := tt.got()
		if len(got) != len(tt.want) {
			t.Fatalf("%s: got %v want %v", tt.name, got, tt.want)
		}
		for i := range got {
			if got[i] != tt.want[i] {
				t.Fatalf("%s: got %v want %v", tt.name, got, tt.want)
			}
		}
	}
}
