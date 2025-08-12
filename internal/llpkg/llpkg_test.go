package llpkg

import (
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/llpkg/installer"
)

func TestIsGithubHosted(t *testing.T) {
	tests := []struct {
		name       string
		modulePath string
		expected   bool
	}{
		{
			name:       "github hosted module",
			modulePath: "github.com/goplus/llpkg/libxslt",
			expected:   true,
		},
		{
			name:       "github hosted root",
			modulePath: "github.com/goplus/llpkg",
			expected:   true,
		},
		{
			name:       "other github module",
			modulePath: "github.com/other/repo",
			expected:   false,
		},
		{
			name:       "non-github module",
			modulePath: "example.com/module",
			expected:   false,
		},
		{
			name:       "empty path",
			modulePath: "",
			expected:   false,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := IsGithubHosted(tt.modulePath)
			if result != tt.expected {
				t.Errorf("expected %v, got %v", tt.expected, result)
			}
		})
	}
}

func TestCanSkipFetch(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "can_skip_fetch_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	t.Run("pkgconfig exists", func(t *testing.T) {
		moduleDir := filepath.Join(tempDir, "with_pkgconfig")
		pkgConfigDir := filepath.Join(moduleDir, "lib", "pkgconfig")
		err := os.MkdirAll(pkgConfigDir, 0755)
		if err != nil {
			t.Fatal(err)
		}

		result := CanSkipFetch(moduleDir)
		if !result {
			t.Error("expected true when pkgconfig directory exists")
		}
	})

	t.Run("pkgconfig does not exist", func(t *testing.T) {
		moduleDir := filepath.Join(tempDir, "without_pkgconfig")
		err := os.MkdirAll(moduleDir, 0755)
		if err != nil {
			t.Fatal(err)
		}

		result := CanSkipFetch(moduleDir)
		if result {
			t.Error("expected false when pkgconfig directory does not exist")
		}
	})

	t.Run("module dir does not exist", func(t *testing.T) {
		nonexistentDir := filepath.Join(tempDir, "nonexistent")

		result := CanSkipFetch(nonexistentDir)
		if result {
			t.Error("expected false when module directory does not exist")
		}
	})
}

func TestModuleDirOf(t *testing.T) {
	tests := []struct {
		name          string
		modulePath    string
		moduleVersion string
		expectError   bool
		expectSuffix  string
	}{
		{
			name:          "normal module",
			modulePath:    "github.com/goplus/llpkg/libxslt",
			moduleVersion: "v1.0.3",
			expectError:   false,
			expectSuffix:  "github.com/goplus/llpkg/libxslt@v1.0.3",
		},
		{
			name:          "module with special chars",
			modulePath:    "example.com/module!test",
			moduleVersion: "v2.0.0",
			expectError:   false,
			expectSuffix:  "example.com/module\\!test@v2.0.0",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result, err := ModuleDirOf(tt.modulePath, tt.moduleVersion)

			if tt.expectError {
				if err == nil {
					t.Error("expected error but got none")
				}
				return
			}

			if err != nil {
				t.Fatalf("unexpected error: %v", err)
			}

			if !strings.HasSuffix(result, tt.expectSuffix) {
				t.Errorf("expected result to end with %s, got %s", tt.expectSuffix, result)
			}
		})
	}
}

func TestParseConfigFile(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "parse_config_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	t.Run("valid config file", func(t *testing.T) {
		config := LLPkgConfig{
			Upstream: UpstreamConfig{
				Installer: InstallerConfig{
					Name: "conan",
					Config: map[string]string{
						"profile": "default",
					},
				},
				Package: installer.Package{
					Name:    "libxslt",
					Version: "v1.0.3",
				},
			},
		}

		configFile := filepath.Join(tempDir, "valid_config.json")
		file, err := os.Create(configFile)
		if err != nil {
			t.Fatal(err)
		}

		encoder := json.NewEncoder(file)
		err = encoder.Encode(config)
		file.Close()
		if err != nil {
			t.Fatal(err)
		}

		result, err := ParseConfigFile(configFile)
		if err != nil {
			t.Fatal(err)
		}

		if result.Upstream.Installer.Name != "conan" {
			t.Errorf("expected installer name 'conan', got %s", result.Upstream.Installer.Name)
		}

		if result.Upstream.Package.Name != "libxslt" {
			t.Errorf("expected package name 'libxslt', got %s", result.Upstream.Package.Name)
		}

		if result.Upstream.Package.Version != "v1.0.3" {
			t.Errorf("expected package version 'v1.0.3', got %s", result.Upstream.Package.Version)
		}
	})

	t.Run("nonexistent file", func(t *testing.T) {
		nonexistentFile := filepath.Join(tempDir, "nonexistent.json")

		_, err := ParseConfigFile(nonexistentFile)
		if err == nil {
			t.Error("expected error for nonexistent file")
		}
	})

	t.Run("invalid json", func(t *testing.T) {
		invalidFile := filepath.Join(tempDir, "invalid.json")
		err := os.WriteFile(invalidFile, []byte("invalid json content"), 0644)
		if err != nil {
			t.Fatal(err)
		}

		_, err = ParseConfigFile(invalidFile)
		if err == nil {
			t.Error("expected error for invalid JSON")
		}
	})
}
