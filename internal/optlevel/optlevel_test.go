package optlevel

import "testing"

func TestParse(t *testing.T) {
	tests := []struct {
		in   string
		want Level
	}{
		{"0", O0},
		{"1", O1},
		{"2", O2},
		{"3", O3},
		{"s", Os},
		{"z", Oz},
		{"O2", O2},
		{"-O3", O3},
		{"  -Oz  ", Oz},
	}
	for _, tt := range tests {
		got, err := Parse(tt.in)
		if err != nil {
			t.Fatalf("Parse(%q) unexpected error: %v", tt.in, err)
		}
		if got != tt.want {
			t.Fatalf("Parse(%q) = %v, want %v", tt.in, got, tt.want)
		}
	}
}

func TestParseInvalid(t *testing.T) {
	if _, err := Parse("fast"); err == nil {
		t.Fatal("Parse(fast) expected error")
	}
}

func TestFormatting(t *testing.T) {
	if got := Oz.Name(); got != "Oz" {
		t.Fatalf("Oz.Name() = %q, want %q", got, "Oz")
	}
	if got := Oz.Flag(); got != "-Oz" {
		t.Fatalf("Oz.Flag() = %q, want %q", got, "-Oz")
	}
	if got := O3.String(); got != "O3" {
		t.Fatalf("O3.String() = %q, want %q", got, "O3")
	}
	if got := Unset.String(); got != "unset" {
		t.Fatalf("Unset.String() = %q, want %q", got, "unset")
	}
}
