package main

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/goplus/llgo/compiler/internal/mockable"
)

func init() {
	origWd, err := os.Getwd()
	if err != nil {
		panic(err)
	}

	// Set LLGO_ROOT to project root
	llgoRoot := filepath.Join(origWd, "../../..")
	if err := os.Setenv("LLGO_ROOT", llgoRoot); err != nil {
		panic(fmt.Sprintf("Failed to set LLGO_ROOT: %v", err))
	}
}

func setupTestProject(t *testing.T) string {
	tmpDir := t.TempDir()

	// Create main.go
	mainGo := filepath.Join(tmpDir, "main.go")
	err := os.WriteFile(mainGo, []byte(`package main

import "fmt"
import "os"

func main() {
	var arg string = "LLGO"
	if len(os.Args) > 1 {
		arg = os.Args[1]
	}
	switch arg {
	case "stderr":
		fmt.Fprintln(os.Stderr, "Hello, World!")
	case "exit":
		os.Exit(1)
	default:
		fmt.Println("Hello, " + arg + "!")
	}
}
`), 0644)
	if err != nil {
		t.Fatalf("Failed to create main.go: %v", err)
	}

	// Create llgo.expect for cmptest
	expectFile := filepath.Join(tmpDir, "llgo.expect")
	err = os.WriteFile(expectFile, []byte(`#stdout
Hello, LLGO!

#stderr

#exit 0
`), 0644)
	if err != nil {
		t.Fatalf("Failed to create llgo.expect: %v", err)
	}

	// Create a go.mod file
	err = os.WriteFile(filepath.Join(tmpDir, "go.mod"), []byte(`module testproject

go 1.20
`), 0644)
	if err != nil {
		t.Fatalf("Failed to write go.mod: %v", err)
	}

	return tmpDir
}

func TestProjectCommands(t *testing.T) {
	tests := []struct {
		name    string
		args    []string
		wantErr bool
		setup   func(dir string) error
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
			name:    "run command with file",
			args:    []string{"llgo", "run", "main.go"},
			wantErr: false,
		},
		{
			name:    "run command verbose",
			args:    []string{"llgo", "run", "-v", "."},
			wantErr: false,
		},
		{
			name:    "clean command",
			args:    []string{"llgo", "clean"},
			wantErr: false,
		},
		{
			name:    "cmptest command",
			args:    []string{"llgo", "cmptest", "."},
			wantErr: false,
		},
		{
			name:    "cmptest command with gen",
			args:    []string{"llgo", "cmptest", "-gen", "."},
			wantErr: false,
			setup: func(dir string) error {
				return os.Remove(filepath.Join(dir, "llgo.expect"))
			},
		},
		{
			name:    "cmptest command with args",
			args:    []string{"llgo", "cmptest", ".", "World"},
			wantErr: true,
			setup: func(dir string) error {
				return os.WriteFile(filepath.Join(dir, "llgo.expect"), []byte(`#stdout
Hello, World!

#stderr

#exit 0
`), 0644)
			},
		},
		{
			name:    "cmptest command with different stderr",
			args:    []string{"llgo", "cmptest", ".", "stderr"},
			wantErr: true,
		},
		{
			name:    "cmptest command with different exit code",
			args:    []string{"llgo", "cmptest", ".", "exit"},
			wantErr: true,
			setup: func(dir string) error {
				// Create llgo.expect with different exit code
				return os.WriteFile(filepath.Join(dir, "llgo.expect"), []byte(`#stdout
Hello, LLGO!

#stderr

#exit 1
`), 0644)
			},
		},
		{
			name:    "cmptest command without llgo.expect to compare with go run",
			args:    []string{"llgo", "cmptest", "."},
			wantErr: false,
			setup: func(dir string) error {
				return os.Remove(filepath.Join(dir, "llgo.expect"))
			},
		},
		{
			name:    "cmptest command with different go run output",
			args:    []string{"llgo", "cmptest", "."},
			wantErr: true,
			setup: func(dir string) error {
				// Remove llgo.expect file
				if err := os.Remove(filepath.Join(dir, "llgo.expect")); err != nil && !os.IsNotExist(err) {
					return err
				}

				// Create main_llgo.go for llgo
				if err := os.WriteFile(filepath.Join(dir, "main_llgo.go"), []byte(`//go:build llgo
// +build llgo

package main

import "fmt"

func main() {
	fmt.Println("Hello, LLGO!")
}
`), 0644); err != nil {
					return err
				}

				// Create main_go.go for go
				return os.WriteFile(filepath.Join(dir, "main.go"), []byte(`//go:build !llgo
// +build !llgo

package main

import "fmt"

func main() {
	fmt.Println("Hello, Go!")
}
`), 0644)
			},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			var testErr error
			const maxAttempts = 4
			for attempt := 1; attempt <= maxAttempts; attempt++ {
				testErr = func() error {
					// Create a new test directory for each test case
					tmpDir := setupTestProject(t)
					defer os.RemoveAll(tmpDir)

					// Change to test project directory
					if err := os.Chdir(tmpDir); err != nil {
						return fmt.Errorf("Failed to change directory: %v", err)
					}

					if tt.setup != nil {
						if err := tt.setup(tmpDir); err != nil {
							return fmt.Errorf("Failed to setup test: %v", err)
						}
					}

					mockable.EnableMock()
					var exitErr error
					func() {
						defer func() {
							if r := recover(); r != nil {
								if r != "exit" {
									if !tt.wantErr {
										exitErr = fmt.Errorf("unexpected panic: %v", r)
									}
								} else {
									exitCode := mockable.ExitCode()
									if (exitCode != 0) != tt.wantErr {
										exitErr = fmt.Errorf("got exit code %d, wantErr %v", exitCode, tt.wantErr)
									}
								}
							}
						}()

						os.Args = tt.args
						main()
					}()
					if exitErr != nil {
						return exitErr
					}

					// For build/install commands, check if binary was created
					if strings.HasPrefix(tt.name, "build") || strings.HasPrefix(tt.name, "install") {
						binName := "testproject"
						var binPath string
						if strings.HasPrefix(tt.name, "install") {
							// For install command, binary should be in GOBIN or GOPATH/bin
							gobin := os.Getenv("GOBIN")
							if gobin == "" {
								gopath := os.Getenv("GOPATH")
								if gopath == "" {
									gopath = filepath.Join(os.Getenv("HOME"), "go")
								}
								gobin = filepath.Join(gopath, "bin")
							}
							binPath = filepath.Join(gobin, binName)
						} else {
							// For build command, binary should be in current directory
							binPath = filepath.Join(tmpDir, binName)
						}
						if _, err := os.Stat(binPath); os.IsNotExist(err) {
							return fmt.Errorf("Binary %s was not created at %s", binName, binPath)
						}
					}
					return nil
				}()

				if testErr == nil {
					break
				}

				if attempt < maxAttempts {
					t.Logf("Test failed on attempt %v/%v: %v. Retrying...", testErr, attempt, maxAttempts)
				}
			}

			if testErr != nil {
				t.Error(testErr)
			}
		})
	}
}

func TestCommandHandling(t *testing.T) {
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
		{
			name: "help clean",
			args: []string{"llgo", "help", "clean"},
		},
		{
			name: "help cmptest",
			args: []string{"llgo", "help", "cmptest"},
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
