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

func TestAddBuildFlagsIncludesJson(t *testing.T) {
	fs := flag.NewFlagSet("build", flag.ContinueOnError)

	// Add build flags
	AddBuildFlags(fs)

	// Verify -json flag is registered
	jsonFlag := fs.Lookup("json")
	if jsonFlag == nil {
		t.Error("Expected -json flag to be registered in AddBuildFlags")
	} else if jsonFlag.Usage != "Emit build output in JSON format" {
		t.Errorf("Expected -json usage to be 'Emit build output in JSON format', got %q", jsonFlag.Usage)
	}
}

func TestUpdateConfigModeTest(t *testing.T) {
	tests := []struct {
		name            string
		setupFlags      func()
		expectedOutFile string
		expectedCompile bool
		expectedJson    bool
	}{
		{
			name: "test with -o flag",
			setupFlags: func() {
				OutputFile = "mytest.test"
				CompileOnly = false
				JsonOutput = false
			},
			expectedOutFile: "mytest.test",
			expectedCompile: false,
			expectedJson:    false,
		},
		{
			name: "test with -c flag",
			setupFlags: func() {
				OutputFile = ""
				CompileOnly = true
				JsonOutput = false
			},
			expectedOutFile: "",
			expectedCompile: true,
			expectedJson:    false,
		},
		{
			name: "test with -o and -c flags",
			setupFlags: func() {
				OutputFile = "custom.test"
				CompileOnly = true
				JsonOutput = false
			},
			expectedOutFile: "custom.test",
			expectedCompile: true,
			expectedJson:    false,
		},
		{
			name: "test with -json flag",
			setupFlags: func() {
				OutputFile = ""
				CompileOnly = false
				JsonOutput = true
			},
			expectedOutFile: "",
			expectedCompile: false,
			expectedJson:    true,
		},
		{
			name: "test with all flags",
			setupFlags: func() {
				OutputFile = "output.test"
				CompileOnly = true
				JsonOutput = true
			},
			expectedOutFile: "output.test",
			expectedCompile: true,
			expectedJson:    true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			// Reset flags
			OutputFile = ""
			CompileOnly = false
			JsonOutput = false

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

			if conf.JsonOutput != tt.expectedJson {
				t.Errorf("Expected JsonOutput = %v, got %v", tt.expectedJson, conf.JsonOutput)
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
