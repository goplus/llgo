package build

import (
	"fmt"
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
	prefix := commands.lookup("HOMEBREW_PREFIX")
	if prefix == "" {
		prefix = "/opt/homebrew"
	}
	path := filepath.Join(prefix, "opt", "lld@23", "bin", "ld64.lld")
	path, err := filepath.Abs(resolvePath(commands.dir, path))
	if err != nil {
		return "", "", err
	}
	out, err := commands.configure(exec.Command(path, "--version")).CombinedOutput()
	if err != nil {
		return "", "", fmt.Errorf("probe LLD %q: %w: %s; install with brew install lld@23", path, err, strings.TrimSpace(string(out)))
	}
	version := strings.TrimSpace(string(out))
	if !compatibleDarwinLLD(version) {
		return "", "", fmt.Errorf("LLD %q reports %q; want LLD 23.x >= 23.1.3; run brew upgrade lld@23", path, version)
	}
	return path, version, nil
}
