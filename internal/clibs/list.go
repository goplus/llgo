package clibs

import (
	"bytes"
	"encoding/json"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strings"

	"gopkg.in/yaml.v3"
)

// libInfo represents the JSON output from go list -m -json
type libInfo struct {
	Path    string
	Version string
	Dir     string
	Sum     string
}

// pkgInfo represents the JSON output from go list -json
type pkgInfo struct {
	ImportPath string
	Dir        string
	Module     struct {
		Path    string
		Version string
		Dir     string
		Sum     string
	}
}

// ListLibs gets all C libraries from the current project dependencies
// tags: e.g. []string{"-tags", "linux,amd64"}
func ListLibs(tags []string, patterns ...string) ([]*Lib, error) {
	// Get module paths
	mods, err := listMods(tags, patterns)
	if err != nil {
		return nil, err
	}

	// Process modules to find lib.yaml files
	return findLibs(tags, mods)
}

func LoadFromFile(mod, dir, sum string) (*Lib, error) {
	// Check if lib.yaml exists
	yamlPath := filepath.Join(dir, "lib.yaml")
	fmt.Printf("  Checking for lib.yaml: %s\n", yamlPath)
	if _, err := os.Stat(yamlPath); err != nil {
		// lib.yaml doesn't exist
		return nil, nil
	}

	// Create lib object
	lib := &Lib{
		ModName: mod,
		Path:    dir,
		Sum:     sum,
	}

	// Read config file
	data, err := os.ReadFile(yamlPath)
	if err != nil {
		return nil, fmt.Errorf("error reading config: %v", err)
	}

	// Parse YAML
	var config LibSpec
	if err := yaml.Unmarshal(data, &config); err != nil {
		return nil, fmt.Errorf("error parsing YAML: %v", err)
	}

	fmt.Printf("  Found lib.yaml: %s at %s\n", mod, yamlPath)
	fmt.Printf("  Config: %v\n", config)
	lib.Config = config

	return lib, nil
}

// listMods gets modules from specified package patterns
func listMods(tags []string, patterns []string) ([]string, error) {
	// Use go list -json -deps to get package info and all dependencies
	args := append([]string{"list", "-json", "-deps"}, tags...)
	args = append(args, patterns...)
	fmt.Printf("Executing: go %s\n", strings.Join(args, " "))
	cmd := exec.Command("go", args...)

	// Capture both stdout and stderr
	var stdout, stderr bytes.Buffer
	cmd.Stdout = &stdout
	cmd.Stderr = &stderr

	err := cmd.Run()
	if err != nil {
		// Print stderr if available
		if stderr.Len() > 0 {
			fmt.Printf("Error output: %s\n", stderr.String())
		}
		return nil, fmt.Errorf("failed to list specified packages: %v", err)
	}

	return parseJSON(stdout.Bytes())
}

// parseJSON parses module paths from JSON output
func parseJSON(data []byte) ([]string, error) {
	var mods []string

	// Parse JSON output
	// go list -json outputs a series of JSON objects separated by newlines
	decoder := json.NewDecoder(strings.NewReader(string(data)))

	// Track processed modules to avoid duplicates
	seen := make(map[string]bool)

	for decoder.More() {
		var pkg pkgInfo
		if err := decoder.Decode(&pkg); err != nil {
			fmt.Printf("Error parsing package info: %v\n", err)
			continue
		}

		// If package has an associated module and we haven't processed it yet
		if pkg.Module.Path != "" && !seen[pkg.Module.Path] {
			mods = append(mods, pkg.Module.Path)
			seen[pkg.Module.Path] = true
		}
	}

	return mods, nil
}

// findLibs processes modules to find lib.yaml files
func findLibs(tags []string, mods []string) ([]*Lib, error) {
	var libs []*Lib

	for _, mod := range mods {
		lib, found, err := processLib(tags, mod)
		if err != nil {
			fmt.Printf("Error processing module %s: %v\n", mod, err)
			continue
		}

		if found {
			libs = append(libs, lib)
		}
	}

	return libs, nil
}

// processLib processes a single module to find lib.yaml
func processLib(tags []string, mod string) (*Lib, bool, error) {
	// Get detailed module info including Sum field
	cmd := exec.Command("go", append(append([]string{"list", "-m", "-json"}, tags...), mod)...)

	// Capture both stdout and stderr
	var stdout, stderr bytes.Buffer
	cmd.Stdout = &stdout
	cmd.Stderr = &stderr

	err := cmd.Run()
	if err != nil {
		// Print stderr if available
		if stderr.Len() > 0 {
			fmt.Printf("Error output for module %s: %s\n", mod, stderr.String())
		}
		return nil, false, fmt.Errorf("error finding module info: %v", err)
	}

	// Parse module info
	var info libInfo
	if err := json.Unmarshal(stdout.Bytes(), &info); err != nil {
		return nil, false, fmt.Errorf("error parsing module info: %v", err)
	}

	dir := info.Dir
	if dir == "" {
		return nil, false, fmt.Errorf("no local path found")
	}

	lib, err := LoadFromFile(mod, dir, info.Sum)
	if err != nil {
		return nil, false, fmt.Errorf("error reading config: %v", err)
	}

	return lib, lib != nil, nil
}
