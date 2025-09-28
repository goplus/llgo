package llpkg

import (
	"testing"

	"github.com/goplus/llgo/internal/llpkg/installer"
)

func TestLLPkgConfig(t *testing.T) {
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

	if config.Upstream.Installer.Name != "conan" {
		t.Errorf("expected installer name 'conan', got %s", config.Upstream.Installer.Name)
	}

	if config.Upstream.Package.Name != "libxslt" {
		t.Errorf("expected package name 'libxslt', got %s", config.Upstream.Package.Name)
	}

	if config.Upstream.Package.Version != "v1.0.3" {
		t.Errorf("expected package version 'v1.0.3', got %s", config.Upstream.Package.Version)
	}

	if config.Upstream.Installer.Config["profile"] != "default" {
		t.Errorf("expected config profile 'default', got %s", config.Upstream.Installer.Config["profile"])
	}
}

func TestUpstreamConfig(t *testing.T) {
	upstream := UpstreamConfig{
		Installer: InstallerConfig{
			Name:   "ghrelease",
			Config: nil,
		},
		Package: installer.Package{
			Name:    "testpkg",
			Version: "v2.0.0",
		},
	}

	if upstream.Installer.Name != "ghrelease" {
		t.Errorf("expected installer name 'ghrelease', got %s", upstream.Installer.Name)
	}

	if upstream.Installer.Config != nil {
		t.Errorf("expected nil config, got %v", upstream.Installer.Config)
	}

	if upstream.Package.Name != "testpkg" {
		t.Errorf("expected package name 'testpkg', got %s", upstream.Package.Name)
	}

	if upstream.Package.Version != "v2.0.0" {
		t.Errorf("expected package version 'v2.0.0', got %s", upstream.Package.Version)
	}

	upstream.Package.SetModuleVersion("v1.0.0")

	if upstream.Package.ModuleVersion() != "v1.0.0" {
		t.Errorf("expected package version 'v1.0.0', got %s", upstream.Package.ModuleVersion())
	}
}

func TestInstallerConfig(t *testing.T) {
	config := InstallerConfig{
		Name: "conan",
		Config: map[string]string{
			"profile":  "default",
			"settings": "os=Linux",
		},
	}

	if config.Name != "conan" {
		t.Errorf("expected name 'conan', got %s", config.Name)
	}

	if len(config.Config) != 2 {
		t.Errorf("expected 2 config items, got %d", len(config.Config))
	}

	if config.Config["profile"] != "default" {
		t.Errorf("expected profile 'default', got %s", config.Config["profile"])
	}

	if config.Config["settings"] != "os=Linux" {
		t.Errorf("expected settings 'os=Linux', got %s", config.Config["settings"])
	}
}

func TestInstallerConfig_EmptyConfig(t *testing.T) {
	config := InstallerConfig{
		Name:   "simple",
		Config: map[string]string{},
	}

	if config.Name != "simple" {
		t.Errorf("expected name 'simple', got %s", config.Name)
	}

	if len(config.Config) != 0 {
		t.Errorf("expected empty config, got %v", config.Config)
	}
}
