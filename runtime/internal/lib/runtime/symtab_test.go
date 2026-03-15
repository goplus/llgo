package runtime

import "testing"

func TestUserVisibleFuncName(t *testing.T) {
	tests := map[string]string{
		"command-line-arguments.f":              "main.f",
		"__llgo_stub.command-line-arguments.f": "main.f",
		"__llgo_stub.main.f":                   "main.f",
		"pkg.f":                                "pkg.f",
	}
	for in, want := range tests {
		if got := userVisibleFuncName(in); got != want {
			t.Fatalf("userVisibleFuncName(%q) = %q, want %q", in, got, want)
		}
	}
}
