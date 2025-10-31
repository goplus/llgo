//go:build !llgo
// +build !llgo

package test

import (
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
)

// TestExportSymbolNames tests that //export directive supports different symbol names
// This is essential for embedded development where hardware specifications require
// specific symbol names (e.g., ARM Cortex-M interrupt handlers).
func TestExportSymbolNames(t *testing.T) {
	// Create temporary directory for test
	tmpDir, err := os.MkdirTemp("", "llgo-export-test-*")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tmpDir)

	// Write test program
	testCode := `package main

//export LPSPI2_IRQHandler
func interruptLPSPI2() {
	println("LPSPI2 interrupt handled")
}

//export SysTick_Handler
func systemTickHandler() {
	println("System tick")
}

//export Add
func Add(a, b int) int {
	return a + b
}

func main() {
	interruptLPSPI2()
	systemTickHandler()
	println("Add(2, 3) =", Add(2, 3))
}
`
	mainGo := filepath.Join(tmpDir, "main.go")
	if err := os.WriteFile(mainGo, []byte(testCode), 0644); err != nil {
		t.Fatal(err)
	}

	// Get llgo binary path
	llgoPath := findLLGo(t)

	// Build the test program
	testBinary := filepath.Join(tmpDir, "test_export")
	cmd := exec.Command(llgoPath, "build", "-o", testBinary, mainGo)
	cmd.Env = append(os.Environ(), "LLGO_ROOT="+findLLGORoot(t))
	if output, err := cmd.CombinedOutput(); err != nil {
		t.Fatalf("Build failed: %v\nOutput: %s", err, output)
	}

	// Check for expected symbols using nm
	nmCmd := exec.Command("nm", testBinary)
	nmOutput, err := nmCmd.CombinedOutput()
	if err != nil {
		t.Fatalf("nm command failed: %v\nOutput: %s", err, nmOutput)
	}

	nmStr := string(nmOutput)

	// Verify LPSPI2_IRQHandler symbol exists (not interruptLPSPI2)
	if !strings.Contains(nmStr, "LPSPI2_IRQHandler") {
		t.Errorf("Symbol LPSPI2_IRQHandler not found in binary")
		t.Logf("Available symbols:\n%s", nmStr)
	}

	// Verify SysTick_Handler symbol exists (not systemTickHandler)
	if !strings.Contains(nmStr, "SysTick_Handler") {
		t.Errorf("Symbol SysTick_Handler not found in binary")
		t.Logf("Available symbols:\n%s", nmStr)
	}

	// Verify Add symbol exists (same name)
	if !strings.Contains(nmStr, "Add") {
		t.Errorf("Symbol Add not found in binary")
		t.Logf("Available symbols:\n%s", nmStr)
	}

	// Verify that the original function names are NOT exported
	// (they should only appear as internal symbols, not exported with 'T')
	lines := strings.Split(nmStr, "\n")
	for _, line := range lines {
		if strings.Contains(line, " T ") || strings.Contains(line, " t ") {
			if strings.Contains(line, "interruptLPSPI2") {
				t.Errorf("Unexpected exported symbol: interruptLPSPI2 (should be LPSPI2_IRQHandler)")
			}
			if strings.Contains(line, "systemTickHandler") {
				t.Errorf("Unexpected exported symbol: systemTickHandler (should be SysTick_Handler)")
			}
		}
	}
}

// findLLGo finds the llgo binary
func findLLGo(t *testing.T) string {
	t.Helper()

	// Always use the repository version for testing to ensure we test the latest code
	root := findLLGORoot(t)
	llgoPath := filepath.Join(root, "llgo")

	// Check if it exists
	if _, err := os.Stat(llgoPath); err == nil {
		return llgoPath
	}

	// Try to build it
	cmd := exec.Command("go", "build", "-o", llgoPath, "./cmd/llgo")
	cmd.Dir = root
	if err := cmd.Run(); err != nil {
		t.Skipf("llgo cannot be built: %v", err)
	}

	return llgoPath
}

// findLLGORoot finds the LLGO repository root
func findLLGORoot(t *testing.T) string {
	t.Helper()

	// Check LLGO_ROOT environment variable
	if root := os.Getenv("LLGO_ROOT"); root != "" {
		return root
	}

	// Try to find it relative to this test file
	wd, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}

	// Walk up to find go.mod
	dir := wd
	for {
		if _, err := os.Stat(filepath.Join(dir, "go.mod")); err == nil {
			return dir
		}
		parent := filepath.Dir(dir)
		if parent == dir {
			break
		}
		dir = parent
	}

	t.Fatal("Cannot find LLGO_ROOT")
	return ""
}
