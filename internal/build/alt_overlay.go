package build

import (
	"bytes"
	"fmt"
	"go/format"
	"go/parser"
	"go/token"
	"os"
	"path/filepath"
	"slices"
	"strconv"
	"strings"

	ipackages "github.com/goplus/llgo/internal/packages"
	llruntime "github.com/goplus/llgo/runtime"
)

func cloneOverlay(src map[string][]byte) map[string][]byte {
	if len(src) == 0 {
		return nil
	}
	dup := make(map[string][]byte, len(src))
	for k, v := range src {
		dup[k] = slices.Clone(v)
	}
	return dup
}

func rewriteAltImports(src []byte) ([]byte, bool, error) {
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, "", src, parser.ParseComments)
	if err != nil {
		return nil, false, err
	}
	changed := false
	for _, imp := range file.Imports {
		path, err := strconv.Unquote(imp.Path.Value)
		if err != nil {
			return nil, false, err
		}
		if !strings.HasPrefix(path, "internal/") || !llruntime.HasAltPkg(path) {
			continue
		}
		imp.Path.Value = strconv.Quote(altPkgPathPrefix + path)
		changed = true
	}
	if !changed {
		return src, false, nil
	}
	var buf bytes.Buffer
	if err := format.Node(&buf, fset, file); err != nil {
		return nil, false, err
	}
	return buf.Bytes(), true, nil
}

// These packages are safer to replace in-place at their original stdlib paths.
// Doing so keeps package identity stable, which is important for generic
// instantiation in importing packages like sync.
var stdlibSourceAltPkgs = map[string]bool{
	"internal/sync": true,
}

func buildAltOverlay(base map[string][]byte, runtimeDir string, pkgPaths []string) (map[string][]byte, error) {
	var out map[string][]byte
	for _, pkgPath := range pkgPaths {
		pkgPath = strings.TrimPrefix(pkgPath, altPkgPathPrefix)
		if !llruntime.HasAltPkg(pkgPath) {
			continue
		}
		pkgDir := filepath.Join(runtimeDir, "internal", "lib", filepath.FromSlash(pkgPath))
		entries, err := os.ReadDir(pkgDir)
		if err != nil {
			if os.IsNotExist(err) {
				continue
			}
			return nil, fmt.Errorf("read alt package dir %s: %w", pkgPath, err)
		}
		for _, entry := range entries {
			if entry.IsDir() {
				continue
			}
			name := entry.Name()
			if !strings.HasSuffix(name, ".go") || strings.HasSuffix(name, "_test.go") {
				continue
			}
			filename := filepath.Join(pkgDir, name)
			src := base[filename]
			if src == nil {
				src, err = os.ReadFile(filename)
				if err != nil {
					return nil, fmt.Errorf("read alt package file %s: %w", filename, err)
				}
			}
			rewritten, changed, err := rewriteAltImports(src)
			if err != nil {
				return nil, fmt.Errorf("rewrite alt imports %s: %w", filename, err)
			}
			if !changed {
				continue
			}
			if out == nil {
				out = cloneOverlay(base)
				if out == nil {
					out = make(map[string][]byte)
				}
			}
			out[filename] = rewritten
		}
	}
	if out == nil {
		return base, nil
	}
	return out, nil
}

func buildStdlibAltSourceOverlay(base map[string][]byte, runtimeDir string, initial []*ipackages.Package, conf *Config) (map[string][]byte, map[string]bool, error) {
	var out map[string][]byte
	var loadErr error
	replaced := make(map[string]bool)
	ipackages.Visit(initial, nil, func(p *ipackages.Package) {
		if loadErr != nil {
			return
		}
		if p == nil || p.PkgPath == "" || !stdlibSourceAltPkgs[p.PkgPath] {
			return
		}
		if !hasAltPkgForTarget(conf, p.PkgPath) || llruntime.HasAdditiveAltPkg(p.PkgPath) {
			return
		}
		files := p.CompiledGoFiles
		if len(files) == 0 {
			files = p.GoFiles
		}
		targetFiles := make(map[string]string, len(files))
		for _, file := range files {
			name := filepath.Base(file)
			if !strings.HasSuffix(name, ".go") || strings.HasSuffix(name, "_test.go") {
				continue
			}
			targetFiles[name] = file
		}
		if len(targetFiles) == 0 {
			return
		}

		pkgDir := filepath.Join(runtimeDir, "internal", "lib", filepath.FromSlash(p.PkgPath))
		entries, err := os.ReadDir(pkgDir)
		if err != nil {
			if os.IsNotExist(err) {
				return
			}
			loadErr = fmt.Errorf("read stdlib alt package dir %s: %w", p.PkgPath, err)
			return
		}

		var changed bool
		for _, entry := range entries {
			if entry.IsDir() {
				continue
			}
			name := entry.Name()
			if !strings.HasSuffix(name, ".go") || strings.HasSuffix(name, "_test.go") {
				continue
			}
			targetFile, ok := targetFiles[name]
			if !ok {
				continue
			}
			filename := filepath.Join(pkgDir, name)
			src := base[filename]
			if src == nil {
				src, err = os.ReadFile(filename)
				if err != nil {
					loadErr = fmt.Errorf("read stdlib alt package file %s: %w", filename, err)
					return
				}
			}
			if out == nil {
				out = cloneOverlay(base)
				if out == nil {
					out = make(map[string][]byte)
				}
			}
			out[targetFile] = slices.Clone(src)
			changed = true
		}
		if changed {
			replaced[p.PkgPath] = true
		}
	})
	if loadErr != nil {
		return nil, nil, loadErr
	}
	if out == nil {
		return base, nil, nil
	}
	return out, replaced, nil
}
