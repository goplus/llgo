package githubreleases

import (
	"errors"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/llgo/compiler/internal/installer"
	"github.com/goplus/llgo/compiler/internal/pc"
)

func TestGHInstaller(t *testing.T) {
	ghr := &ghReleasesInstaller{
		config: map[string]string{
			"owner":    `MeteorsLiu`,
			"repo":     `llpkg`,
			"platform": runtime.GOOS,
			"arch":     runtime.GOARCH,
		},
	}

	pkg := installer.Package{
		Version: `v1.0.0`,
		Name:    `libxml2`,
	}

	tempDir, err := os.MkdirTemp("", "llpkg-tool")
	if err != nil {
		t.Errorf("Unexpected error when creating temp dir: %s", err)
		return
	}
	defer os.RemoveAll(tempDir)

	if _, err = ghr.Install(pkg, tempDir); err != nil {
		t.Errorf("Install failed: %s", err)
	}

	if err := verify(tempDir); err != nil {
		t.Errorf("Verify failed: %s", err)
	}
}

func TestNotExistsReleases(t *testing.T) {
	ghr := &ghReleasesInstaller{
		config: map[string]string{
			"owner":    `goplus`,
			"repo":     `llpkg`,
			"platform": runtime.GOOS,
			"arch":     runtime.GOARCH,
		},
	}

	pkg := installer.Package{
		Version: `v1.0.0`,
		Name:    `not-exists-pkg`,
	}

	tempDir, err := os.MkdirTemp("", "llpkg-tool")
	if err != nil {
		t.Errorf("Unexpected error when creating temp dir: %s", err)
		return
	}
	defer os.RemoveAll(tempDir)

	if _, err = ghr.Install(pkg, tempDir); err == nil {
		t.Errorf("Expecting error but got nil")
	}
}

func verify(installDir string) error {
	// 1. ensure .pc file exists
	pcFiles, err := filepath.Glob(filepath.Join(installDir, "lib", "pkgconfig", "*.pc"))
	if err != nil {
		return err
	}
	if len(pcFiles) == 0 {
		return errors.New("cannot find .pc file")
	}
	absPath, err := filepath.Abs(installDir)
	if err != nil {
		return err
	}

	for _, pcFile := range pcFiles {
		// 2. ensure .pc file's prefix is correctly set
		pcContent, err := os.ReadFile(pcFile)
		if err != nil {
			return err
		}
		prefixMatch := regexp.MustCompile(`^prefix=(.*)`)
		if prefixMatch.FindString(string(pcContent)) != fmt.Sprintf("prefix=%s", absPath) {
			return errors.New("prefix is not correctly set")
		}
		// 3. ensure pkg-config can find .pc file
		buildCmd := exec.Command("pkg-config", "--libs", strings.TrimSuffix(filepath.Base(pcFile), ".pc"))
		pc.SetPath(buildCmd, absPath)
		out, err := buildCmd.CombinedOutput()
		if err != nil {
			return errors.New("pkg-config failed: " + err.Error() + " with output: " + string(out))
		}
	}

	// 4. ensure .so or .dylib file exists
	switch runtime.GOOS {
	case "linux":
		matches, _ := filepath.Glob(filepath.Join(installDir, "lib", "*.so"))
		if len(matches) == 0 {
			return errors.New("cannot find so file")
		}
	case "darwin":
		matches, _ := filepath.Glob(filepath.Join(installDir, "lib", "*.dylib"))
		if len(matches) == 0 {
			return errors.New("cannot find dylib file")
		}
	}

	return nil
}
