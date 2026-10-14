package crosscompile

import (
	"encoding/json"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"slices"
	"strconv"
	"strings"

	"github.com/xgo-dev/llgo/xtool/safesplit"
)

func nativeEnvironmentValue(input NativeToolchainInput, name string) string {
	if input.Environ == nil {
		return os.Getenv(name)
	}
	for i := len(input.Environ) - 1; i >= 0; i-- {
		key, value, ok := strings.Cut(input.Environ[i], "=")
		if ok && key == name {
			return value
		}
	}
	return ""
}

func macOSSysroot(input NativeToolchainInput) (string, error) {
	if sdk := nativeEnvironmentValue(input, "SDKROOT"); sdk != "" {
		info, err := os.Stat(sdk)
		if !filepath.IsAbs(sdk) || sdk == "/" || err != nil || !info.IsDir() {
			return "", fmt.Errorf("SDKROOT must name an existing macOS SDK directory: %q", sdk)
		}
		return sdk, nil
	}
	cmd := exec.Command("xcrun", "--sdk", "macosx", "--show-sdk-path")
	cmd.Env, cmd.Dir = input.Environ, input.Dir
	out, err := cmd.Output()
	if err != nil {
		return "", err
	}
	return strings.TrimSpace(string(out)), nil
}

func configureDarwinToolchain(export *Export, triple string, input NativeToolchainInput) error {
	sdk, err := macOSSysroot(input)
	if err != nil {
		return fmt.Errorf("resolve macOS SDK: %w", err)
	}
	data, err := os.ReadFile(filepath.Join(sdk, "SDKSettings.json"))
	if err != nil {
		return fmt.Errorf("read macOS SDK settings: %w", err)
	}
	var settings struct{ Version string }
	if err := json.Unmarshal(data, &settings); err != nil {
		return fmt.Errorf("read macOS SDK settings: %w", err)
	}
	version := nativeEnvironmentValue(input, "MACOSX_DEPLOYMENT_TARGET")
	if version == "" {
		// Match Clang's native, unversioned -target default: the host OS,
		// rather than a newer SDK that the resulting binary cannot run on.
		cmd := exec.Command("/usr/bin/sw_vers", "-productVersion")
		cmd.Env, cmd.Dir = input.Environ, input.Dir
		out, err := cmd.Output()
		if err != nil {
			return fmt.Errorf("resolve macOS deployment target: %w", err)
		}
		version = strings.TrimSpace(string(out))
	}
	if !validMacOSVersion(version) {
		return fmt.Errorf("invalid macOS deployment target %q: want major[.minor[.patch]]", version)
	}
	major, _, _ := strings.Cut(version, ".")
	if strings.HasPrefix(triple, "arm64-") && major == "10" {
		return fmt.Errorf("macOS deployment target %q is unsupported for arm64: requires macOS 11 or later", version)
	}
	// Apple libLTO requires an OS version in every module's target triple.
	// Use the same triple for Go IR, C compilation, linking, and cache identity.
	export.LLVMTarget = triple + version
	export.Toolchain.TargetTriple = export.LLVMTarget
	export.Toolchain.SDKVersion = settings.Version

	if len(input.CC) != 0 {
		export.CC, export.CCArgs = input.CC[0], slices.Clone(input.CC[1:])
	}
	if len(input.CXX) != 0 {
		export.CXX, export.CXXArgs = input.CXX[0], slices.Clone(input.CXX[1:])
	}
	if len(input.ExternalLinker) != 0 {
		export.Linker, export.LinkerArgs = input.ExternalLinker[0], slices.Clone(input.ExternalLinker[1:])
	}
	args := export.CCArgs
	if export.CXX != "" {
		args = export.CXXArgs
	}
	if export.Linker != "" {
		args = export.LinkerArgs
	}
	args = slices.Concat(args,
		safesplit.SplitPkgConfigFlags(nativeEnvironmentValue(input, "CCFLAGS")),
		safesplit.SplitPkgConfigFlags(nativeEnvironmentValue(input, "LDFLAGS")),
		input.ExternalFlags,
	)
	selection, ldPath := "", ""
	for i, arg := range args {
		if strings.HasPrefix(arg, "-fuse-ld=") {
			selection = arg
		}
		// --ld-path takes precedence over -fuse-ld in Clang.
		if strings.HasPrefix(arg, "--ld-path=") {
			ldPath = arg
		}
		if arg == "--ld-path" && i+1 < len(args) {
			ldPath = "--ld-path=" + args[i+1]
		}
	}
	if ldPath != "" {
		selection = ldPath
	}
	if selection == "" && input.RequireLLD {
		selection = "-fuse-ld=lld"
	}
	if selection != "" {
		_, path, _ := strings.Cut(selection, "=")
		switch filepath.Base(path) {
		case "lld", "ld64.lld":
			export.Toolchain.Linker = LinkerFlavorMachO
		case "ld", "ld64":
			export.Toolchain.Linker = LinkerFlavorApple
		default:
			return fmt.Errorf("unsupported Darwin linker %q: use Apple ld or ld64.lld", path)
		}
		// Preserve an absolute linker path and environment selection after
		// the generated defaults; only the matching flag dialect is emitted.
		export.LDFLAGS = append(export.LDFLAGS, selection)
	}
	if input.RequireLLD && export.Toolchain.Linker != LinkerFlavorMachO {
		return fmt.Errorf("LTO pass plugins require ld64.lld on Darwin; select it with -extldflags=-fuse-ld=lld")
	}
	export.LDFLAGS = append(export.LDFLAGS, input.ExternalFlags...)
	return nil
}

func validMacOSVersion(version string) bool {
	parts := strings.Split(version, ".")
	if len(parts) > 3 {
		return false
	}
	for i, part := range parts {
		if part == "" || strings.IndexFunc(part, func(r rune) bool { return r < '0' || r > '9' }) >= 0 {
			return false
		}
		n, err := strconv.ParseUint(part, 10, 16)
		if err != nil || (i == 0 && n < 10) {
			return false
		}
	}
	return true
}
