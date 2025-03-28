package list

import (
	"fmt"
	"strings"

	"github.com/goplus/llgo/compiler/internal/env"
	"github.com/goplus/llpkgstore/metadata"
	"golang.org/x/mod/semver"
)

// listModuleVersions handle the case of -m -versions flag
func listModuleVersions(opts ListOptions, args []string) error {
	// Initialize the metadata manager
	metadataMgr, err := metadata.NewMetadataMgr(env.LLGOCACHE())
	if err != nil {
		return fmt.Errorf("failed to initialize metadata manager: %v", err)
	}

	// If no parameters are specified, list all available modules
	if len(args) == 0 {
		// Get all metadata
		allMetadata, err := metadataMgr.AllMetadata()
		if err != nil {
			return err
		}

		// Output in JSON format
		if opts.JSONFlag {
			// JSON output format implementation
			// ...
			return nil
		}

		// Standard output format
		for name, meta := range allMetadata {
			goVersions := []string{}

			// Collect all versions
			for _, versions := range meta.Versions {
				goVersions = append(goVersions, versions...)
			}

			// Sort the versions
			semver.Sort(goVersions)

			// Build the complete module path
			modulePath := fmt.Sprintf("github.com/goplus/llpkg/%s", name)

			// Output format: modulePath v1.0.0[conan:cjson/1.7.18] v0.1.1[conan:cjson/1.7.18]...
			output := modulePath
			for _, goVer := range goVersions {
				cVer, err := metadataMgr.CVerFromGoVer(name, goVer)
				if err != nil {
					continue
				}
				output += fmt.Sprintf(" %s[%s/%s]", goVer, name, cVer)
			}

			fmt.Println(output)
		}
	}

	// Process each parameter
	for _, arg := range args {
		input := arg

		// Determine if the input is a concise form or a complete path
		var name string
		if strings.Contains(input, "/") {
			// Complete path form, extract the clib name
			parts := strings.Split(input, "/")
			name = parts[len(parts)-1]
		} else {
			// Concise form
			name = input
		}

		// Check if the module exists
		exists, err := metadataMgr.ModuleExists(name)
		if err != nil {
			return err
		}

		if !exists {
			return fmt.Errorf("module not found: %s", name)
		}

		// Get all Go versions
		goVersions, err := metadataMgr.AllGoVersFromName(name)
		if err != nil {
			return err
		}

		// Sort the versions
		semver.Sort(goVersions)

		// Build the complete module path
		modulePath := fmt.Sprintf("github.com/goplus/llpkg/%s", name)

		// Output format: modulePath v1.0.0[cjson/1.7.18] v0.1.1[cjson/1.7.18]...
		output := modulePath
		for _, goVer := range goVersions {
			cVer, err := metadataMgr.CVerFromGoVer(name, goVer)
			if err != nil {
				continue
			}
			output += fmt.Sprintf(" %s[%s/%s]", goVer, name, cVer)
		}

		fmt.Println(output)
	}

	return nil
}
