package optlevel

import "testing"

func TestParse(t *testing.T) {
	tests := []struct {
		name    string
		input   string
		want    Level
		wantErr bool
	}{
		{name: "o0", input: "0", want: O0},
		{name: "o1", input: "1", want: O1},
		{name: "o2", input: "2", want: O2},
		{name: "o3", input: "3", want: O3},
		{name: "os", input: "s", want: Os},
		{name: "oz", input: "z", want: Oz},
		{name: "trim and lowercase", input: "  S  ", want: Os},
		{name: "prefixed with dash and o", input: "-O2", want: O2},
		{name: "prefixed with o", input: "o3", want: O3},
		{name: "prefixed with dash lowercase", input: "-oz", want: Oz},
		{name: "invalid empty", input: "", want: Unset, wantErr: true},
		{name: "invalid value", input: "fast", want: Unset, wantErr: true},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got, err := Parse(tt.input)
			if tt.wantErr {
				if err == nil {
					t.Fatalf("Parse(%q) succeeded, want error", tt.input)
				}
				if got != Unset {
					t.Fatalf("Parse(%q) = %v, want %v on error", tt.input, got, Unset)
				}
				return
			}
			if err != nil {
				t.Fatalf("Parse(%q) failed: %v", tt.input, err)
			}
			if got != tt.want {
				t.Fatalf("Parse(%q) = %v, want %v", tt.input, got, tt.want)
			}
		})
	}
}

func TestLevelHelpers(t *testing.T) {
	tests := []struct {
		name        string
		level       Level
		valid       bool
		optimized   bool
		stringValue string
		flag        string
		suffix      string
	}{
		{name: "unset", level: Unset, stringValue: "unset"},
		{name: "invalid", level: Level(99), stringValue: "unset"},
		{name: "o0", level: O0, valid: true, stringValue: "-O0", flag: "-O0", suffix: "0"},
		{name: "o1", level: O1, valid: true, optimized: true, stringValue: "-O1", flag: "-O1", suffix: "1"},
		{name: "o2", level: O2, valid: true, optimized: true, stringValue: "-O2", flag: "-O2", suffix: "2"},
		{name: "o3", level: O3, valid: true, optimized: true, stringValue: "-O3", flag: "-O3", suffix: "3"},
		{name: "os", level: Os, valid: true, optimized: true, stringValue: "-Os", flag: "-Os", suffix: "s"},
		{name: "oz", level: Oz, valid: true, optimized: true, stringValue: "-Oz", flag: "-Oz", suffix: "z"},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := tt.level.IsValid(); got != tt.valid {
				t.Fatalf("IsValid(%v) = %v, want %v", tt.level, got, tt.valid)
			}
			if got := tt.level.IsOptimized(); got != tt.optimized {
				t.Fatalf("IsOptimized(%v) = %v, want %v", tt.level, got, tt.optimized)
			}
			if got := tt.level.String(); got != tt.stringValue {
				t.Fatalf("String(%v) = %q, want %q", tt.level, got, tt.stringValue)
			}
			if got := tt.level.Flag(); got != tt.flag {
				t.Fatalf("Flag(%v) = %q, want %q", tt.level, got, tt.flag)
			}
			if got := tt.level.Suffix(); got != tt.suffix {
				t.Fatalf("Suffix(%v) = %q, want %q", tt.level, got, tt.suffix)
			}
		})
	}
}
