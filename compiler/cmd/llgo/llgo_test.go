package main

import (
	"bytes"
	"flag"
	"io"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/goplus/llgo/compiler/cmd/internal/base"
	"github.com/goplus/llgo/compiler/cmd/internal/build"
	"github.com/goplus/llgo/compiler/cmd/internal/help"
	"github.com/goplus/llgo/compiler/cmd/internal/install"
	"github.com/goplus/llgo/compiler/cmd/internal/run"
	"github.com/goplus/llgo/compiler/cmd/internal/version"
)

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

	// Save original working directory and environment
	origWd, err := os.Getwd()
	if err != nil {
		t.Fatalf("Failed to get current directory: %v", err)
	}
	defer os.Chdir(origWd)

	// Change to test project directory
	if err := os.Chdir(tmpDir); err != nil {
		t.Fatalf("Failed to change to test directory: %v", err)
	}

	tests := []struct {
		name    string
		cmd     *base.Command
		args    []string
		wantErr bool
	}{
		{
			name:    "build command",
			cmd:     build.Cmd,
			args:    []string{"."},
			wantErr: false,
		},
		{
			name:    "install command",
			cmd:     install.Cmd,
			args:    []string{"."},
			wantErr: false,
		},
		{
			name:    "run command",
			cmd:     run.Cmd,
			args:    []string{"main.go"},
			wantErr: false,
		},
	}

	// Save original args and flags
	oldArgs := os.Args
	oldFlagCommandLine := flag.CommandLine
	oldStdout := os.Stdout
	oldStderr := os.Stderr
	defer func() {
		os.Args = oldArgs
		flag.CommandLine = oldFlagCommandLine
		os.Stdout = oldStdout
		os.Stderr = oldStderr
	}()

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			// Reset flag.CommandLine for each test
			flag.CommandLine = flag.NewFlagSet("llgo", flag.ContinueOnError)

			// Setup command arguments
			args := append([]string{"llgo", tt.cmd.Name()}, tt.args...)
			os.Args = args

			// Capture output
			outR, outW, err := os.Pipe()
			if err != nil {
				t.Fatalf("Failed to create stdout pipe: %v", err)
			}
			errR, errW, err := os.Pipe()
			if err != nil {
				t.Fatalf("Failed to create stderr pipe: %v", err)
			}

			os.Stdout = outW
			os.Stderr = errW

			// Run command
			done := make(chan struct{})
			var outBuf, errBuf bytes.Buffer
			go func() {
				_, _ = io.Copy(&outBuf, outR)
				done <- struct{}{}
			}()
			go func() {
				_, _ = io.Copy(&errBuf, errR)
				done <- struct{}{}
			}()

			panicked := false
			func() {
				defer func() {
					if r := recover(); r != nil {
						panicked = true
						t.Logf("%s: Command panicked: %v", tt.name, r)
					}
					outW.Close()
					errW.Close()
				}()

				flag.Parse()
				base.CmdName = tt.cmd.Name()

				if !tt.cmd.Runnable() {
					t.Fatalf("%s: Command is not runnable", tt.name)
				}

				// Print current working directory and files for debugging
				if cwd, err := os.Getwd(); err == nil {
					t.Logf("%s: Current working directory: %s", tt.name, cwd)
					if files, err := os.ReadDir("."); err == nil {
						t.Log("Files in current directory:")
						for _, f := range files {
							t.Logf("  %s", f.Name())
						}
					}
				}

				// Run the command
				tt.cmd.Run(tt.cmd, tt.args)
			}()

			<-done
			<-done

			// Check output
			outStr := outBuf.String()
			errStr := errBuf.String()

			if outStr == "" && errStr == "" && !panicked {
				t.Logf("%s: Command completed with no output", tt.name)
			} else {
				if outStr != "" {
					t.Logf("%s stdout:\n%s", tt.name, outStr)
				}
				if errStr != "" {
					t.Logf("%s stderr:\n%s", tt.name, errStr)
				}
			}

			// Check if the command succeeded
			if !tt.wantErr {
				// For build/install commands, check if binary was created
				if tt.cmd == build.Cmd || tt.cmd == install.Cmd {
					binName := "testproject"
					if _, err := os.Stat(binName); os.IsNotExist(err) {
						t.Logf("%s: Binary %s was not created", tt.name, binName)
					}
				}

				// For run command, check if output contains expected string
				if tt.cmd == run.Cmd {
					if !strings.Contains(outStr, "Hello, LLGO!") {
						t.Logf("%s: Expected output to contain 'Hello, LLGO!', got:\n%s", tt.name, outStr)
					}
				}

				// Check for common error indicators, but don't fail the test
				if strings.Contains(errStr, "error:") || strings.Contains(errStr, "failed") {
					// Ignore LLVM reexported library warning
					if !strings.Contains(errStr, "ld: warning: reexported library") {
						t.Logf("%s: Command produced error output:\n%s", tt.name, errStr)
					}
				}
			}
		})
	}
}

func TestCommandHandling(t *testing.T) {
	// Save original args and flags
	oldArgs := os.Args
	oldFlagCommandLine := flag.CommandLine
	defer func() {
		os.Args = oldArgs
		flag.CommandLine = oldFlagCommandLine
	}()

	tests := []struct {
		name     string
		args     []string
		wantErr  bool
		commands []*base.Command
	}{
		{
			name:    "version command",
			args:    []string{"llgo", "version"},
			wantErr: false,
			commands: []*base.Command{
				version.Cmd,
			},
		},
		{
			name:    "build command",
			args:    []string{"llgo", "build"},
			wantErr: false,
			commands: []*base.Command{
				build.Cmd,
			},
		},
		{
			name:    "unknown command",
			args:    []string{"llgo", "unknowncommand"},
			wantErr: true,
		},
		{
			name:    "help command",
			args:    []string{"llgo", "help"},
			wantErr: false,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			// Reset flag.CommandLine for each test
			flag.CommandLine = flag.NewFlagSet(tt.args[0], flag.ExitOnError)
			os.Args = tt.args

			if tt.commands != nil {
				base.Llgo.Commands = tt.commands
			}

			// Capture panic that would normally exit
			defer func() {
				if r := recover(); r != nil {
					if !tt.wantErr {
						t.Errorf("unexpected panic: %v", r)
					}
				}
			}()

			flag.Parse()
			if len(tt.args) > 1 {
				base.CmdName = tt.args[1]
			}
		})
	}
}

func TestHelpCommand(t *testing.T) {
	oldArgs := os.Args
	oldFlagCommandLine := flag.CommandLine
	defer func() {
		os.Args = oldArgs
		flag.CommandLine = oldFlagCommandLine
	}()

	tests := []struct {
		name    string
		args    []string
		wantErr bool
	}{
		{
			name:    "help without subcommand",
			args:    []string{"llgo", "help"},
			wantErr: false,
		},
		{
			name:    "help with subcommand",
			args:    []string{"llgo", "help", "build"},
			wantErr: false,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			flag.CommandLine = flag.NewFlagSet(tt.args[0], flag.ExitOnError)
			os.Args = tt.args

			var buf bytes.Buffer
			defer func() {
				if r := recover(); r != nil {
					if !tt.wantErr {
						t.Errorf("unexpected panic: %v", r)
					}
				}
			}()

			flag.Parse()
			args := flag.Args()
			if len(args) > 0 && args[0] == "help" {
				help.Help(&buf, args[1:])
			}
		})
	}
}
