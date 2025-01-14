package main

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/goplus/llgo/compiler/internal/mockable"
)

var origWd string

func init() {
	var err error
	origWd, err = os.Getwd()
	if err != nil {
		panic(err)
	}
}

type testContext struct {
	origLLGORoot string
	tmpDir       string
}

func setupTest(t *testing.T) *testContext {
	ctx := &testContext{}

	// Save original state
	ctx.origLLGORoot = os.Getenv("LLGO_ROOT")

	// Create temporary LLGO_ROOT
	tmpDir, err := os.MkdirTemp("", "llgo-root-*")
	if err != nil {
		t.Fatalf("Failed to create temp dir: %v", err)
	}
	ctx.tmpDir = tmpDir

	// Set LLGO_ROOT
	llgoRoot := filepath.Join(origWd, "../../..")
	if err := os.Setenv("LLGO_ROOT", llgoRoot); err != nil {
		os.RemoveAll(tmpDir)
		t.Fatalf("Failed to set LLGO_ROOT: %v", err)
	}
	t.Logf("LLGO_ROOT set to: %s", llgoRoot)
	mockable.EnableMock()

	return ctx
}

func teardownTest(ctx *testContext) {
	os.Chdir(origWd)
	os.Setenv("LLGO_ROOT", ctx.origLLGORoot)
	if ctx.tmpDir != "" {
		os.RemoveAll(ctx.tmpDir)
	}
}

func setupTestProject(t *testing.T) string {
	// Create a temporary directory for the test project
	tmpDir, err := os.MkdirTemp("", "llgo-test-*")
	if err != nil {
		t.Fatalf("Failed to create temp dir: %v", err)
	}

	// Create a simple Go program
	mainFile := filepath.Join(tmpDir, "main.go")
	err = os.WriteFile(mainFile, []byte(`package main

import "fmt"

func main() {
	fmt.Println("Hello, LLGO!")
}
`), 0644)
	if err != nil {
		os.RemoveAll(tmpDir)
		t.Fatalf("Failed to write main.go: %v", err)
	}

	// Create a go.mod file
	goMod := filepath.Join(tmpDir, "go.mod")
	err = os.WriteFile(goMod, []byte(`module testproject

go 1.20
`), 0644)
	if err != nil {
		os.RemoveAll(tmpDir)
		t.Fatalf("Failed to write go.mod: %v", err)
	}

	return tmpDir
}

func TestProjectCommands(t *testing.T) {
	// Setup test project
	tmpDir := setupTestProject(t)
	defer os.RemoveAll(tmpDir)

	ctx := setupTest(t)
	defer teardownTest(ctx)

	// Change to test project directory
	if err := os.Chdir(tmpDir); err != nil {
		t.Fatalf("Failed to change to test directory: %v", err)
	}

	tests := []struct {
		name    string
		args    []string
		wantErr bool
	}{
		{
			name:    "build command",
			args:    []string{"llgo", "build", "."},
			wantErr: false,
		},
		{
			name:    "install command",
			args:    []string{"llgo", "install", "."},
			wantErr: false,
		},
		{
			name:    "run command",
			args:    []string{"llgo", "run", "."},
			wantErr: false,
		},
		{
			name:    "run command",
			args:    []string{"llgo", "run", "main.go"},
			wantErr: false,
		},
		{
			name:    "run command",
			args:    []string{"llgo", "run", "-v", "."},
			wantErr: false,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			defer func() {
				if r := recover(); r != nil {
					if r != "exit" {
						t.Errorf("unexpected panic: %v", r)
					}
					exitCode := mockable.ExitCode()
					if (exitCode != 0) != tt.wantErr {
						t.Errorf("got exit code %d, wantErr %v", exitCode, tt.wantErr)
					}
				}
			}()

			os.Args = tt.args
			main()

			// For build/install commands, check if binary was created
			if strings.HasPrefix(tt.name, "build") || strings.HasPrefix(tt.name, "install") {
				binName := "testproject"
				if _, err := os.Stat(binName); os.IsNotExist(err) {
					t.Errorf("Binary %s was not created", binName)
				}
			}
		})
	}
}

func TestCommandHandling(t *testing.T) {
	ctx := setupTest(t)
	defer teardownTest(ctx)

	tests := []struct {
		name    string
		args    []string
		wantErr bool
	}{
		{
			name:    "version command",
			args:    []string{"llgo", "version"},
			wantErr: false,
		},
		{
			name:    "help command",
			args:    []string{"llgo", "help"},
			wantErr: false,
		},
		{
			name:    "invalid command",
			args:    []string{"llgo", "invalid"},
			wantErr: true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			defer func() {
				if r := recover(); r != nil {
					if r != "exit" {
						t.Errorf("unexpected panic: %v", r)
					}
					exitCode := mockable.ExitCode()
					if (exitCode != 0) != tt.wantErr {
						t.Errorf("got exit code %d, wantErr %v", exitCode, tt.wantErr)
					}
				}
			}()

			os.Args = tt.args
			main()
		})
	}
}

func TestHelpCommand(t *testing.T) {
	ctx := setupTest(t)
	defer teardownTest(ctx)

	tests := []struct {
		name string
		args []string
	}{
		{
			name: "help build",
			args: []string{"llgo", "help", "build"},
		},
		{
			name: "help install",
			args: []string{"llgo", "help", "install"},
		},
		{
			name: "help run",
			args: []string{"llgo", "help", "run"},
		},
		{
			name: "help version",
			args: []string{"llgo", "help", "version"},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			defer func() {
				if r := recover(); r != nil {
					if r != "exit" {
						t.Errorf("unexpected panic: %v", r)
					}
					exitCode := mockable.ExitCode()
					if exitCode != 0 {
						t.Errorf("got exit code %d, want 0", exitCode)
					}
				}
			}()

			os.Args = tt.args
			main()
		})
	}
}
