package main

import (
	"bufio"
	"bytes"
	"errors"
	"flag"
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"os"
	"os/exec"
	"path/filepath"
	"sort"
	"strconv"
	"strings"
	"unicode"

	"golang.org/x/tools/go/packages"
)

type pkgSpec struct {
	pkgPath string
	testDir string
}

type pkgSpecs []pkgSpec

func (p *pkgSpecs) String() string {
	var parts []string
	for _, spec := range *p {
		parts = append(parts, fmt.Sprintf("%s=%s", spec.pkgPath, spec.testDir))
	}
	return strings.Join(parts, ", ")
}

func (p *pkgSpecs) Set(value string) error {
	parts := strings.SplitN(value, "=", 2)
	if len(parts) != 2 {
		return fmt.Errorf("invalid pkg specification %q (want pkg=path)", value)
	}
	pkgPath := strings.TrimSpace(parts[0])
	testDir := strings.TrimSpace(parts[1])
	if pkgPath == "" || testDir == "" {
		return fmt.Errorf("invalid pkg specification %q (empty component)", value)
	}
	*p = append(*p, pkgSpec{pkgPath: pkgPath, testDir: testDir})
	return nil
}

type symbolKind string

type symbol struct {
	kind     symbolKind
	name     string
	receiver string
}

const (
	kindConst  symbolKind = "const"
	kindVar    symbolKind = "var"
	kindFunc   symbolKind = "func"
	kindType   symbolKind = "type"
	kindMethod symbolKind = "method"
)

var verbose bool

func main() {
	var specs pkgSpecs
	flag.Var(&specs, "pkg", "package coverage check in the form <import path>=<test dir>")
	flag.BoolVar(&verbose, "v", false, "display coverage status for each exported symbol")
	flag.Parse()

	if len(specs) == 0 {
		fmt.Fprintln(os.Stderr, "usage: go run ./chore/check_std_symbols -pkg math=test/std/math")
		os.Exit(2)
	}

	root, err := os.Getwd()
	if err != nil {
		fmt.Fprintf(os.Stderr, "failed to determine working directory: %v\n", err)
		os.Exit(2)
	}

	var failures int

	for _, spec := range specs {
		symbols, err := exportedSymbols(spec.pkgPath)
		if err != nil {
			fmt.Fprintf(os.Stderr, "failed to inspect package %s: %v\n", spec.pkgPath, err)
			failures++
			continue
		}

		testDir := filepath.Join(root, filepath.Clean(spec.testDir))
		used, err := usedSymbols(testDir, spec.pkgPath)
		if err != nil {
			fmt.Fprintf(os.Stderr, "failed to inspect tests in %s: %v\n", spec.testDir, err)
			failures++
			continue
		}

		missing := collectMissing(symbols, used, spec.pkgPath)
		if len(missing) > 0 {
			sort.Strings(missing)
			fmt.Fprintf(os.Stderr, "package %s missing coverage for %d exported identifiers:\n", spec.pkgPath, len(missing))
			for _, name := range missing {
				fmt.Fprintf(os.Stderr, "  - %s\n", name)
			}
			failures++
			continue
		}

		fmt.Printf("package %s: %d exported identifiers covered by tests in %s\n", spec.pkgPath, len(symbols), spec.testDir)
	}

	if failures > 0 {
		os.Exit(1)
	}
}

func symbolKey(sym symbol) string {
	if sym.kind == kindMethod {
		return fmt.Sprintf("%s.%s", sym.receiver, sym.name)
	}
	return sym.name
}

func collectMissing(symbols []symbol, used map[string]bool, pkgPath string) []string {
	var missing []string
	if verbose && len(symbols) > 0 {
		fmt.Printf("package %s symbols:\n", pkgPath)
	}
	for _, sym := range symbols {
		key := symbolKey(sym)
		if used[key] {
			if verbose {
				fmt.Printf("  OK   %s\n", key)
			}
			continue
		}
		missing = append(missing, key)
		if verbose {
			fmt.Printf("  MISS %s\n", key)
		}
	}
	if verbose && len(symbols) > 0 {
		fmt.Println()
	}
	return missing
}

func exportedSymbols(pkgPath string) ([]symbol, error) {
	cmd := exec.Command("go", "doc", "-all", pkgPath)
	cmd.Env = os.Environ()
	out, err := cmd.Output()
	if err != nil {
		return nil, fmt.Errorf("go doc: %w", err)
	}

	scanner := bufio.NewScanner(bytes.NewReader(out))
	seen := make(map[string]struct{})
	var symbols []symbol

	section := ""
	inConstBlock := false
	inVarBlock := false

	add := func(sym symbol) {
		key := symbolKey(sym)
		if key == "" {
			return
		}
		if _, ok := seen[key]; ok {
			return
		}
		seen[key] = struct{}{}
		symbols = append(symbols, sym)
	}

	for scanner.Scan() {
		line := strings.TrimSpace(scanner.Text())
		if line == "" {
			continue
		}

		switch line {
		case "CONSTANTS":
			section = "const"
			inConstBlock = false
			inVarBlock = false
			continue
		case "VARIABLES":
			section = "var"
			inConstBlock = false
			inVarBlock = false
			continue
		case "FUNCTIONS":
			section = "func"
			inConstBlock = false
			inVarBlock = false
			continue
		case "TYPES":
			section = "type"
			inConstBlock = false
			inVarBlock = false
			continue
		}

		switch section {
		case "const":
			if strings.HasPrefix(line, "const (") {
				inConstBlock = true
				continue
			}
			if strings.HasPrefix(line, "const ") {
				name := parseIdentifier(strings.TrimSpace(strings.TrimPrefix(line, "const ")))
				if exportedName(name) {
					add(symbol{kind: kindConst, name: name})
				}
				continue
			}
			if inConstBlock {
				if line == ")" {
					inConstBlock = false
					continue
				}
				name := parseIdentifier(line)
				if exportedName(name) {
					add(symbol{kind: kindConst, name: name})
				}
			}
		case "var":
			if strings.HasPrefix(line, "var (") {
				inVarBlock = true
				continue
			}
			if strings.HasPrefix(line, "var ") {
				name := parseIdentifier(strings.TrimSpace(strings.TrimPrefix(line, "var ")))
				if exportedName(name) {
					add(symbol{kind: kindVar, name: name})
				}
				continue
			}
			if inVarBlock {
				if line == ")" {
					inVarBlock = false
					continue
				}
				name := parseIdentifier(line)
				if exportedName(name) {
					add(symbol{kind: kindVar, name: name})
				}
			}
		case "func":
			if !strings.HasPrefix(line, "func ") {
				continue
			}
			rest := strings.TrimSpace(strings.TrimPrefix(line, "func "))
			if strings.HasPrefix(rest, "(") {
				// methods are documented under TYPES
				continue
			}
			name := parseIdentifier(rest)
			if exportedName(name) {
				add(symbol{kind: kindFunc, name: name})
			}
		case "type":
			if strings.HasPrefix(line, "type ") {
				rest := strings.TrimSpace(strings.TrimPrefix(line, "type "))
				name := parseIdentifier(rest)
				if exportedName(name) {
					add(symbol{kind: kindType, name: name})
				}
				continue
			}
			if strings.HasPrefix(line, "func (") {
				rest := strings.TrimSpace(strings.TrimPrefix(line, "func "))
				recvEnd := strings.Index(rest, ")")
				if recvEnd == -1 {
					continue
				}
				recvPart := rest[1:recvEnd]
				methodPart := strings.TrimSpace(rest[recvEnd+1:])
				methodName := parseIdentifier(methodPart)
				if !exportedName(methodName) {
					continue
				}
				receiver := receiverTypeName(recvPart)
				if receiver == "" || !exportedName(receiver) {
					continue
				}
				add(symbol{kind: kindMethod, name: methodName, receiver: receiver})
			}
		}
	}

	if err := scanner.Err(); err != nil {
		return nil, fmt.Errorf("scan go doc output: %w", err)
	}

	sort.Slice(symbols, func(i, j int) bool {
		return symbolKey(symbols[i]) < symbolKey(symbols[j])
	})
	return symbols, nil
}

func exportedName(name string) bool {
	if name == "" {
		return false
	}
	r := rune(name[0])
	return unicode.IsUpper(r)
}

func parseIdentifier(input string) string {
	for i, r := range input {
		if !(unicode.IsLetter(r) || unicode.IsDigit(r)) {
			if i == 0 {
				return ""
			}
			return input[:i]
		}
	}
	return input
}

func receiverTypeName(recv string) string {
	fields := strings.Fields(recv)
	if len(fields) == 0 {
		return ""
	}
	typ := fields[len(fields)-1]
	typ = strings.TrimPrefix(typ, "*")
	return parseIdentifier(typ)
}

func usedSymbols(testDir, targetPkg string) (map[string]bool, error) {
	if err := ensureNoDotImports(testDir, targetPkg); err != nil {
		return nil, err
	}

	cfg := &packages.Config{
		Mode:  packages.NeedSyntax | packages.NeedTypes | packages.NeedTypesInfo | packages.NeedImports,
		Dir:   testDir,
		Tests: true,
	}
	pkgs, err := packages.Load(cfg, ".")
	if err != nil {
		return nil, fmt.Errorf("packages.Load: %w", err)
	}
	if packages.PrintErrors(pkgs) > 0 {
		return nil, errors.New("packages.Load reported errors")
	}

	used := make(map[string]bool)

	for _, pkg := range pkgs {
		fset := pkg.Fset
		if pkg.TypesInfo == nil {
			continue
		}
		for ident, obj := range pkg.TypesInfo.Uses {
			if obj == nil {
				continue
			}
			if !isIdentifierInDir(fset, ident, testDir) {
				continue
			}
			markIfFromTarget(used, obj, targetPkg)
		}
	}

	return used, nil
}

func ensureNoDotImports(testDir, targetPkg string) error {
	fset := token.NewFileSet()
	var dotImports []string
	err := filepath.WalkDir(testDir, func(path string, entry os.DirEntry, err error) error {
		if err != nil {
			return err
		}
		if entry.IsDir() {
			return nil
		}
		if !strings.HasSuffix(path, "_test.go") {
			return nil
		}
		file, err := parser.ParseFile(fset, path, nil, parser.ImportsOnly)
		if err != nil {
			return err
		}
		for _, imp := range file.Imports {
			if imp.Name != nil && imp.Name.Name == "." {
				importPath, err := strconv.Unquote(imp.Path.Value)
				if err != nil {
					return err
				}
				if importPath == targetPkg {
					dotImports = append(dotImports, path)
				}
			}
		}
		return nil
	})
	if err != nil {
		return err
	}
	if len(dotImports) > 0 {
		return fmt.Errorf("dot imports of %s are not supported (found in %s)", targetPkg, strings.Join(dotImports, ", "))
	}
	return nil
}

func isIdentifierInDir(fset *token.FileSet, ident *ast.Ident, dir string) bool {
	pos := fset.PositionFor(ident.Pos(), false)
	if pos.Filename == "" {
		return false
	}
	filename, err := filepath.Abs(pos.Filename)
	if err != nil {
		return false
	}
	dirAbs, err := filepath.Abs(dir)
	if err != nil {
		return false
	}
	if !strings.HasPrefix(filename, dirAbs) {
		return false
	}
	return strings.HasSuffix(filename, "_test.go")
}

func markIfFromTarget(used map[string]bool, obj types.Object, targetPkg string) {
	pkg := obj.Pkg()
	if pkg == nil {
		// For methods, package is obtained from the receiver type.
		if fn, ok := obj.(*types.Func); ok {
			markMethodUsage(used, fn, targetPkg)
		}
		return
	}
	if pkg.Path() != targetPkg {
		return
	}
	switch obj := obj.(type) {
	case *types.Const:
		used[obj.Name()] = true
	case *types.Var:
		if obj.IsField() {
			return
		}
		used[obj.Name()] = true
	case *types.TypeName:
		used[obj.Name()] = true
	case *types.Func:
		sig := obj.Type().(*types.Signature)
		if sig.Recv() == nil {
			used[obj.Name()] = true
		} else {
			recv := receiverFromType(sig.Recv().Type(), targetPkg)
			if recv != "" {
				used[recv] = true
				used[fmt.Sprintf("%s.%s", recv, obj.Name())] = true
			}
		}
	}
}

func markMethodUsage(used map[string]bool, fn *types.Func, targetPkg string) {
	sig, ok := fn.Type().(*types.Signature)
	if !ok || sig.Recv() == nil {
		return
	}
	recv := receiverFromType(sig.Recv().Type(), targetPkg)
	if recv == "" {
		return
	}
	obj := fn
	if obj.Pkg() != nil && obj.Pkg().Path() != targetPkg {
		return
	}
	used[recv] = true
	used[fmt.Sprintf("%s.%s", recv, fn.Name())] = true
}

func receiverFromType(t types.Type, targetPkg string) string {
	switch tt := t.(type) {
	case *types.Pointer:
		return receiverFromType(tt.Elem(), targetPkg)
	case *types.Named:
		if tt.Obj() != nil && tt.Obj().Pkg() != nil && tt.Obj().Pkg().Path() == targetPkg {
			return tt.Obj().Name()
		}
	}
	return ""
}
