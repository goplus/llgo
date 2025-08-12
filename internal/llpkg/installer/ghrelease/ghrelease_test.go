package ghrelease

import (
	"runtime"
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
		Version: "v1.0.3",
	}

	result := inst.assertUrl(pkg)
	expected := "https://github.com/goplus/llpkg/releases/download/libxslt/v1.0.3/libxslt_" + runtime.GOOS + "_" + runtime.GOARCH + ".zip"

	if result != expected {
		t.Errorf("expected %s, got %s", expected, result)
	}
}

func TestGhReleasesInstaller_Interface(t *testing.T) {
	var _ installer.Installer = (*ghReleasesInstaller)(nil)
}
