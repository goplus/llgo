package rtlib

import (
	"strings"
	"testing"
)

func TestPlatformSpecifiedFiles(t *testing.T) {
	tests := []struct {
		target   string
		expected int // Number of expected files
	}{
		{"riscv32-unknown-elf", 5},
		{"riscv64-unknown-elf", 27},
		{"arm-none-eabi", 19},
		{"avr-unknown-elf", 6},
		{"xtensa", 2},
		{"x86_64-pc-windows", 0},
	}

	builtinsDir := "/test/builtins"
	for _, tt := range tests {
		t.Run(tt.target, func(t *testing.T) {
			result := platformSpecifiedFiles(builtinsDir, tt.target)
			if len(result) != tt.expected {
				t.Errorf("For target %s, expected %d files, got %d", tt.target, tt.expected, len(result))
			}
		})
	}
}

func TestWithPlatformSpecifiedFiles(t *testing.T) {
	baseDir := "/test/base"
	target := "riscv32-unknown-elf"
	inputFiles := []string{"file1.c", "file2.c"}

	result := withPlatformSpecifiedFiles(baseDir, target, inputFiles)

	// Should have input files + platform specific files
	if len(result) <= len(inputFiles) {
		t.Errorf("Expected more files than input, got %d", len(result))
	}

	// Check that input files are preserved
	for _, inputFile := range inputFiles {
		found := false
		for _, resultFile := range result {
			if resultFile == inputFile {
				found = true
				break
			}
		}
		if !found {
			t.Errorf("Input file %s not found in result", inputFile)
		}
	}
}

func TestGetCompilerRTConfig(t *testing.T) {
	baseDir := "/test/base"
	target := "riscv32-unknown-elf"

	config := GetCompilerRTConfig(baseDir, target)

	// Test groups configuration
	if len(config.Groups) != 1 {
		t.Errorf("Expected 1 group, got %d", len(config.Groups))
	} else {
		group := config.Groups[0]
		expectedOutput := "libclang_builtins-" + target + ".a"
		if group.OutputFileName != expectedOutput {
			t.Errorf("Expected output file %s, got %s", expectedOutput, group.OutputFileName)
		}

		// Check that files list contains platform-specific files
		if len(group.Files) == 0 {
			t.Error("Expected non-empty files list")
		}

		// Check that CFlags are set
		if len(group.CFlags) == 0 {
			t.Error("Expected non-empty CFlags")
		}

		// Check that CCFlags are set
		if len(group.CCFlags) == 0 {
			t.Error("Expected non-empty CCFlags")
		}
	}
}

func TestGetCompilerRTConfig_DifferentTargets(t *testing.T) {
	targets := []string{
		"riscv32-unknown-elf",
		"riscv64-unknown-elf",
		"arm-none-eabi",
		"avr-unknown-elf",
		"xtensa",
	}

	baseDir := "/test/base"
	for _, target := range targets {
		t.Run(target, func(t *testing.T) {
			config := GetCompilerRTConfig(baseDir, target)

			// Basic validation
			if config.Url == "" {
				t.Error("URL should not be empty")
			}
			if config.ArchiveSrcDir == "" {
				t.Error("ArchiveSrcDir should not be empty")
			}
			if len(config.Groups) == 0 {
				t.Error("Should have at least one group")
			}

			// Check output filename contains target
			group := config.Groups[0]
			if !strings.Contains(group.OutputFileName, target) {
				t.Errorf("Output filename %s should contain target %s", group.OutputFileName, target)
			}
		})
	}
}
