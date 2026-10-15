package build

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"slices"
	"strconv"
	"strings"

	"github.com/xgo-dev/llgo/internal/crosscompile"
)

// LLVM 23.1.3 is the first 23.x release that recognizes SDK 27's arm64e.x1
// stubs. Keep the compiler on LLVM 22; only the native arm64 linker and its
// optional LTO plugin use LLVM 23. Intel and embedded toolchains are unchanged.
func needsExternalDarwinLLD(hostOS, hostArch string, conf *Config) bool {
	return hostOS == "darwin" && hostArch == "arm64" &&
		conf.Goos == hostOS && conf.Goarch == hostArch && conf.Target == "" &&
		conf.Mode != ModeGen && conf.BuildMode != BuildModeCArchive
}

var darwinLLDVersion = regexp.MustCompile(`(?:^|\s)LLD ([0-9]+)\.([0-9]+)\.([0-9]+)(?:\s|$)`)

func compatibleDarwinLLD(version string) bool {
	match := darwinLLDVersion.FindStringSubmatch(version)
	if match == nil || match[1] != "23" {
		return false
	}
	minor, err := strconv.Atoi(match[2])
	if err != nil {
		return false
	}
	patch, err := strconv.Atoi(match[3])
	return err == nil && (minor > 1 || minor == 1 && patch >= 3)
}

func configureDarwinLLD(commands commandEnv, export *crosscompile.Export) error {
	path, version, err := resolveDarwinLLD(commands)
	if err != nil {
		return err
	}
	// Replace the default, retaining Clang's --ld-path override precedence.
	// An absolute -fuse-ld path avoids selecting ESP Clang's sibling LLD 22.
	index := slices.Index(export.LDFLAGS, "-fuse-ld=lld")
	if index < 0 {
		return fmt.Errorf("native Darwin linker flags have no -fuse-ld=lld default")
	}
	export.LDFLAGS[index] = "-fuse-ld=" + path
	// Both the path (LDFLAGS) and version participate in package fingerprints.
	export.LinkerIdentity = version
	return nil
}

func resolveDarwinLLD(commands commandEnv) (string, string, error) {
	if path := commands.lookup("LLGO_LLD"); path != "" {
		return probeDarwinLLD(commands, path)
	}
	var candidates []string
	for _, dir := range filepath.SplitList(commands.lookup("PATH")) {
		if dir != "" {
			candidates = append(candidates, filepath.Join(dir, "ld64.lld"))
		}
	}
	// Homebrew's opt paths also work when the formula is not linked into PATH.
	for _, prefix := range []string{commands.lookup("HOMEBREW_PREFIX"), "/opt/homebrew", "/usr/local"} {
		if prefix != "" {
			for _, formula := range []string{"lld@23", "lld"} {
				candidates = append(candidates, filepath.Join(prefix, "opt", formula, "bin", "ld64.lld"))
			}
		}
	}
	var failures []string
	seen := make(map[string]bool)
	for _, candidate := range candidates {
		candidate = resolvePath(commands.dir, candidate)
		if seen[candidate] {
			continue
		}
		seen[candidate] = true
		if _, err := os.Stat(candidate); os.IsNotExist(err) {
			continue
		}
		path, version, err := probeDarwinLLD(commands, candidate)
		if err == nil {
			return path, version, nil
		}
		failures = append(failures, err.Error())
	}
	detail := ""
	if len(failures) != 0 {
		detail = ": " + strings.Join(failures, "; ")
	}
	return "", "", fmt.Errorf("macOS arm64 native linking requires LLD 23.1.3 or newer in the 23.x series; install with brew install lld@23 or set LLGO_LLD to its ld64.lld path%s", detail)
}

func probeDarwinLLD(commands commandEnv, path string) (string, string, error) {
	path, err := filepath.Abs(resolvePath(commands.dir, path))
	if err != nil {
		return "", "", err
	}
	out, err := commands.configure(exec.Command(path, "--version")).CombinedOutput()
	if err != nil {
		return "", "", fmt.Errorf("probe LLD %q: %w: %s", path, err, strings.TrimSpace(string(out)))
	}
	version := strings.TrimSpace(string(out))
	if !compatibleDarwinLLD(version) {
		return "", "", fmt.Errorf("LLD %q reports %q; want LLD 23.x >= 23.1.3", path, version)
	}
	return path, version, nil
}
