//go:build !llgo
// +build !llgo

package build

import (
	"bytes"
	"fmt"
	"io"
	"os"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/mockable"
)

func mockRun(args []string, cfg *Config) {
	const maxAttempts = 3
	var lastErr error
	var lastPanic interface{}
	for attempt := 0; attempt < maxAttempts; attempt++ {
		mockable.EnableMock()
		func() {
			defer func() {
				if r := recover(); r != nil {
					if r != "exit" {
						lastPanic = r
					} else {
						exitCode := mockable.ExitCode()
						if (exitCode != 0) != false {
							lastPanic = fmt.Errorf("got exit code %d", exitCode)
						}
					}
				}
			}()
			file, _ := os.CreateTemp("", "llgo-*")
			cfg.OutFile = file.Name()
			file.Close()
			defer os.Remove(cfg.OutFile)
			_, err := Do(args, cfg)
			if err == nil {
				return // Success, return immediately from the inner function
			}
			lastErr = err
		}()

		if lastPanic == nil && lastErr == nil {
			return // Success, return from mockRun
		}
		// Continue to next attempt if this one failed
	}
	// If we get here, all attempts failed
	if lastPanic != nil {
		panic(lastPanic)
	}
	panic(fmt.Errorf("all %d attempts failed, last error: %v", maxAttempts, lastErr))
}

func TestRun(t *testing.T) {
	mockRun([]string{"../../cl/_testgo/print"}, &Config{Mode: ModeRun})
}

func TestTest(t *testing.T) {
	// FIXME(zzy): with builtin package test in a llgo test ./... will cause duplicate symbol error
	mockRun([]string{"../../cl/_testgo/runtest"}, &Config{Mode: ModeTest})
}

func TestExtest(t *testing.T) {
	originalStdout := os.Stdout
	defer func() { os.Stdout = originalStdout }()

	r, w, err := os.Pipe()
	if err != nil {
		t.Fatalf("os.Pipe failed: %v", err)
	}
	os.Stdout = w
	outputChan := make(chan string)
	go func() {
		var data bytes.Buffer
		io.Copy(&data, r)
		outputChan <- data.String()
	}()

	mockRun([]string{"../../cl/_testgo/runextest/..."}, &Config{Mode: ModeTest})

	w.Close()
	got := <-outputChan
	expected := "PASS\nPASS\nPASS\nPASS\n"
	if got != expected {
		t.Errorf("Expected output %q, but got %q", expected, got)
	}
}

func TestCmpTest(t *testing.T) {
	mockRun([]string{"../../cl/_testgo/runtest"}, &Config{Mode: ModeCmpTest})
}

func TestGenerateOutputFilenames(t *testing.T) {
	tests := []struct {
		name           string
		outFile        string
		binPath        string
		appExt         string
		binExt         string
		pkgName        string
		mode           Mode
		isMultiplePkgs bool
		wantAppSuffix  string
		wantOrgAppDiff bool // true if orgApp should be different from app
		wantErr        bool
	}{
		{
			name:           "empty outFile, single package",
			outFile:        "",
			binPath:        "/usr/local/bin",
			appExt:         "",
			binExt:         "",
			pkgName:        "hello",
			mode:           ModeBuild,
			isMultiplePkgs: false,
			wantAppSuffix:  "/usr/local/bin/hello",
			wantOrgAppDiff: false,
		},
		{
			name:           "empty outFile with appExt",
			outFile:        "",
			binPath:        "/usr/local/bin",
			appExt:         ".exe",
			binExt:         "",
			pkgName:        "hello",
			mode:           ModeBuild,
			isMultiplePkgs: false,
			wantAppSuffix:  "/usr/local/bin/hello.exe",
			wantOrgAppDiff: false,
		},
		{
			name:           "outFile without binExt",
			outFile:        "myapp",
			binPath:        "/usr/local/bin",
			appExt:         ".exe",
			binExt:         "",
			pkgName:        "hello",
			mode:           ModeBuild,
			isMultiplePkgs: false,
			wantAppSuffix:  "myapp.exe",
			wantOrgAppDiff: false,
		},
		{
			name:           "outFile with existing extension, no binExt",
			outFile:        "myapp.exe",
			binPath:        "/usr/local/bin",
			appExt:         ".exe",
			binExt:         "",
			pkgName:        "hello",
			mode:           ModeBuild,
			isMultiplePkgs: false,
			wantAppSuffix:  "myapp.exe",
			wantOrgAppDiff: false,
		},
		{
			name:           "outFile with binExt, different from existing extension",
			outFile:        "myapp",
			binPath:        "/usr/local/bin",
			appExt:         ".exe",
			binExt:         ".bin",
			pkgName:        "hello",
			mode:           ModeBuild,
			isMultiplePkgs: false,
			wantAppSuffix:  "myapp.bin",
			wantOrgAppDiff: true,
		},
		{
			name:           "outFile already ends with binExt",
			outFile:        "t.bin",
			binPath:        "/usr/local/bin",
			appExt:         ".exe",
			binExt:         ".bin",
			pkgName:        "hello",
			mode:           ModeBuild,
			isMultiplePkgs: false,
			wantAppSuffix:  "t.bin",
			wantOrgAppDiff: true,
		},
		{
			name:           "outFile with full path already ends with binExt",
			outFile:        "/path/to/t.bin",
			binPath:        "/usr/local/bin",
			appExt:         ".exe",
			binExt:         ".bin",
			pkgName:        "hello",
			mode:           ModeBuild,
			isMultiplePkgs: false,
			wantAppSuffix:  "/path/to/t.bin",
			wantOrgAppDiff: true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			app, orgApp, err := generateOutputFilenames(
				tt.outFile,
				tt.binPath,
				tt.appExt,
				tt.binExt,
				tt.pkgName,
				tt.mode,
				tt.isMultiplePkgs,
			)

			if (err != nil) != tt.wantErr {
				t.Errorf("generateOutputFilenames() error = %v, wantErr %v", err, tt.wantErr)
				return
			}

			if tt.wantAppSuffix != "" {
				if app != tt.wantAppSuffix {
					t.Errorf("generateOutputFilenames() app = %v, want %v", app, tt.wantAppSuffix)
				}
			}

			if tt.wantOrgAppDiff {
				if app == orgApp {
					t.Errorf("generateOutputFilenames() orgApp should be different from app, but both are %v", app)
				}
				// Clean up temp file
				if orgApp != "" && strings.Contains(orgApp, "llgo-") {
					os.Remove(orgApp)
				}
			} else {
				if app != orgApp {
					t.Errorf("generateOutputFilenames() orgApp = %v, want %v (same as app)", orgApp, app)
				}
			}
		})
	}
}

func TestGenerateOutputFilenames_EdgeCases(t *testing.T) {
	// Test case where outFile has same extension as binExt
	app, orgApp, err := generateOutputFilenames(
		"firmware.bin",
		"/usr/local/bin",
		".exe",
		".bin",
		"esp32app",
		ModeBuild,
		false,
	)

	if err != nil {
		t.Fatalf("Unexpected error: %v", err)
	}

	if app != "firmware.bin" {
		t.Errorf("Expected app to be 'firmware.bin', got '%s'", app)
	}

	if app == orgApp {
		t.Errorf("Expected orgApp to be different from app when binExt is present, but both are '%s'", app)
	}

	// Clean up temp file
	if orgApp != "" && strings.Contains(orgApp, "llgo-") {
		os.Remove(orgApp)
	}
}
