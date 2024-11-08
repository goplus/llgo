package deps

import (
	"errors"
	"fmt"
	"os"
	"path/filepath"
	"sort"
	"strings"

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
	pubs, err := ReadPubFile(filepath.Join(pkgDir, "llcppg.pub"))
	if err != nil {
		return nil, err
	}
	pkgIncs, err := findStdIncs(pkgDir)
	if err != nil {
		return nil, err
	}
	return &CPackage{Package: pkg, Path: pkgPath, Dir: pkgDir, Pubs: pubs, StdIncs: pkgIncs}, nil
}

func ReadPubFile(pubfile string) (ret map[string]string, err error) {
	b, err := os.ReadFile(pubfile)
	if err != nil {
		if os.IsNotExist(err) {
			return make(map[string]string), nil
		}
		return
	}

	text := string(b)
	lines := strings.Split(text, "\n")
	ret = make(map[string]string, len(lines))
	for i, line := range lines {
		flds := strings.Fields(line)
		goName := ""
		switch len(flds) {
		case 1:
		case 2:
			goName = flds[1]
		case 0:
			continue
		default:
			err = fmt.Errorf("%s:%d: too many fields", pubfile, i+1)
			return
		}
		ret[flds[0]] = goName
	}
	return
}

func WritePubFile(file string, public map[string]string) (err error) {
	if len(public) == 0 {
		return
	}
	f, err := os.Create(file)
	if err != nil {
		return
	}
	defer f.Close()
	ret := make([]string, 0, len(public))
	for name, goName := range public {
		if goName == "" {
			ret = append(ret, name)
		} else {
			ret = append(ret, name+" "+goName)
		}
	}
	sort.Strings(ret)
	_, err = f.WriteString(strings.Join(ret, "\n"))
	return
}

func findStdIncs(pkgDir string) (incs []string, err error) {
	file := filepath.Join(pkgDir, "llcppg.cfg")
	cfg, err := config.GetCppgCfgFromPath(file)
	if err != nil {
		return nil, err
	}
	return cfg.Include, nil
}
