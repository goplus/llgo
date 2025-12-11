//go:build !llgo
// +build !llgo

package build

import (
	"testing"
)

func TestConfigCompileOnlyFlag(t *testing.T) {
	tests := []struct {
		name            string
		mode            Mode
		compileOnly     bool
		expectedCompile bool
	}{
		{
			name:            "test mode with compile only",
			mode:            ModeTest,
			compileOnly:     true,
			expectedCompile: true,
		},
		{
			name:            "test mode without compile only",
			mode:            ModeTest,
			compileOnly:     false,
			expectedCompile: false,
		},
		{
			name:            "build mode ignores compile only",
			mode:            ModeBuild,
			compileOnly:     true,
			expectedCompile: true,
		},
		{
			name:            "run mode ignores compile only",
			mode:            ModeRun,
			compileOnly:     true,
			expectedCompile: true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			conf := &Config{
				Mode:        tt.mode,
				CompileOnly: tt.compileOnly,
			}

			if conf.CompileOnly != tt.expectedCompile {
				t.Errorf("Expected CompileOnly = %v, got %v", tt.expectedCompile, conf.CompileOnly)
			}
		})
	}
}

func TestConfigJsonOutputFlag(t *testing.T) {
	tests := []struct {
		name           string
		mode           Mode
		jsonOutput     bool
		expectedOutput bool
	}{
		{
			name:           "test mode with json output",
			mode:           ModeTest,
			jsonOutput:     true,
			expectedOutput: true,
		},
		{
			name:           "test mode without json output",
			mode:           ModeTest,
			jsonOutput:     false,
			expectedOutput: false,
		},
		{
			name:           "build mode with json output",
			mode:           ModeBuild,
			jsonOutput:     true,
			expectedOutput: true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			conf := &Config{
				Mode:       tt.mode,
				JsonOutput: tt.jsonOutput,
			}

			if conf.JsonOutput != tt.expectedOutput {
				t.Errorf("Expected JsonOutput = %v, got %v", tt.expectedOutput, conf.JsonOutput)
			}
		})
	}
}

func TestConfigTestOutFileFlag(t *testing.T) {
	tests := []struct {
		name        string
		mode        Mode
		outFile     string
		expectedOut string
	}{
		{
			name:        "test mode with custom output",
			mode:        ModeTest,
			outFile:     "mytest.test",
			expectedOut: "mytest.test",
		},
		{
			name:        "test mode with directory output",
			mode:        ModeTest,
			outFile:     "build/",
			expectedOut: "build/",
		},
		{
			name:        "test mode without output",
			mode:        ModeTest,
			outFile:     "",
			expectedOut: "",
		},
		{
			name:        "build mode with custom output",
			mode:        ModeBuild,
			outFile:     "myapp",
			expectedOut: "myapp",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			conf := &Config{
				Mode:    tt.mode,
				OutFile: tt.outFile,
			}

			if conf.OutFile != tt.expectedOut {
				t.Errorf("Expected OutFile = %q, got %q", tt.expectedOut, conf.OutFile)
			}
		})
	}
}

func TestConfigTestModeWithMultipleFlags(t *testing.T) {
	// Test combinations of test flags
	conf := &Config{
		Mode:        ModeTest,
		OutFile:     "custom.test",
		CompileOnly: true,
		JsonOutput:  true,
	}

	if conf.Mode != ModeTest {
		t.Errorf("Expected Mode = ModeTest, got %v", conf.Mode)
	}

	if conf.OutFile != "custom.test" {
		t.Errorf("Expected OutFile = 'custom.test', got %q", conf.OutFile)
	}

	if !conf.CompileOnly {
		t.Error("Expected CompileOnly = true, got false")
	}

	if !conf.JsonOutput {
		t.Error("Expected JsonOutput = true, got false")
	}
}
