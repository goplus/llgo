package mquickjs

import (
	"fmt"
	"path/filepath"

	"github.com/goplus/llgo/internal/crosscompile/compile"
)

// GetMquickjsConfig returns the configuration for downloading mquickjs
func GetMquickjsConfig() compile.LibConfig {
	return compile.LibConfig{
		Name:           "mquickjs",
		Version:        "v1.0.0",
		Url:            "https://github.com/luoliwoshang/mquickjs/archive/refs/tags/v1.0.0.tar.gz",
		ResourceSubDir: "mquickjs-1.0.0",
	}
}

// mquickjs compile flags for embedded targets
var _mquickjsCCFlags = []string{
	"-fdata-sections",
	"-ffunction-sections",
	"-fno-math-errno",
	"-fno-trapping-math",
}

var _mquickjsLDFlags = []string{
	"-Wl,--gc-sections",
}

// GetMquickjsCompileConfig returns configuration for compiling mquickjs
func GetMquickjsCompileConfig(baseDir, target string) compile.CompileConfig {
	return compile.CompileConfig{
		ExportCFlags: []string{
			"-I" + baseDir,
		},
		Groups: []compile.CompileGroup{
			{
				OutputFileName: fmt.Sprintf("libmquickjs-%s.a", target),
				Files: []string{
					filepath.Join(baseDir, "mquickjs.c"),
					filepath.Join(baseDir, "cutils.c"),
					filepath.Join(baseDir, "dtoa.c"),
					filepath.Join(baseDir, "libm.c"),
				},
				CFlags: []string{
					"-DCONFIG_VERSION=\"1.0.0\"",
					"-D_GNU_SOURCE",
					"-nostdlib",
					"-I" + baseDir,
				},
				CCFlags: _mquickjsCCFlags,
				LDFlags: _mquickjsLDFlags,
			},
		},
	}
}
