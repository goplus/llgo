package cl_test

import (
	"bytes"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"regexp"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/mockable"
)

// filterEmulatorOutput extracts the actual program output from emulator output.
// It finds the line starting with "entry 0x" and returns everything after that line.
func filterEmulatorOutput(output string) string {
	lines := strings.Split(output, "\n")
	entryPattern := regexp.MustCompile(`^entry 0x[0-9a-fA-F]+$`)

	for i, line := range lines {
		if entryPattern.MatchString(strings.TrimSpace(line)) {
			// Return everything after the entry line
			if i+1 < len(lines) {
				return strings.Join(lines[i+1:], "\n")
			}
			return ""
		}
	}

	// If no entry line found, return original output
	return output
}

// runEmulatorTest runs llgo with emulator using build.Do() and compares output
func runEmulatorTest(t *testing.T, testDir, target string) {
	t.Helper()

	// Get absolute path for testDir
	absTestDir, err := filepath.Abs(testDir)
	if err != nil {
		t.Fatalf("Failed to get absolute path: %v", err)
	}

	// Read expected output
	expectFile := filepath.Join(absTestDir, "expect.txt")
	expectBytes, err := os.ReadFile(expectFile)
	if err != nil {
		t.Fatalf("Failed to read expect.txt: %v", err)
	}
	expected := strings.TrimSpace(string(expectBytes))

	// Capture stdout
	originalStdout := os.Stdout
	r, w, err := os.Pipe()
	if err != nil {
		t.Fatalf("os.Pipe failed: %v", err)
	}
	os.Stdout = w

	outputChan := make(chan string)
	go func() {
		var buf bytes.Buffer
		io.Copy(&buf, r)
		outputChan <- buf.String()
	}()

	// Run using build.Do() with emulator
	cfg := &build.Config{
		Mode:     build.ModeRun,
		Target:   target,
		Emulator: true,
	}

	// Enable mock to handle os.Exit
	mockable.EnableMock()
	defer mockable.DisableMock()

	var runErr error
	func() {
		defer func() {
			if r := recover(); r != nil {
				if s, ok := r.(string); ok && s == "exit" {
					return // Ignore mocked os.Exit
				}
				panic(r)
			}
		}()
		_, runErr = build.Do([]string{absTestDir}, cfg)
	}()

	// Restore stdout and get output
	w.Close()
	os.Stdout = originalStdout
	output := <-outputChan

	if runErr != nil {
		t.Fatalf("build.Do failed: %v\nOutput: %s", runErr, output)
	}

	// Filter emulator startup output and get program output
	programOutput := strings.TrimSpace(filterEmulatorOutput(output))

	// Always output the test results (not affected by -v flag)
	fmt.Printf("\n=== Test Output for %s ===\n", testDir)
	fmt.Printf("Program output:\n%s\n", programOutput)
	fmt.Printf("Full emulator output:\n%s\n", output)
	fmt.Printf("========================\n\n")

	// Compare output
	if programOutput != expected {
		t.Errorf("Output mismatch:\nExpected:\n%s\n\nGot:\n%s",
			expected, programOutput)
	}
}

// getTestDirs returns all test directories under cl/_testemb/
func getTestDirs(t *testing.T) []string {
	t.Helper()

	testRoot := "_testemb"
	entries, err := os.ReadDir(testRoot)
	if err != nil {
		t.Fatalf("Failed to read test directory: %v", err)
	}

	var dirs []string
	for _, entry := range entries {
		if entry.IsDir() && !strings.HasPrefix(entry.Name(), ".") {
			// Check if directory has main.go and expect.txt
			mainFile := filepath.Join(testRoot, entry.Name(), "main.go")
			expectFile := filepath.Join(testRoot, entry.Name(), "expect.txt")
			if _, err := os.Stat(mainFile); err == nil {
				if _, err := os.Stat(expectFile); err == nil {
					dirs = append(dirs, filepath.Join(testRoot, entry.Name()))
				}
			}
		}
	}
	return dirs
}

func TestEmbRun(t *testing.T) {
	if testing.Short() {
		t.Skip("Skipping emulator test in short mode")
	}

	// Get all test directories
	testDirs := getTestDirs(t)
	if len(testDirs) == 0 {
		t.Skip("No test directories found")
	}

	// Define targets to test
	targets := []struct {
		name   string
		target string
	}{
		{"ESP32C3", "esp32c3-basic"},
	}

	for _, target := range targets {
		t.Run(target.name, func(t *testing.T) {
			for _, testDir := range testDirs {
				t.Run(testDir, func(t *testing.T) {
					runEmulatorTest(t, testDir, target.target)
				})
			}
		})
	}
}

// TestFilterEmulatorOutput tests the output filtering logic
func TestFilterEmulatorOutput(t *testing.T) {
	tests := []struct {
		name     string
		input    string
		expected string
	}{
		{
			name: "ESP32C3 output",
			input: `Adding SPI flash device
ESP-ROM:esp32c3-api1-20210207
Build:Feb  7 2021
rst:0x1 (POWERON),boot:0x8 (SPI_FAST_FLASH_BOOT)
SPIWP:0xee
mode:DIO, clock div:1
load:0x3fc855b0,len:0xfc
load:0x3fc856ac,len:0x4
load:0x3fc856b0,len:0x44
load:0x40380000,len:0x1548
load:0x40381548,len:0x68
entry 0x40380000
Hello World!
`,
			expected: `Hello World!
`,
		},
		{
			name: "ESP32 output",
			input: `Adding SPI flash device
ESP-ROM:esp32-xxxx
entry 0x40080000
Hello World!
`,
			expected: `Hello World!
`,
		},
		{
			name:     "No entry line",
			input:    "Just some output\n",
			expected: "Just some output\n",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := filterEmulatorOutput(tt.input)
			if got != tt.expected {
				t.Errorf("filterEmulatorOutput() = %q, want %q", got, tt.expected)
			}
		})
	}
}
