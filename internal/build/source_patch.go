package build

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/format"
	"go/parser"
	"go/token"
	"os"
	"path/filepath"
	"runtime"
	"slices"
	"strings"

	llruntime "github.com/goplus/llgo/runtime"
	"golang.org/x/tools/go/ast/astutil"
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

func buildSourcePatchOverlay(base map[string][]byte, runtimeDir string) (map[string][]byte, error) {
	return buildSourcePatchOverlayForGOROOT(base, runtimeDir, runtime.GOROOT())
}

func buildSourcePatchOverlayForGOROOT(base map[string][]byte, runtimeDir, goroot string) (map[string][]byte, error) {
	var out map[string][]byte
	for _, pkgPath := range llruntime.SourcePatchPkgPaths() {
		changed, next, err := applySourcePatchForPkg(base, out, runtimeDir, goroot, pkgPath)
		if err != nil {
			return nil, err
		}
		if !changed {
			continue
		}
		out = next
	}
	if out == nil {
		return base, nil
	}
	return out, nil
}

func applySourcePatchForPkg(base, current map[string][]byte, runtimeDir, goroot, pkgPath string) (bool, map[string][]byte, error) {
	patchDir := filepath.Join(runtimeDir, "internal", "lib", filepath.FromSlash(pkgPath))
	entries, err := os.ReadDir(patchDir)
	if err != nil {
		if os.IsNotExist(err) {
			return false, current, nil
		}
		return false, nil, fmt.Errorf("read source patch dir %s: %w", pkgPath, err)
	}

	srcDir := filepath.Join(goroot, "src", filepath.FromSlash(pkgPath))
	srcEntries, err := os.ReadDir(srcDir)
	if err != nil {
		return false, nil, fmt.Errorf("read stdlib dir %s: %w", pkgPath, err)
	}

	var (
		out       = current
		changed   bool
		patchSrcs = make(map[string][]byte)
		skipAll   bool
		skips     = make(map[string]struct{})
	)
	readOverlay := func(filename string) ([]byte, error) {
		if out != nil {
			if src, ok := out[filename]; ok {
				return src, nil
			}
		}
		if src, ok := base[filename]; ok {
			return src, nil
		}
		return os.ReadFile(filename)
	}

	for _, entry := range entries {
		if entry.IsDir() {
			continue
		}
		name := entry.Name()
		if !strings.HasSuffix(name, ".go") || strings.HasSuffix(name, "_test.go") {
			continue
		}
		filename := filepath.Join(patchDir, name)
		src, err := readOverlay(filename)
		if err != nil {
			return false, nil, fmt.Errorf("read source patch file %s: %w", filename, err)
		}
		patchSrcs[name] = slices.Clone(src)
		directives, err := collectSourcePatchDirectives(src)
		if err != nil {
			return false, nil, fmt.Errorf("parse source patch directives %s: %w", filename, err)
		}
		if directives.skipAll {
			skipAll = true
		}
		for name := range directives.skips {
			skips[name] = struct{}{}
		}
	}
	if len(patchSrcs) == 0 {
		return false, current, nil
	}

	ensureOverlay := func() {
		if out == nil {
			out = cloneOverlay(base)
			if out == nil {
				out = make(map[string][]byte)
			}
		}
	}

	if skipAll {
		for _, entry := range srcEntries {
			if entry.IsDir() {
				continue
			}
			name := entry.Name()
			if !strings.HasSuffix(name, ".go") || strings.HasSuffix(name, "_test.go") {
				continue
			}
			filename := filepath.Join(srcDir, name)
			src, err := readOverlay(filename)
			if err != nil {
				return false, nil, fmt.Errorf("read stdlib source file %s: %w", filename, err)
			}
			stub, err := packageStubSource(src)
			if err != nil {
				return false, nil, fmt.Errorf("build stdlib stub %s: %w", filename, err)
			}
			ensureOverlay()
			out[filename] = stub
			changed = true
		}
	} else if len(skips) != 0 {
		for _, entry := range srcEntries {
			if entry.IsDir() {
				continue
			}
			name := entry.Name()
			if !strings.HasSuffix(name, ".go") || strings.HasSuffix(name, "_test.go") {
				continue
			}
			filename := filepath.Join(srcDir, name)
			src, err := readOverlay(filename)
			if err != nil {
				return false, nil, fmt.Errorf("read stdlib source file %s: %w", filename, err)
			}
			filtered, changedFile, err := filterSourcePatchFile(src, skips)
			if err != nil {
				return false, nil, fmt.Errorf("filter stdlib source file %s: %w", filename, err)
			}
			if !changedFile {
				continue
			}
			ensureOverlay()
			out[filename] = filtered
			changed = true
		}
	}

	for name, src := range patchSrcs {
		target := filepath.Join(srcDir, "z_llgo_patch_"+name)
		ensureOverlay()
		out[target] = src
		changed = true
	}
	return changed, out, nil
}

func packageStubSource(src []byte) ([]byte, error) {
	lines := strings.SplitAfter(string(src), "\n")
	var buf strings.Builder
	for _, line := range lines {
		buf.WriteString(line)
		if strings.HasPrefix(strings.TrimSpace(line), "package ") {
			return []byte(buf.String()), nil
		}
	}
	return nil, fmt.Errorf("package clause not found")
}

type sourcePatchDirectives struct {
	skipAll bool
	skips   map[string]struct{}
}

func collectSourcePatchDirectives(src []byte) (sourcePatchDirectives, error) {
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, "", src, parser.ParseComments)
	if err != nil {
		return sourcePatchDirectives{}, err
	}
	d := sourcePatchDirectives{skips: make(map[string]struct{})}
	for _, group := range file.Comments {
		for _, comment := range group.List {
			line := strings.TrimSpace(comment.Text)
			skipAll, names, ok := parseSourcePatchDirective(line)
			if !ok {
				continue
			}
			if skipAll {
				d.skipAll = true
			}
			for _, name := range names {
				d.skips[name] = struct{}{}
			}
		}
	}
	for _, decl := range file.Decls {
		for _, name := range declPatchKeys(decl) {
			d.skips[name] = struct{}{}
		}
	}
	return d, nil
}

func parseSourcePatchDirective(line string) (skipAll bool, names []string, ok bool) {
	const (
		llgo1 = "//llgo:"
		llgo2 = "// llgo:"
		go1   = "//go:"
	)
	if strings.HasPrefix(line, go1) {
		return false, nil, false
	}
	var tail string
	switch {
	case strings.HasPrefix(line, llgo1):
		tail = line[len(llgo1):]
	case strings.HasPrefix(line, llgo2):
		tail = line[len(llgo2):]
	default:
		return false, nil, false
	}
	switch {
	case tail == "skipall":
		return true, nil, true
	case strings.HasPrefix(tail, "skip "):
		return false, strings.Fields(tail[len("skip "):]), true
	default:
		return false, nil, false
	}
}

func filterSourcePatchFile(src []byte, skips map[string]struct{}) ([]byte, bool, error) {
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, "", src, parser.ParseComments)
	if err != nil {
		return nil, false, err
	}
	changed := false
	decls := file.Decls[:0]
	for _, decl := range file.Decls {
		filteredDecl, removed, err := filterSourcePatchDecl(decl, skips)
		if err != nil {
			return nil, false, err
		}
		if removed {
			changed = true
		}
		if filteredDecl != nil {
			decls = append(decls, filteredDecl)
		}
	}
	if !changed {
		return src, false, nil
	}
	file.Decls = decls
	for _, imp := range slices.Clone(file.Imports) {
		if imp.Name != nil && imp.Name.Name == "_" {
			continue
		}
		if astutil.UsesImport(file, strings.Trim(imp.Path.Value, `"`)) {
			continue
		}
		astutil.DeleteImport(fset, file, strings.Trim(imp.Path.Value, `"`))
	}
	var buf bytes.Buffer
	if err := format.Node(&buf, fset, file); err != nil {
		return nil, false, err
	}
	return buf.Bytes(), true, nil
}

func filterSourcePatchDecl(decl ast.Decl, skips map[string]struct{}) (ast.Decl, bool, error) {
	switch decl := decl.(type) {
	case *ast.FuncDecl:
		if _, ok := skips[declPatchKeyFunc(decl)]; ok {
			return nil, true, nil
		}
		return decl, false, nil
	case *ast.GenDecl:
		switch decl.Tok {
		case token.TYPE, token.VAR, token.CONST:
		default:
			return decl, false, nil
		}
		specs := decl.Specs[:0]
		removedAny := false
		for _, spec := range decl.Specs {
			filteredSpec, removed := filterSourcePatchSpec(spec, skips)
			if removed {
				removedAny = true
			}
			if filteredSpec != nil {
				specs = append(specs, filteredSpec)
			}
		}
		if len(specs) == 0 {
			return nil, removedAny, nil
		}
		if !removedAny {
			return decl, false, nil
		}
		out := *decl
		out.Specs = specs
		return &out, true, nil
	default:
		return decl, false, nil
	}
}

func filterSourcePatchSpec(spec ast.Spec, skips map[string]struct{}) (ast.Spec, bool) {
	switch spec := spec.(type) {
	case *ast.TypeSpec:
		if _, ok := skips[spec.Name.Name]; ok {
			return nil, true
		}
		return spec, false
	case *ast.ValueSpec:
		keep := make([]*ast.Ident, 0, len(spec.Names))
		removed := false
		for _, name := range spec.Names {
			if _, ok := skips[name.Name]; ok {
				removed = true
				continue
			}
			keep = append(keep, name)
		}
		if !removed {
			return spec, false
		}
		if len(keep) == 0 {
			return nil, true
		}
		if len(keep) != len(spec.Names) {
			// Keep the transformation simple and deterministic. Mixed multi-name specs
			// can be split later if we need them in real patches.
			return nil, true
		}
		out := *spec
		out.Names = keep
		return &out, true
	default:
		return spec, false
	}
}

func declPatchKeys(decl ast.Decl) []string {
	switch decl := decl.(type) {
	case *ast.FuncDecl:
		return []string{declPatchKeyFunc(decl)}
	case *ast.GenDecl:
		var out []string
		for _, spec := range decl.Specs {
			switch spec := spec.(type) {
			case *ast.TypeSpec:
				out = append(out, spec.Name.Name)
			case *ast.ValueSpec:
				for _, name := range spec.Names {
					out = append(out, name.Name)
				}
			}
		}
		return out
	default:
		return nil
	}
}

func declPatchKeyFunc(decl *ast.FuncDecl) string {
	if decl.Recv == nil || len(decl.Recv.List) == 0 {
		return decl.Name.Name
	}
	return recvPatchKey(decl.Recv.List[0].Type) + "." + decl.Name.Name
}

func recvPatchKey(expr ast.Expr) string {
	switch expr := expr.(type) {
	case *ast.Ident:
		return expr.Name
	case *ast.ParenExpr:
		return recvPatchKey(expr.X)
	case *ast.StarExpr:
		return "(*" + recvPatchKey(expr.X) + ")"
	case *ast.IndexExpr:
		return recvPatchKey(expr.X)
	case *ast.IndexListExpr:
		return recvPatchKey(expr.X)
	case *ast.SelectorExpr:
		return expr.Sel.Name
	default:
		return ""
	}
}
