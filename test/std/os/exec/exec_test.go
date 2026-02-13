package exec_test

import (
	"bytes"
	"context"
	"io"
	"os"
	"os/exec"
	"runtime"
	"strings"
	"testing"
)

func TestCommand(t *testing.T) {
	cmd := exec.Command("echo", "test")
	if cmd == nil {
		t.Fatal("Command returned nil")
	}

	if cmd.Path == "" {
		t.Error("Command Path is empty")
	}
}

func TestCommandContext(t *testing.T) {
	ctx := context.Background()
	cmd := exec.CommandContext(ctx, "echo", "test")
	if cmd == nil {
		t.Fatal("CommandContext returned nil")
	}
}

func TestCmdRun(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	cmd := exec.Command("echo", "hello")
	err := cmd.Run()
	if err != nil {
		t.Fatalf("Run error: %v", err)
	}
}

func TestCmdOutput(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	cmd := exec.Command("echo", "hello")
	output, err := cmd.Output()
	if err != nil {
		t.Fatalf("Output error: %v", err)
	}

	result := strings.TrimSpace(string(output))
	if result != "hello" {
		t.Errorf("Output = %q, want %q", result, "hello")
	}
}

func TestCmdCombinedOutput(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	cmd := exec.Command("echo", "test")
	output, err := cmd.CombinedOutput()
	if err != nil {
		t.Fatalf("CombinedOutput error: %v", err)
	}

	if len(output) == 0 {
		t.Error("CombinedOutput returned empty")
	}
}

func TestCmdStdin(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	cmd := exec.Command("cat")
	cmd.Stdin = strings.NewReader("test input")

	output, err := cmd.Output()
	if err != nil {
		t.Fatalf("Output error: %v", err)
	}

	result := string(output)
	if result != "test input" {
		t.Errorf("Output = %q, want %q", result, "test input")
	}
}

func TestCmdStdout(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	var buf bytes.Buffer
	cmd := exec.Command("echo", "stdout test")
	cmd.Stdout = &buf

	err := cmd.Run()
	if err != nil {
		t.Fatalf("Run error: %v", err)
	}

	output := strings.TrimSpace(buf.String())
	if output != "stdout test" {
		t.Errorf("Stdout = %q, want %q", output, "stdout test")
	}
}

func TestCmdStderr(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	var buf bytes.Buffer
	cmd := exec.Command("sh", "-c", "echo stderr test >&2")
	cmd.Stderr = &buf

	err := cmd.Run()
	if err != nil {
		t.Fatalf("Run error: %v", err)
	}

	output := strings.TrimSpace(buf.String())
	if output != "stderr test" {
		t.Errorf("Stderr = %q, want %q", output, "stderr test")
	}
}

func TestCmdStart(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	cmd := exec.Command("sleep", "0.1")
	err := cmd.Start()
	if err != nil {
		t.Fatalf("Start error: %v", err)
	}

	if cmd.Process == nil {
		t.Error("Process is nil after Start")
	}

	err = cmd.Wait()
	if err != nil {
		t.Errorf("Wait error: %v", err)
	}
}

func TestCmdWait(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	cmd := exec.Command("echo", "test")
	err := cmd.Start()
	if err != nil {
		t.Fatalf("Start error: %v", err)
	}

	err = cmd.Wait()
	if err != nil {
		t.Errorf("Wait error: %v", err)
	}

	if cmd.ProcessState == nil {
		t.Error("ProcessState is nil after Wait")
	}
}

func TestCmdStdinPipe(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	cmd := exec.Command("cat")
	stdin, err := cmd.StdinPipe()
	if err != nil {
		t.Fatalf("StdinPipe error: %v", err)
	}

	if err := cmd.Start(); err != nil {
		t.Fatalf("Start error: %v", err)
	}

	io.WriteString(stdin, "pipe test")
	stdin.Close()

	if err := cmd.Wait(); err != nil {
		t.Errorf("Wait error: %v", err)
	}
}

func TestCmdStdoutPipe(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	cmd := exec.Command("echo", "pipe output")
	stdout, err := cmd.StdoutPipe()
	if err != nil {
		t.Fatalf("StdoutPipe error: %v", err)
	}

	if err := cmd.Start(); err != nil {
		t.Fatalf("Start error: %v", err)
	}

	data, err := io.ReadAll(stdout)
	if err != nil {
		t.Fatalf("ReadAll error: %v", err)
	}

	output := strings.TrimSpace(string(data))
	if output != "pipe output" {
		t.Errorf("Output = %q, want %q", output, "pipe output")
	}

	if err := cmd.Wait(); err != nil {
		t.Errorf("Wait error: %v", err)
	}
}

func TestCmdStderrPipe(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	cmd := exec.Command("sh", "-c", "echo pipe error >&2")
	stderr, err := cmd.StderrPipe()
	if err != nil {
		t.Fatalf("StderrPipe error: %v", err)
	}

	if err := cmd.Start(); err != nil {
		t.Fatalf("Start error: %v", err)
	}

	data, err := io.ReadAll(stderr)
	if err != nil {
		t.Fatalf("ReadAll error: %v", err)
	}

	output := strings.TrimSpace(string(data))
	if output != "pipe error" {
		t.Errorf("Output = %q, want %q", output, "pipe error")
	}

	if err := cmd.Wait(); err != nil {
		t.Errorf("Wait error: %v", err)
	}
}

func TestCmdEnv(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	cmd := exec.Command("sh", "-c", "echo $TEST_VAR")
	cmd.Env = append(os.Environ(), "TEST_VAR=test_value")

	output, err := cmd.Output()
	if err != nil {
		t.Fatalf("Output error: %v", err)
	}

	result := strings.TrimSpace(string(output))
	if result != "test_value" {
		t.Errorf("Output = %q, want %q", result, "test_value")
	}
}

func TestCmdDir(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	tmpDir := strings.TrimSuffix(os.TempDir(), "/")
	cmd := exec.Command("pwd")
	cmd.Dir = tmpDir

	output, err := cmd.Output()
	if err != nil {
		t.Fatalf("Output error: %v", err)
	}

	result := strings.TrimSpace(string(output))
	if result != tmpDir {
		t.Errorf("Output = %q, want %q", result, tmpDir)
	}
}

func TestCmdString(t *testing.T) {
	cmd := exec.Command("echo", "test")
	str := cmd.String()
	if str == "" {
		t.Error("String() returned empty")
	}
}

func TestLookPath(t *testing.T) {
	path, err := exec.LookPath("echo")
	if err != nil {
		t.Fatalf("LookPath error: %v", err)
	}

	if path == "" {
		t.Error("LookPath returned empty path")
	}
}

func TestError(t *testing.T) {
	err := &exec.Error{
		Name: "test",
		Err:  os.ErrNotExist,
	}

	errStr := err.Error()
	if errStr == "" {
		t.Error("Error.Error() returned empty string")
	}
}

func TestExitError(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	cmd := exec.Command("sh", "-c", "exit 1")
	err := cmd.Run()
	if err == nil {
		t.Fatal("Expected error for exit code 1")
	}

	exitErr, ok := err.(*exec.ExitError)
	if !ok {
		t.Fatalf("Error is not ExitError: %T", err)
	}

	if exitErr.ExitCode() != 1 {
		t.Errorf("ExitCode = %d, want 1", exitErr.ExitCode())
	}
}

func TestErrNotFound(t *testing.T) {
	if exec.ErrNotFound == nil {
		t.Error("ErrNotFound should not be nil")
	}
}

func TestErrDot(t *testing.T) {
	if exec.ErrDot == nil {
		t.Error("ErrDot should not be nil")
	}
}

func TestErrWaitDelay(t *testing.T) {
	if exec.ErrWaitDelay == nil {
		t.Error("ErrWaitDelay should not be nil")
	}
}

func TestCmdEnviron(t *testing.T) {
	cmd := exec.Command("echo", "test")
	cmd.Env = []string{"VAR1=value1", "VAR2=value2"}

	environ := cmd.Environ()
	if len(environ) == 0 {
		t.Error("Environ returned empty slice")
	}

	found := false
	for _, env := range environ {
		if strings.HasPrefix(env, "VAR1=") {
			found = true
			break
		}
	}
	if !found {
		t.Error("Environ doesn't contain VAR1")
	}
}

func TestErrorUnwrap(t *testing.T) {
	baseErr := os.ErrNotExist
	err := &exec.Error{
		Name: "test",
		Err:  baseErr,
	}

	unwrapped := err.Unwrap()
	if unwrapped != baseErr {
		t.Errorf("Unwrap = %v, want %v", unwrapped, baseErr)
	}
}

func TestExitErrorError(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	cmd := exec.Command("sh", "-c", "exit 42")
	err := cmd.Run()
	if err == nil {
		t.Fatal("Expected error for exit code 42")
	}

	exitErr, ok := err.(*exec.ExitError)
	if !ok {
		t.Fatalf("Error is not ExitError: %T", err)
	}

	errStr := exitErr.Error()
	if errStr == "" {
		t.Error("ExitError.Error() returned empty string")
	}
}
