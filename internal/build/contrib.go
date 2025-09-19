package build

import (
	"path/filepath"
	"strings"

	"github.com/goplus/llgo/internal/pyenv"
	xenv "github.com/goplus/llgo/xtool/env"
)

// LinkContributor is a unified extension point that abstracts
// feature-specific contributions to the build/link pipeline.
type LinkContributor interface {
	// Prepare phase: e.g., toolchain download, env injection,
	// version verification, install_name fixups, etc.
	Prepare(ctx *context) error
	// InitObjects: generate extra init objects (e.g., Python runtime
	// init C object) and return a list of produced .o files.
	InitObjects(ctx *context) ([]string, error)
	// LinkArgs: extra linker flags such as -l/-L/-Wl,...
	// (do not include rpaths here; return them via Rpaths instead).
	LinkArgs(ctx *context) ([]string, error)
	// Rpaths: return runtime search paths to inject; linkMainPkg will
	// convert them to proper linker flags.
	Rpaths(ctx *context) ([]string, error)
}

// NoopContributor: for C/C++/default scenarios
// (no extra preparation/objects/args/rpaths).
type NoopContributor struct{}

func (NoopContributor) Prepare(*context) error                 { return nil }
func (NoopContributor) InitObjects(*context) ([]string, error) { return nil, nil }
func (NoopContributor) LinkArgs(*context) ([]string, error)    { return nil, nil }
func (NoopContributor) Rpaths(*context) ([]string, error)      { return nil, nil }

// PythonContributor: provides preparation, init objects, and rpaths
// when Python support is required.
type PythonContributor struct {
	NeedInit      bool // whether __llgo_py_init_from_exedir should be injected (decided by needPyInit)
	NeedToolchain bool // whether CPython toolchain must be prepared/fixed (e.g., python3-embed linkage)
	HasExtern     bool // whether python extern linkage detected; triggers pkg-config expansion
}

func (p PythonContributor) Prepare(ctx *context) error {
	if !p.NeedToolchain {
		return nil
	}
	pyHome := pyenv.PythonHome()
	steps := []struct {
		name string
		run  func() error
	}{
		{"prepare Python cache", func() error { return pyenv.EnsureWithFetch("") }},
		{"setup Python build env", pyenv.EnsureBuildEnv},
		{"verify Python", pyenv.Verify},
		{"fix install_name", func() error { return pyenv.FixLibpythonInstallName(pyHome) }},
	}
	for _, s := range steps {
		if err := s.run(); err != nil {
			return err
		}
	}
	return nil
}

func (p PythonContributor) InitObjects(ctx *context) ([]string, error) {
	if !p.NeedInit {
		return nil, nil
	}
	obj, err := genPyInitFromExeDirObj(ctx)
	if err != nil {
		return nil, err
	}
	return []string{obj}, nil
}

func (p PythonContributor) LinkArgs(ctx *context) ([]string, error) {
	if !p.HasExtern {
		return nil, nil
	}
	if !p.NeedToolchain {
		return nil, nil
	}
	args := xenv.ExpandEnvToArgs("$(pkg-config --libs python3-embed)")
	return args, nil
}

func (p PythonContributor) Rpaths(ctx *context) ([]string, error) {
	pyHome := pyenv.PythonHome()
	r := append([]string{}, pyenv.FindPythonRpaths(pyHome)...)
	// Common relative rpaths for typical distribution layouts
	// (macOS style shown; on Linux consider $ORIGIN variants).
	r = append(r,
		"@executable_path/python/lib",
		"@executable_path/lib/python/lib",
		"@executable_path/../lib/python/lib",
	)
	return r, nil
}

// collectContributors collects contributors based on package traits
// and whether Python init/external linkage is needed.
// hasPyExtern: whether Python external linkage is detected
// (e.g., cl.PkgLinkExtern expands to python3-embed).
func collectContributors(needPyInit bool, hasPyExtern bool) []LinkContributor {
	contribs := []LinkContributor{NoopContributor{}}
	if needPyInit || hasPyExtern {
		contribs = append(contribs, PythonContributor{
			NeedInit:      needPyInit,
			NeedToolchain: hasPyExtern,
		})
	}
	return contribs
}

// appendRpaths converts rpath strings into linker flags and appends
// them to linkArgs (platform simplified version).
func appendRpaths(linkArgs *[]string, rpaths []string) {
	if len(rpaths) == 0 {
		return
	}
	for _, dir := range rpaths {
		if dir == "" {
			continue
		}
		flag := "-Wl,-rpath," + dir
		found := false
		for _, a := range *linkArgs {
			if a == flag {
				found = true
				break
			}
		}
		if !found {
			*linkArgs = append(*linkArgs, flag)
		}
	}
}

// hasPythonExtern heuristically detects Python external linkage by
// scanning aPkg.LinkArgs for -lpython or -L...python...
func hasPythonExtern(pkgs []*aPackage) bool {
	for _, ap := range pkgs {
		for _, a := range ap.LinkArgs {
			if strings.HasPrefix(a, "-lpython") || (strings.HasPrefix(a, "-L") && strings.Contains(filepath.ToSlash(a[2:]), "python")) {
				return true
			}
		}
	}
	return false
}
