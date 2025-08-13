package llpkg

import (
	"encoding/json"
	"os"
	"path/filepath"
	"strings"

	"github.com/goplus/llgo/internal/env"
	"github.com/goplus/llgo/internal/llpkg/installer/ghrelease"
	"golang.org/x/mod/module"
)

var _defaultInstaller = ghrelease.New("goplus", "llpkg")

// IsGithubHosted checks if the given module path is hosted on the goplus/llpkg GitHub repository.
// It returns true if the module path starts with "github.com/goplus/llpkg", false otherwise.
func IsGithubHosted(modulePath string) bool {
	return strings.HasPrefix(modulePath, "github.com/goplus/llpkg")
}

// IsInstalled checks if a module is already installed by verifying the existence of the "lib" directory.
// It returns true if the lib directory exists in the specified module directory, false otherwise.
func IsInstalled(moduleDir string) bool {
	_, err := os.Stat(filepath.Join(moduleDir, "lib"))
	return !os.IsNotExist(err)
}

// LLGoModuleDirOf constructs and creates the cache directory path for a given module and version.
// It escapes the module path according to Go module conventions, handles special characters for unix-like systems,
// and ensures the directory exists with proper permissions (0700).
// Returns the full directory path and any error encountered during directory creation.
func LLGoModuleDirOf(modulePath, moduleVersion string) (string, error) {
	escapedPath, err := module.EscapePath(modulePath)
	if err != nil {
		return "", err
	}
	// NOTE(MeteorsLiu): In unix-like system, -L cannot recognize the path with !
	escapedPath = strings.ReplaceAll(escapedPath, "!", `\!`)

	dir := filepath.Join(env.LLGoCacheDir(), escapedPath+"@"+moduleVersion)

	err = os.MkdirAll(dir, 0700)

	return dir, err
}

// InstallBinary installs a binary package using the default GitHub release installer.
// It takes an LLPkgConfig containing package information and an output directory path.
// Returns any error encountered during the installation process.
func InstallBinary(llpkgConfig LLPkgConfig, outputDir string) error {
	return _defaultInstaller.Install(llpkgConfig.Upstream.Package, outputDir)
}

// ParseConfigFile reads and parses an llpkg configuration file from the specified file path.
// It opens the JSON file, decodes it into an LLPkgConfig struct, and handles file closure automatically.
// Returns the parsed configuration and any error encountered during file operations or JSON decoding.
func ParseConfigFile(fileName string) (configFile LLPkgConfig, err error) {
	llpkgConfigFile, err := os.Open(fileName)
	if err != nil {
		return
	}
	defer llpkgConfigFile.Close()

	err = json.NewDecoder(llpkgConfigFile).Decode(&configFile)
	return
}
