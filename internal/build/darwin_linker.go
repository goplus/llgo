package build

import (
	"bytes"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"slices"
	"strconv"
	"strings"

	"github.com/xgo-dev/llgo/internal/clang"
	"github.com/xgo-dev/llgo/internal/crosscompile"
)

// LLD 23.1.3 is the first 23.x release that recognizes SDK 27's arm64e.x1
// stubs. Keep the compiler on LLVM 22; only the native arm64 linker and its
// optional LTO plugin use LLVM 23. Intel and embedded toolchains are unchanged.
func needsExternalDarwinLLD(hostOS, hostArch string, conf *Config) bool {
	return hostOS == "darwin" && hostArch == "arm64" &&
		conf.Goos == hostOS && conf.Goarch == hostArch && conf.Target == "" &&
		conf.Mode != ModeGen && conf.BuildMode != BuildModeCArchive
}

var darwinLLDVersion = regexp.MustCompile(`(?:^|\s)LLD ([0-9]+)\.([0-9]+)\.([0-9]+)(?:\s|$)`)

// Keep this version policy in sync with install.sh's macos_lld_is_compatible.
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
	// Replace the default, retaining Clang's --ld-path override precedence.
	// An absolute -fuse-ld path avoids selecting ESP Clang's sibling LLD 22.
	index := slices.Index(export.LDFLAGS, "-fuse-ld=lld")
	if index < 0 {
		return fmt.Errorf("native Darwin linker flags have no -fuse-ld=lld default")
	}
	path, version, err := resolveDarwinLLD(commands, export)
	if err != nil {
		return err
	}
	export.LDFLAGS[index] = "-fuse-ld=" + path
	// Both the path (LDFLAGS) and version participate in package fingerprints.
	export.LinkerIdentity = version
	return nil
}

func resolveDarwinLLD(commands commandEnv, export *crosscompile.Export) (string, string, error) {
	prefix := commands.lookup("HOMEBREW_PREFIX")
	if prefix == "" {
		prefix = "/opt/homebrew"
	}
	path := prefix + string(os.PathSeparator) + filepath.Join("opt", "lld@23", "bin", "ld64.lld")
	// Use Clang's flag merger so the last --ld-path follows the
	// actual link command (CCFLAGS, LDFLAGS, then configured flags).
	// Like the actual link command, it reads flags from the process environment,
	// rather than commands.environ, which configures the probe subprocesses.
	ldflags := slices.Clone(export.LDFLAGS)
	if index := slices.Index(ldflags, "-fuse-ld=lld"); index >= 0 {
		ldflags[index] = "-fuse-ld=" + path
	}
	config := clang.NewConfig(export.CC, nil, nil, ldflags, "")
	flags := clang.NewLinker(config).LinkArguments()
	if slices.ContainsFunc(flags, func(arg string) bool { return strings.HasPrefix(arg, "@") }) {
		// Let the actual driver handle nested files, encodings and quoting.
		// The default must already be replaced: --ld-path still takes precedence,
		// even when the Homebrew linker is missing or outdated.
		var err error
		path, err = darwinDriverLinker(commands, export.CC, flags)
		if err != nil {
			return "", "", err
		}
	} else {
		for _, flag := range flags {
			if value, ok := strings.CutPrefix(flag, "--ld-path="); ok {
				path = value
			}
		}
	}
	if path == "" {
		return "", "", fmt.Errorf("--ld-path requires a non-empty linker path")
	}
	if !strings.ContainsRune(path, '/') {
		// Let the driver resolve bare names using -B, COMPILER_PATH and PATH.
		out, err := commands.configure(exec.Command(export.CC, append(flags, "--print-prog-name="+path)...)).Output()
		if err != nil {
			return "", "", fmt.Errorf("resolve linker %q: %w", path, err)
		}
		path = strings.TrimSpace(string(out))
	}
	// Preserve symlink/.. traversal exactly as the driver sees it. filepath.Abs
	// and Join clean these components lexically and can select a different file.
	if !filepath.IsAbs(path) {
		dir := commands.dir
		if !filepath.IsAbs(dir) {
			cwd, err := os.Getwd()
			if err != nil {
				return "", "", err
			}
			dir = cwd + string(os.PathSeparator) + dir
		}
		path = dir + string(os.PathSeparator) + path
	}
	var stderr bytes.Buffer
	cmd := commands.configure(exec.Command(path, "--version"))
	cmd.Stderr = &stderr
	out, err := cmd.Output()
	if err != nil {
		diagnostic := strings.TrimSpace(string(out) + stderr.String())
		return "", "", fmt.Errorf("probe LLD %q: %w: %s; install with brew install lld@23", path, err, diagnostic)
	}
	version := strings.TrimSpace(string(out))
	if !compatibleDarwinLLD(version) {
		return "", "", fmt.Errorf("LLD %q reports %q; want LLD 23.x >= 23.1.3; run brew upgrade lld@23", path, version)
	}
	return path, version, nil
}

// Clang's -### command lines start with a space and a quoted executable.
// llvm::sys::printArg escapes only backslashes, double quotes and dollar signs;
// this is not shell syntax or Go string quoting.
var darwinDriverCommand = regexp.MustCompile(`(?m)^ "((?:\\["\\$]|[^"\\])*)" `)

func darwinDriverLinker(commands commandEnv, compiler string, flags []string) (string, error) {
	// An existing input with no source language produces only the link job.
	// -### prints that job without executing it or writing the output file.
	args := append(slices.Clone(flags), "-###", "-x", "none", os.DevNull, "-o", os.DevNull)
	out, err := commands.configure(exec.Command(compiler, args...)).CombinedOutput()
	if err != nil {
		return "", fmt.Errorf("resolve response-file linker: %w: %s", err, strings.TrimSpace(string(out)))
	}
	jobs := darwinDriverCommand.FindAllSubmatch(out, -1)
	if len(jobs) != 1 {
		return "", fmt.Errorf("resolve response-file linker: expected one driver job, got %d: %s", len(jobs), strings.TrimSpace(string(out)))
	}
	return strings.NewReplacer(`\\`, `\`, `\"`, `"`, `\$`, `$`).Replace(string(jobs[0][1])), nil
}
