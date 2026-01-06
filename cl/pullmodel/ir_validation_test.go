//go:build !llgo
// +build !llgo

package pullmodel

import (
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
)

// TestGeneratedIR_HasPollCall verifies that generated LLVM IR contains actual Poll calls
func TestGeneratedIR_HasPollCall(t *testing.T) {
	// Find the _testpull/basic directory (in cl/_testpull, not cl/pullmodel/_testpull)
	wd, _ := os.Getwd()
	testDir := filepath.Join(wd, "..", "_testpull", "basic")
	outLL := filepath.Join(testDir, "out.ll")

	// Check if out.ll exists
	if _, err := os.Stat(outLL); os.IsNotExist(err) {
		t.Skip("out.ll not found, run 'go run chore/llgen _testpull/basic' first")
	}

	// Read the file
	content, err := os.ReadFile(outLL)
	if err != nil {
		t.Fatalf("Failed to read out.ll: %v", err)
	}

	ir := string(content)

	// Check for Poll method definition
	if !strings.Contains(ir, "@\"Simple$Poll\"") {
		t.Error("Generated IR should contain Simple$Poll method")
	}

	// Check for actual Poll call to sub-future
	if !strings.Contains(ir, "call %\"github.com/goplus/llgo/async.Poll[int]\"") {
		t.Error("Generated IR should contain Poll call to sub-future")
	}

	// Check for branch instruction based on ready field
	if !strings.Contains(ir, "br i1 %") {
		t.Error("Generated IR should contain conditional branch for ready check")
	}

	// Check for state switch
	if !strings.Contains(ir, "switch i8 %") {
		t.Error("Generated IR should contain switch for state dispatch")
	}

	// Check for context parameter (ptr %1 is ctx)
	if !strings.Contains(ir, "@\"Simple$Poll\"(ptr %0, ptr %1)") {
		t.Error("Generated IR should have Poll method with receiver and ctx parameters")
	}

	// Check for nil check (sub-future initialization guard)
	if !strings.Contains(ir, "icmp eq ptr") && !strings.Contains(ir, ", null") {
		t.Error("Generated IR should contain nil check for sub-future")
	}

	t.Log("Generated IR validation passed!")
}

// TestGeneratedIR_Sequential verifies sequential awaits generate multiple Poll calls
func TestGeneratedIR_Sequential(t *testing.T) {
	wd, _ := os.Getwd()
	testDir := filepath.Join(wd, "..", "_testpull", "sequential")
	outLL := filepath.Join(testDir, "out.ll")

	if _, err := os.Stat(outLL); os.IsNotExist(err) {
		t.Skip("sequential/out.ll not found")
	}

	content, err := os.ReadFile(outLL)
	if err != nil {
		t.Fatalf("Failed to read out.ll: %v", err)
	}

	ir := string(content)

	// Count Poll calls - should have 2 for sequential example
	pollCalls := strings.Count(ir, "call %\"github.com/goplus/llgo/async.Poll[int]\"")
	if pollCalls < 2 {
		t.Errorf("Sequential example should have at least 2 Poll calls, got %d", pollCalls)
	}

	t.Logf("Found %d Poll calls in sequential example", pollCalls)
}

// TestLLGen_Basic runs llgen on basic example and verifies success
func TestLLGen_Basic(t *testing.T) {
	if testing.Short() {
		t.Skip("Skipping llgen test in short mode")
	}

	wd, _ := os.Getwd()
	projectRoot := filepath.Join(wd, "..", "..")
	testDir := filepath.Join(wd, "..", "_testpull", "basic")

	// Run llgen
	cmd := exec.Command("go", "run", filepath.Join(projectRoot, "chore", "llgen"), ".")
	cmd.Dir = testDir
	output, err := cmd.CombinedOutput()

	if err != nil {
		t.Fatalf("llgen failed: %v\nOutput: %s", err, output)
	}

	// Check output contains success message
	if !strings.Contains(string(output), "Successfully generated state machine") {
		t.Errorf("Expected success message in output: %s", output)
	}

	t.Log("llgen basic test passed")
}
