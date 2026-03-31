package flags

import (
	"flag"
	"testing"

	"github.com/goplus/llgo/internal/optlevel"
)

func resetBuildFlagGlobals() {
	OptLevel = optlevel.Unset
}

func TestOptimizationFlags(t *testing.T) {
	tests := []struct {
		name string
		args []string
		want optlevel.Level
	}{
		{name: "shorthand O2", args: []string{"-O2"}, want: optlevel.O2},
		{name: "shorthand Oz", args: []string{"-Oz"}, want: optlevel.Oz},
		{name: "explicit O value", args: []string{"-O=s"}, want: optlevel.Os},
		{name: "space separated O value", args: []string{"-O", "3"}, want: optlevel.O3},
		{name: "last flag wins", args: []string{"-O1", "-Oz"}, want: optlevel.Oz},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			resetBuildFlagGlobals()
			fs := flag.NewFlagSet("test", flag.ContinueOnError)
			AddBuildFlags(fs)
			if err := fs.Parse(tt.args); err != nil {
				t.Fatalf("Parse(%v) failed: %v", tt.args, err)
			}
			if OptLevel != tt.want {
				t.Fatalf("OptLevel = %v, want %v", OptLevel, tt.want)
			}
		})
	}
}

func TestOptimizationFlagsRejectInvalidLevel(t *testing.T) {
	resetBuildFlagGlobals()
	fs := flag.NewFlagSet("test", flag.ContinueOnError)
	AddBuildFlags(fs)
	if err := fs.Parse([]string{"-O=fast"}); err == nil {
		t.Fatal("Parse(-O=fast) succeeded, want error")
	}
}
