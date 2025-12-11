//go:build !llgo
// +build !llgo

package flags

import (
	"flag"
	"testing"

	"github.com/goplus/llgo/internal/build"
)

func TestAddTestFlags(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	// Add test flags
	AddTestFlags(fs)

	// Verify flags are registered
	outputFlag := fs.Lookup("o")
	if outputFlag == nil {
		t.Error("Expected -o flag to be registered")
	} else if outputFlag.Usage != "Compile test binary to the named file" {
		t.Errorf("Expected -o usage to be 'Compile test binary to the named file', got %q", outputFlag.Usage)
	}

	compileFlag := fs.Lookup("c")
	if compileFlag == nil {
		t.Error("Expected -c flag to be registered")
	} else if compileFlag.Usage != "Compile test binary but do not run it" {
		t.Errorf("Expected -c usage to be 'Compile test binary but do not run it', got %q", compileFlag.Usage)
	}
}

func TestUpdateConfigModeTest(t *testing.T) {
	tests := []struct {
		name            string
		setupFlags      func()
		expectedOutFile string
		expectedCompile bool
	}{
		{
			name: "test with -o flag",
			setupFlags: func() {
				OutputFile = "mytest.test"
				CompileOnly = false
			},
			expectedOutFile: "mytest.test",
			expectedCompile: false,
		},
		{
			name: "test with -c flag",
			setupFlags: func() {
				OutputFile = ""
				CompileOnly = true
			},
			expectedOutFile: "",
			expectedCompile: true,
		},
		{
			name: "test with -o and -c flags",
			setupFlags: func() {
				OutputFile = "custom.test"
				CompileOnly = true
			},
			expectedOutFile: "custom.test",
			expectedCompile: true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			// Reset flags
			OutputFile = ""
			CompileOnly = false

			// Setup flags for this test
			tt.setupFlags()

			// Create config
			conf := build.NewDefaultConf(build.ModeTest)

			// Update config
			err := UpdateConfig(conf)
			if err != nil {
				t.Fatalf("UpdateConfig() failed: %v", err)
			}

			// Verify config values
			if conf.OutFile != tt.expectedOutFile {
				t.Errorf("Expected OutFile = %q, got %q", tt.expectedOutFile, conf.OutFile)
			}

			if conf.CompileOnly != tt.expectedCompile {
				t.Errorf("Expected CompileOnly = %v, got %v", tt.expectedCompile, conf.CompileOnly)
			}
		})
	}
}

func TestFlagVariablesShared(t *testing.T) {
	// Test that OutputFile is shared between build and test
	fs1 := flag.NewFlagSet("build", flag.ContinueOnError)
	AddOutputFlags(fs1)

	fs2 := flag.NewFlagSet("test", flag.ContinueOnError)
	AddTestFlags(fs2)

	// Both should register -o flag
	if fs1.Lookup("o") == nil {
		t.Error("Expected -o flag in AddOutputFlags")
	}
	if fs2.Lookup("o") == nil {
		t.Error("Expected -o flag in AddTestFlags")
	}

	// Set via fs1
	OutputFile = "test1"
	if OutputFile != "test1" {
		t.Error("OutputFile not set correctly")
	}

	// Set via fs2
	OutputFile = "test2"
	if OutputFile != "test2" {
		t.Error("OutputFile not shared correctly")
	}
}
