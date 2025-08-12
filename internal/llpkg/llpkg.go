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

func IsGithubHosted(modulePath string) bool {
	return strings.HasPrefix(modulePath, "github.com/goplus/llpkg")
}

func CanSkipFetch(moduleDir string) bool {
	_, err := os.Stat(filepath.Join(moduleDir, "lib", "pkgconfig"))
	return os.IsExist(err)
}

func ModuleDirOf(modulePath, moduleVersion string) (string, error) {
	escapedPath, err := module.EscapePath(modulePath)
	if err != nil {
		return "", err
	}
	// NOTE(MeteorsLiu): In unix-like system, -L cannot recognize the path with !
	escapedPath = strings.ReplaceAll(escapedPath, "!", `\!`)

	return filepath.Join(env.LLGoCacheDir(), escapedPath+"@"+moduleVersion), nil
}

func Fetch(llpkgConfig LLPkgConfig, outputDir string) error {
	return _defaultInstaller.Install(llpkgConfig.Upstream.Package, outputDir)
}

func ParseConfigFile(fileName string) (configFile LLPkgConfig, err error) {
	llpkgConfigFile, err := os.Open(fileName)
	if err != nil {
		return
	}
	defer llpkgConfigFile.Close()

	err = json.NewDecoder(llpkgConfigFile).Decode(&configFile)
	return
}
