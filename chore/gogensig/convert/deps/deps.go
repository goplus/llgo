package deps

import (
	"errors"
	"path/filepath"

	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/mod/gopmod"
)

func LoadDeps(dir string, deps []string) (pkgs []*CPackage, err error) {
	mod, err := gopmod.Load(dir)
	if err != nil {
		return nil, err
	}
	return Imports(mod, deps)
}

type Module = gopmod.Module

func Imports(mod *Module, pkgPaths []string) (pkgs []*CPackage, err error) {
	pkgs = make([]*CPackage, len(pkgPaths))
	for i, pkgPath := range pkgPaths {
		pkgs[i], err = Import(mod, pkgPath)
		if err != nil {
			return nil, err
		}
	}
	return
}

type CPackage struct {
	*gopmod.Package
	Path    string // package path
	Dir     string // absolue local path of the package
	Pubs    map[string]string
	StdIncs []string // std include dirs
}

func Import(mod *Module, pkgPath string) (p *CPackage, err error) {
	if mod == nil {
		return nil, errors.New("go.mod not found")
	}
	pkg, err := mod.Lookup(pkgPath)
	if err != nil {
		return nil, err
	}
	pkgDir, err := filepath.Abs(pkg.Dir)
	if err != nil {
		return nil, err
	}
	pubs, err := config.ReadPubFile(filepath.Join(pkgDir, "llcppg.pub"))
	if err != nil {
		return nil, err
	}
	pkgIncs, err := findStdIncs(pkgDir)
	if err != nil {
		return nil, err
	}
	return &CPackage{Package: pkg, Path: pkgPath, Dir: pkgDir, Pubs: pubs, StdIncs: pkgIncs}, nil
}

func findStdIncs(pkgDir string) (incs []string, err error) {
	file := filepath.Join(pkgDir, "llcppg.cfg")
	cfg, err := config.GetCppgCfgFromPath(file)
	if err != nil {
		return nil, err
	}
	return cfg.Include, nil
}
