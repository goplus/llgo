package crosscompile

import (
	"fmt"
	"os"
	"path/filepath"

	"github.com/xgo-dev/llgo/internal/lto"
	"github.com/xgo-dev/llgo/internal/optlevel"
)

// nativeLinkerFlags uses the SDK-compatible LLVM 22 LLD shipped in macOS arm64
// releases. Intel releases omit it and retain the existing linker lookup.
// Compiler selection (including the packaged ESP Clang) is unchanged.
// Named embedded targets select their own linker and never call this helper.
func nativeLinkerFlags(root string, toolchain NativeToolchain, level optlevel.Level, mode lto.Mode) ([]string, error) {
	flags := nativeLLDFlags(toolchain, level, mode)
	if root == "" || toolchain.Linker != LinkerFlavorMachO {
		return flags, nil
	}
	path := filepath.Join(root, "libexec", "llgo", "ld64.lld")
	info, err := os.Stat(path)
	if os.IsNotExist(err) {
		// Source checkouts retain the existing system/toolchain LLD lookup.
		return flags, nil
	}
	if err != nil {
		return nil, fmt.Errorf("inspect bundled Darwin LLD: %w", err)
	}
	if !info.Mode().IsRegular() {
		return nil, fmt.Errorf("bundled Darwin LLD %q is not a regular file", path)
	}
	// Keep the existing -fuse-ld default's precedence. In particular, an
	// explicit --ld-path still takes precedence in Clang. Pass the absolute
	// path as one driver argument, including when LLGO_ROOT contains spaces.
	// nativeLLDFlags always puts its -fuse-ld=lld default at index 0.
	flags[0] = "-fuse-ld=" + path
	return flags, nil
}
