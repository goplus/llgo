package version_test

import (
	"go/version"
	"testing"
)

func TestLang(t *testing.T) {
	tests := []struct {
		name string
		in   string
		want string
	}{
		{name: "InvalidPrefix", in: "1.21", want: ""},
		{name: "Empty", in: "", want: ""},
		{name: "Go1", in: "go1", want: "go1"},
		{name: "ReleaseCandidate", in: "go1.21rc2", want: "go1.21"},
		{name: "Patch", in: "go1.21.3", want: "go1.21"},
		{name: "EnterpriseSuffix", in: "go1.22.1-bigcorp", want: "go1.22"},
		{name: "AlreadyLang", in: "go1.23", want: "go1.23"},
	}

	for _, tc := range tests {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			if got := version.Lang(tc.in); got != tc.want {
				t.Fatalf("Lang(%q) = %q, want %q", tc.in, got, tc.want)
			}
		})
	}
}

func TestCompare(t *testing.T) {
	tests := []struct {
		name string
		x    string
		y    string
		want int
	}{
		{name: "BothInvalid", x: "", y: "", want: 0},
		{name: "InvalidVsValid", x: "", y: "go1.21", want: -1},
		{name: "PatchVsLang", x: "go1.21", y: "go1.21.0", want: -1},
		{name: "RCVsRelease", x: "go1.21rc1", y: "go1.21.0", want: -1},
		{name: "EnterpriseSuffix", x: "go1.22.1", y: "go1.22.1-bigcorp", want: 0},
		{name: "Ordering", x: "go1.19", y: "go1.20", want: -1},
		{name: "Reverse", x: "go1.20", y: "go1.19", want: 1},
	}

	for _, tc := range tests {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			if got := version.Compare(tc.x, tc.y); got != tc.want {
				t.Fatalf("Compare(%q, %q) = %d, want %d", tc.x, tc.y, got, tc.want)
			}
		})
	}
}

func TestIsValid(t *testing.T) {
	tests := []struct {
		in   string
		want bool
	}{
		{in: "", want: false},
		{in: "go1", want: true},
		{in: "go1.21", want: true},
		{in: "go1.21rc2", want: true},
		{in: "go1.21.2", want: true},
		{in: "go1.21.2-bigcorp", want: true},
		{in: "go1.21beta1", want: true},
		{in: "1.21", want: false},
		{in: "go1.21+meta", want: false},
	}

	for _, tc := range tests {
		tc := tc
		t.Run(tc.in, func(t *testing.T) {
			if got := version.IsValid(tc.in); got != tc.want {
				t.Fatalf("IsValid(%q) = %v, want %v", tc.in, got, tc.want)
			}
		})
	}
}

func TestCompareIsAntisymmetric(t *testing.T) {
	versions := []string{"", "go1", "go1.20", "go1.20rc1", "go1.21.3", "go1.21.3-bigcorp"}
	for _, x := range versions {
		for _, y := range versions {
			got := version.Compare(x, y)
			opposite := version.Compare(y, x)
			if got != -opposite {
				t.Fatalf("Compare symmetry broken for %q and %q: got %d and %d", x, y, got, opposite)
			}
		}
	}
}
