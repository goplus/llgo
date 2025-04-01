package get

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"

	"github.com/goplus/llgo/compiler/internal/mod"
	"github.com/goplus/llpkgstore/config"
	"golang.org/x/mod/modfile"
	"golang.org/x/mod/module"
)

func Do(name, version string) error {
	// Preparing works
	// - Get target .mod file path
	cwd, err := os.Getwd()
	if err != nil {
		return err
	}
	targetModFilePath := filepath.Join(cwd, "go.mod")

	// 1. Firstly, we process it as a normal module. Note that NewModuleVersionPair
	// will automatically convert clib@cversion to modulePath@mappedVersion
	declaredModule, err := mod.NewModuleVersionPair(name, version)
	if err != nil {
		return err
	}

	err = fetchModule(declaredModule)
	if err != nil {
		return err
	}

	// In case there's a replace statement in go.mod
	actualModule, err := followReplaceStmt(targetModFilePath, declaredModule)
	if err != nil {
		return err
	}

	// 2. Now we should check if we need to do more work. It depends on if
	// the module is an LLPkg or not.
	isLLPkg, err := mod.IsLLPkg(actualModule)
	if err != nil {
		return err
	} else if !isLLPkg {
		// no more work
		return nil
	}

	// 3. Now we need to parse the llpkg.cfg file.
	cfgPath, err := mod.LLPkgCfgFilePath(actualModule)
	if err != nil {
		return err
	}
	cfg, err := config.ParseLLPkgConfig(cfgPath)
	if err != nil {
		return err
	}

	// 4. Fetch the upstream
	err = fetchUpstream(cfg, actualModule)
	if err != nil {
		return err
	}

	// 5. Annotate go.mod
	return AnnotateModFile(targetModFilePath, declaredModule, cfg.Upstream)
}

func fetchUpstream(cfg config.LLPkgConfig, module module.Version) error {
	upstream, err := config.NewUpstreamFromConfig(cfg.Upstream)
	if err != nil {
		return err
	}

	cacheDir, err := mod.LLPkgCacheDirByModule(module)
	if err != nil {
		return err
	}

	_, err = upstream.Installer.Install(upstream.Pkg, cacheDir)
	if err != nil {
		return err
	}

	return nil
}

func fetchModule(mod module.Version) error {
	cmd := exec.Command("go", "get", mod.String())
	out, err := cmd.CombinedOutput()
	if err != nil {
		return fmt.Errorf("failed to get module: %s %s", out, err)
	}
	return nil
}

// followReplaceStmt checks if there's a replace statement of declaredModule.
// If there is, it returns the new module. Otherwise, it returns declaredModule itself.
// Returns any error encountered.
func followReplaceStmt(targetModFilePath string, declaredModule module.Version) (module.Version, error) {
	modFileData, err := os.ReadFile(targetModFilePath)
	if err != nil {
		return module.Version{}, fmt.Errorf("failed to read go.mod: %v", err)
	}
	modFile, err := modfile.Parse(targetModFilePath, modFileData, nil)
	if err != nil {
		return module.Version{}, fmt.Errorf("failed to parse go.mod: %v", err)
	}

	for _, req := range modFile.Replace {
		if req.Old == declaredModule {
			return req.New, nil
		}
	}

	// no replace
	return declaredModule, nil
}
