package ghrelease

import (
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/llpkg/installer"
)

func TestNew(t *testing.T) {
	owner := "goplus"
	repo := "llpkg"

	inst := New(owner, repo)

	if inst == nil {
		t.Fatal("New() returned nil")
	}

	ghInst, ok := inst.(*ghReleasesInstaller)
	if !ok {
		t.Fatal("New() did not return *ghReleasesInstaller")
	}

	if ghInst.owner != owner {
		t.Errorf("expected owner %s, got %s", owner, ghInst.owner)
	}

	if ghInst.repo != repo {
		t.Errorf("expected repo %s, got %s", repo, ghInst.repo)
	}
}

func TestAssertUrl(t *testing.T) {
	inst := &ghReleasesInstaller{
		owner: "goplus",
		repo:  "llpkg",
	}

	pkg := installer.Package{
		Name:    "libxslt",
		Version: "1.7.18",
	}
	pkg.SetModuleVersion("v1.0.3")

	result := inst.assertUrl(pkg)
	expected := "https://github.com/goplus/llpkg/releases/download/libxslt/v1.0.3/libxslt_" + runtime.GOOS + "_" + runtime.GOARCH + ".zip"

	if result != expected {
		t.Errorf("expected %s, got %s", expected, result)
	}
}

func TestInstall(t *testing.T) {
	// Create temporary directory for test
	tempDir, err := os.MkdirTemp("", "ghrelease_install_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	// Create installer with mock data
	inst := &ghReleasesInstaller{
		owner: "goplus",
		repo:  "llpkg",
	}

	// Create package with mock data: libxslt/v1.0.3
	pkg := installer.Package{
		Name:    "libxslt",
		Version: "1.7.18", // This is the actual version
	}
	pkg.SetModuleVersion("v1.0.3") // This is the module version used in URL

	outputDir := filepath.Join(tempDir, "output")

	// Test the Install method
	// Note: This test will attempt to download from the actual GitHub release
	// If the network is unavailable or the release doesn't exist, the test will be skipped
	err = inst.Install(pkg, outputDir)
	if err != nil {
		// Skip test if it's a network-related error
		if strings.Contains(err.Error(), "failed to download") ||
			strings.Contains(err.Error(), "no such host") ||
			strings.Contains(err.Error(), "connection") {
			t.Skipf("skipping install test due to network error: %v", err)
		}
		t.Fatalf("Install failed: %v", err)
	}

	// Verify that the output directory was created
	if _, err := os.Stat(outputDir); os.IsNotExist(err) {
		t.Error("output directory was not created")
	}

	// Verify that lib/pkgconfig directory exists (this is where PC files should be)
	pkgConfigDir := filepath.Join(outputDir, "lib", "pkgconfig")
	if _, err := os.Stat(pkgConfigDir); os.IsNotExist(err) {
		t.Error("lib/pkgconfig directory was not created")
	}

	// Check if any .pc files were generated
	pcFiles, err := filepath.Glob(filepath.Join(pkgConfigDir, "*.pc"))
	if err != nil {
		t.Errorf("failed to check for .pc files: %v", err)
	}
	if len(pcFiles) == 0 {
		t.Error("no .pc files were generated")
	}

	// Verify that .pc.tmpl files were removed (they should be cleaned up)
	tmplFiles, err := filepath.Glob(filepath.Join(pkgConfigDir, "*.pc.tmpl"))
	if err != nil {
		t.Errorf("failed to check for .pc.tmpl files: %v", err)
	}
	if len(tmplFiles) > 0 {
		t.Error("template files were not cleaned up")
	}
}
