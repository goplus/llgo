package clibs

import (
	"fmt"
	"os"
	"os/exec"
	"strings"

	"github.com/goplus/llgo/internal/xtool/llvm"
)

// getBuildEnv prepares build environment variables
func getBuildEnv(lib *Lib, buildDir, platform, arch, targetTriple string) []string {
	// Generate build flags
	cflags, ldflags := getBuildFlags(targetTriple)

	downloadDir := getDownloadDir(lib)

	// Create environment variables
	return []string{
		fmt.Sprintf("%s=%s", EnvPackageDir, lib.Path),
		fmt.Sprintf("%s=%s", EnvDownloadDir, downloadDir),
		fmt.Sprintf("%s=%s", EnvBuildGoos, platform),
		fmt.Sprintf("%s=%s", EnvBuildGoarch, arch),
		fmt.Sprintf("%s=%s", EnvBuildTarget, targetTriple),
		fmt.Sprintf("%s=%s", EnvBuildCflags, cflags),
		fmt.Sprintf("%s=%s", EnvBuildLdflags, ldflags),
		fmt.Sprintf("%s=%s", EnvBuildDir, buildDir),
	}
}

// getBuildFlags generates build flags based on target triple
func getBuildFlags(targetTriple string) (cflags, ldflags string) {
	// Default flags
	cflags = "-O2"
	ldflags = ""

	// Add target-specific flags
	if strings.Contains(targetTriple, "wasm32") {
		cflags += " -D__wasm__"
	} else if strings.Contains(targetTriple, "windows") {
		cflags += " -D_WIN32"
	} else if strings.Contains(targetTriple, "darwin") {
		cflags += " -D__APPLE__"
	} else if strings.Contains(targetTriple, "linux") {
		cflags += " -D__linux__"
	}

	return
}

// buildLib builds the library using the appropriate build method
func (lib *Lib) buildLib(config Config, buildDir string) error {
	// Get download directory
	downloadDir := getDownloadDir(lib)
	if _, err := os.Stat(downloadDir); err != nil {
		// If download directory doesn't exist, try to create it
		if os.IsNotExist(err) {
			if err := os.MkdirAll(downloadDir, 0755); err != nil {
				return fmt.Errorf("failed to create download directory: %v", err)
			}
		} else {
			return fmt.Errorf("failed to check download directory: %v", err)
		}
	}

	// Create build directory if it doesn't exist
	if err := os.MkdirAll(buildDir, 0755); err != nil {
		return fmt.Errorf("failed to create build directory: %v", err)
	}

	fmt.Printf("  Build directory: %s\n", buildDir)

	// Check if we need to download files
	if lib.Config.Git != nil {
		// TODO: Implement Git checkout
		return fmt.Errorf("git checkout not implemented yet")
	} else if len(lib.Config.Files) > 0 {
		// Download files
		if err := lib.fetchLib(); err != nil {
			return fmt.Errorf("failed to fetch library: %v", err)
		}
	}

	// If there's a build command, execute it
	if lib.Config.Build != nil && lib.Config.Build.Command != "" {
		fmt.Printf("  Executing build command:\n%s\n", lib.Config.Build.Command)

		// Get environment variables
		targetTriple := llvm.GetTargetTriple(config.Goos, config.Goarch)
		env := getBuildEnv(lib, buildDir, config.Goos, config.Goarch, targetTriple)
		lib.Env = env

		fmt.Printf("  Environment variables:\n%s\n", strings.Join(append(os.Environ(), env...), "\n"))
		// Create the build command
		cmd := exec.Command("bash", "-e", "-c", lib.Config.Build.Command)
		cmd.Dir = downloadDir
		cmd.Env = append(os.Environ(), env...)
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr

		// Execute the build command
		if err := cmd.Run(); err != nil {
			return fmt.Errorf("build command failed: %v", err)
		}
	}

	// Write hash file to mark successful build
	if err := saveHash(buildDir, lib.Config, true); err != nil {
		return fmt.Errorf("failed to write hash file: %v", err)
	}

	return nil
}
