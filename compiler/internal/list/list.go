package list

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"

	"github.com/goplus/llgo/compiler/internal/env"
	"github.com/goplus/llgo/compiler/internal/mod"
	"github.com/goplus/llpkgstore/config"
	"github.com/goplus/llpkgstore/metadata"
	"golang.org/x/mod/module"
)

// ListOptions define the options for the list command
type ListOptions struct {
	ModulesFlag   bool   // -m flag
	JSONFlag      bool   // -json flag
	VersionsFlag  bool   // -versions flag
	UpdatesFlag   bool   // -u flag
	RetractedFlag bool   // -retracted flag
	ReuseFlag     string // -reuse flag's value
	FormatFlag    string // -f flag's value
}

// ListModules is the main entry function for the list command
func ListModules(opts ListOptions, args []string) error {
	// If there are no special flags, fallback to go list
	if !opts.ModulesFlag && !opts.JSONFlag {
		return fallbackToGoList(args)
	}

	// Process the module pattern
	if opts.ModulesFlag {
		// When both -m and -versions are specified
		if opts.VersionsFlag {
			return listModuleVersions(opts, args)
		}

		// When only -m is specified
		return listModules(opts, args)
	}

	// Process the JSON mode
	if opts.JSONFlag {
		return listJSON(opts, args)
	}

	return nil
}

// resolveModulePath convert the brief input to the complete module path
func resolveModulePath(input string) (string, error) {
	// If the input is already a complete module path, return it directly
	if mod.IsModulePath(input) {
		return input, nil
	}

	// Initialize the metadata manager
	metadataMgr, err := metadata.NewMetadataMgr(env.LLGOCACHE())
	if err != nil {
		return "", fmt.Errorf("failed to initialize metadata manager: %v", err)
	}

	// Check if it is a clib
	exists, err := metadataMgr.ModuleExists(input)
	if err != nil {
		return "", err
	}

	if !exists {
		return "", fmt.Errorf("未找到模块: %s", input)
	}

	// Get the latest version
	latestVer, err := metadataMgr.LatestGoVer(input)
	if err != nil {
		return "", fmt.Errorf("failed to get the latest version: %v", err)
	}

	// Build the complete path
	completePath, err := mod.NewModuleVersionPair(input, latestVer)
	if err != nil {
		return "", fmt.Errorf("failed to build the complete path: %v", err)
	}

	return completePath.Path, nil
}

// listModules resolve the module path and print the result
func listModules(opts ListOptions, args []string) error {
	for _, arg := range args {
		modulePath, err := resolveModulePath(arg)
		if err != nil {
			return err
		}

		// Check if it is a LLPkg
		isLLPkg, llpkgInfo, err := checkIsLLPkg(modulePath)
		if err != nil {
			return err
		}

		if isLLPkg {
			// Print the LLPkg information
			fmt.Printf("%s [%s:%s/%s]\n",
				modulePath,
				llpkgInfo.Upstream.Installer.Name,
				llpkgInfo.Upstream.Package.Name,
				llpkgInfo.Upstream.Package.Version)
		} else {
			// If it is not a LLPkg, fallback to the standard go list output
			cmd := exec.Command("go", append([]string{"list", "-m"}, modulePath)...)
			cmd.Stdout = os.Stdout
			cmd.Stderr = os.Stderr
			if err := cmd.Run(); err != nil {
				return err
			}
		}
	}

	return nil
}

// checkIsLLPkg check if the given module is a LLPkg
func checkIsLLPkg(modulePath string) (bool, *config.LLPkgConfig, error) {
	// Get the module path
	mod := module.Version{Path: modulePath}

	// Find the llpkg.cfg file
	cfgPath, err := findLLPkgCfgFile(mod)
	if err != nil || cfgPath == "" {
		return false, nil, nil
	}

	// Parse the llpkg.cfg file
	cfg, err := config.ParseLLPkgConfig(cfgPath)
	if err != nil {
		return false, nil, err
	}

	return true, &cfg, nil
}

// findLLPkgCfgFile find the llpkg.cfg file for the module
func findLLPkgCfgFile(mod module.Version) (string, error) {
	// Try to find the llpkg.cfg file in the module cache
	modPath, err := filepath.Abs(filepath.Join(env.LLGOCACHE(), "pkg/mod", mod.Path))
	if err != nil {
		return "", err
	}

	cfgPath := filepath.Join(modPath, "llpkg.cfg")
	if _, err := os.Stat(cfgPath); err == nil {
		return cfgPath, nil
	}

	return "", nil
}

// fallbackToGoList fallback to the native go list command
func fallbackToGoList(args []string) error {
	cmd := exec.Command("go", append([]string{"list"}, args...)...)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	return cmd.Run()
}
