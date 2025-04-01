package list

import (
	"encoding/json"
	"os"
	"os/exec"
	"strings"

	"github.com/goplus/llpkgstore/config"
)

// ModuleInfo represents the JSON structure of module information
type ModuleInfo struct {
	Path      string     `json:"Path"`
	Version   string     `json:"Version,omitempty"`
	Time      string     `json:"Time,omitempty"`
	Indirect  bool       `json:"Indirect,omitempty"`
	GoVersion string     `json:"GoVersion,omitempty"`
	LLPkg     *LLPkgInfo `json:"LLPkg,omitempty"`
}

// LLPkgInfo represents the JSON structure of LLPkg information
type LLPkgInfo struct {
	Upstream UpstreamInfo `json:"Upstream"`
}

type UpstreamInfo struct {
	Installer InstallerInfo `json:"Installer"`
	Package   PackageInfo   `json:"Package"`
}

type InstallerInfo struct {
	Name   string            `json:"Name"`
	Config map[string]string `json:"Config,omitempty"`
}

type PackageInfo struct {
	Name    string `json:"Name"`
	Version string `json:"Version"`
}

// listJSON handle the JSON format output
func listJSON(opts ListOptions, args []string) error {
	// Execute the go list command to get the original JSON output
	cmdArgs := []string{"list", "-json"}
	if opts.ModulesFlag {
		cmdArgs = append(cmdArgs, "-m")
	}
	if opts.VersionsFlag {
		cmdArgs = append(cmdArgs, "-versions")
	}
	cmdArgs = append(cmdArgs, args...)

	cmd := exec.Command("go", cmdArgs...)
	output, err := cmd.Output()
	if err != nil {
		return err
	}

	// Parse the JSON output
	var modules []ModuleInfo
	decoder := json.NewDecoder(strings.NewReader(string(output)))

	// Check if the output is an array or a single object
	var firstChar byte
	if len(output) > 0 {
		firstChar = output[0]
	}

	if firstChar == '[' {
		// Array format
		err = decoder.Decode(&modules)
		if err != nil {
			return err
		}
	} else {
		// Single object format
		var module ModuleInfo
		err = decoder.Decode(&module)
		if err != nil {
			return err
		}
		modules = []ModuleInfo{module}
	}

	// Add LLPkg information to each module
	for i := range modules {
		if modules[i].Path != "" {
			isLLPkg, llpkgConfig, err := checkIsLLPkg(modules[i].Path)
			if err == nil && isLLPkg && llpkgConfig != nil {
				modules[i].LLPkg = convertToLLPkgInfo(*llpkgConfig)
			}
		}
	}

	// Output the modified JSON
	encoder := json.NewEncoder(os.Stdout)
	encoder.SetIndent("", "  ")
	return encoder.Encode(modules)
}

// convertToLLPkgInfo convert the LLPkgConfig to LLPkgInfo
func convertToLLPkgInfo(cfg config.LLPkgConfig) *LLPkgInfo {
	return &LLPkgInfo{
		Upstream: UpstreamInfo{
			Installer: InstallerInfo{
				Name:   cfg.Upstream.Installer.Name,
				Config: cfg.Upstream.Installer.Config,
			},
			Package: PackageInfo{
				Name:    cfg.Upstream.Package.Name,
				Version: cfg.Upstream.Package.Version,
			},
		},
	}
}
