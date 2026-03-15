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
