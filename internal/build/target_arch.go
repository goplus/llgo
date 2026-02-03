package build

import (
	"slices"
	"strings"
)

// ctxGoarch returns the GOARCH to use for context register selection and
// LLVM backend interaction. It prefers the LLVM target triple when available
// to avoid mismatches between Go arch and the actual codegen target.
func ctxGoarch(goarch, llvmTarget string) string {
	arch := goarchFromTriple(llvmTarget)
	if arch == "" {
		return goarch
	}
	return arch
}

// goarchFromTriple maps an LLVM target triple to a Go GOARCH name.
// It only returns values for the supported/known GOARCH set used by ctx regs.
func goarchFromTriple(triple string) string {
	if triple == "" {
		return ""
	}
	arch := strings.Split(triple, "-")[0]
	if arch == "" {
		return ""
	}
	switch arch {
	case "x86_64", "amd64":
		return "amd64"
	case "i386", "i486", "i586", "i686":
		return "386"
	case "aarch64", "arm64":
		return "arm64"
	case "arm", "armv5", "armv6", "armv7":
		return "arm"
	case "thumb", "thumbv6m", "thumbv7", "thumbv7m", "thumbv7em":
		return "arm"
	case "riscv64":
		return "riscv64"
	case "riscv32":
		return "riscv32"
	case "wasm32":
		return "wasm"
	}
	if strings.HasPrefix(arch, "armv") || strings.HasPrefix(arch, "thumbv") {
		return "arm"
	}
	if strings.HasPrefix(arch, "arm64") {
		return "arm64"
	}
	return ""
}

func hasTargetFlag(flags []string) bool {
	for i, flag := range flags {
		switch {
		case flag == "-target" || flag == "--target":
			if i+1 < len(flags) && flags[i+1] != "" {
				return true
			}
		case strings.HasPrefix(flag, "-target="), strings.HasPrefix(flag, "--target="):
			return true
		}
	}
	return false
}

func appendMissingFlags(dst []string, flags []string) []string {
	for i := 0; i < len(flags); i++ {
		flag := flags[i]
		if flag == "-Xclang" && i+1 < len(flags) {
			arg := flags[i+1]
			found := false
			for j := 0; j+1 < len(dst); j++ {
				if dst[j] == "-Xclang" && dst[j+1] == arg {
					found = true
					break
				}
			}
			if !found {
				dst = append(dst, flag, arg)
			}
			i++
			continue
		}
		if !slices.Contains(dst, flag) {
			dst = append(dst, flag)
		}
	}
	return dst
}
