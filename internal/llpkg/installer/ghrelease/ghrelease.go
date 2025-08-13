package ghrelease

import (
	"fmt"
	"os"
	"path/filepath"
	"runtime"

	"github.com/goplus/llgo/internal/llpkg/installer"
	"github.com/goplus/llgo/internal/llpkg/installer/pcgen"
)

type ghReleasesInstaller struct {
	owner, repo string
}

// New creates a new GitHub releases installer for the specified owner and repository.
// It returns an installer that can download and install packages from GitHub releases.
func New(owner, repo string) installer.Installer {
	return &ghReleasesInstaller{owner: owner, repo: repo}
}

// assertUrl returns the URL for the specified package.
// The URL is constructed based on the package name, version, and the installer configuration.
func (c *ghReleasesInstaller) assertUrl(pkg installer.Package) string {
	// NOTE(MeteorsLiu): release binary url requires mapped version, aka module version for llpkg here.
	releaseName := fmt.Sprintf("%s/%s", pkg.Name, pkg.ModuleVersion())
	fileName := fmt.Sprintf("%s_%s.zip", pkg.Name, runtime.GOOS+"_"+runtime.GOARCH)
	return fmt.Sprintf("https://github.com/%s/%s/releases/download/%s/%s", c.owner, c.repo, releaseName, fileName)
}

// Install downloads and installs a package from GitHub releases to the specified output directory.
// It downloads the package zip file, extracts it, and generates pkg-config files from templates.
// The installation process includes cleanup of temporary files and proper error handling.
func (c *ghReleasesInstaller) Install(pkg installer.Package, outputDir string) error {
	absOutputDir, err := filepath.Abs(outputDir)
	if err != nil {
		return err
	}
	zipFilePath, err := installer.DownloadFile(c.assertUrl(pkg), absOutputDir)
	if err != nil {
		return err
	}
	defer os.Remove(zipFilePath)

	err = installer.Unzip(zipFilePath, absOutputDir)
	if err != nil {
		return fmt.Errorf("failed to unzip llpkg: %w", err)
	}
	// generate actual pc files from pc.tmpl files
	return pcgen.GeneratePC(filepath.Join(outputDir, "lib", "pkgconfig"), absOutputDir)
}
