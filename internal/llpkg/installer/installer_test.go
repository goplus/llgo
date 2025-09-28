package installer

import "testing"

func TestUpstreamConfig(t *testing.T) {
	pkg := Package{
		Name:    "testpkg",
		Version: "v2.0.0",
	}

	if pkg.Name != "testpkg" {
		t.Errorf("expected package name 'testpkg', got %s", pkg.Name)
	}

	if pkg.Version != "v2.0.0" {
		t.Errorf("expected package version 'v2.0.0', got %s", pkg.Version)
	}

	pkg.SetModuleVersion("v1.0.0")

	if pkg.ModuleVersion() != "v1.0.0" {
		t.Errorf("expected package version 'v1.0.0', got %s", pkg.ModuleVersion())
	}
}
