package demo

import (
	"encoding/json"
	"os"
	"os/exec"
	"path/filepath"
	"testing"
)

type PackageInfo struct {
	Name string `json:"Name"`
}

func TestDemo(t *testing.T) {
	projectRoot, err := findProjectRoot()
	if err != nil {
		t.Fatalf("Failed to find project root: %v", err)
	}

	if err := os.Chdir(projectRoot); err != nil {
		t.Fatalf("Failed to change to project root directory: %v", err)
	}

	for _, dir := range []string{"./_demo/", "./_pydemo/"} {
		entries, err := os.ReadDir(dir)
		if err != nil {
			t.Fatalf("Failed to read directory %s: %v", dir, err)
		}

		for _, entry := range entries {
			if !entry.IsDir() {
				continue
			}

			dirPath := dir + entry.Name()
			cmd := exec.Command("go", "list", "-json", dirPath)
			output, err := cmd.Output()
			if err != nil {
				t.Logf("Failed to run go list for %s: %v, skip", dirPath, err)
				continue
			}

			var pkgInfo PackageInfo
			if err := json.Unmarshal(output, &pkgInfo); err != nil {
				t.Fatalf("Failed to parse package info: %v", err)
			}

			if pkgInfo.Name == "main" {
				t.Run(dirPath, func(t *testing.T) {
					t.Parallel()
					t.Logf("Testing directory: %s", dirPath)
					cmd := exec.Command("bash", "-c", "cd "+dirPath+" && llgo run .")
					output, err := cmd.CombinedOutput()
					if err != nil {
						t.Fatalf("Failed to run %s: %v\n%s", dirPath, err, string(output))
					}
				})
			}
		}
	}
}

func findProjectRoot() (string, error) {
	dir, err := os.Getwd()
	if err != nil {
		return "", err
	}
	projRoot := filepath.Dir(dir)

	if _, err := os.Stat(filepath.Join(projRoot, "go.mod")); err == nil {
		return projRoot, nil
	}
	panic("could not find project root (no go.mod found)")
}
