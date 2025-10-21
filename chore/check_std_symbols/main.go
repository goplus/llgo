package main

import (
	"bufio"
	"bytes"
	"flag"
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"os"
	"os/exec"
	"path/filepath"
	"sort"
	"strconv"
	"strings"
	"unicode"
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

func main() {
	var specs pkgSpecs
	flag.Var(&specs, "pkg", "package coverage check in the form <import path>=<test dir>")
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

		var missing []string
		for _, name := range symbols {
			if !used[name] {
				missing = append(missing, name)
			}
		}
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

func exportedSymbols(pkgPath string) ([]string, error) {
	cmd := exec.Command("go", "doc", "-all", pkgPath)
	cmd.Env = os.Environ()
	out, err := cmd.Output()
	if err != nil {
		return nil, fmt.Errorf("go doc: %w", err)
	}

	scanner := bufio.NewScanner(bytes.NewReader(out))
	seen := make(map[string]struct{})
	var symbols []string
	inConstBlock := false

	for scanner.Scan() {
		line := strings.TrimSpace(scanner.Text())
		if line == "" {
			continue
		}

		if strings.HasPrefix(line, "const ") {
			rest := strings.TrimSpace(strings.TrimPrefix(line, "const "))
			if rest == "" {
				continue
			}
			if strings.HasPrefix(rest, "(") {
				inConstBlock = true
				continue
			}

			if name := parseIdentifier(rest); addSymbol(seen, &symbols, name) {
				continue
			}
		}

		if inConstBlock {
			if line == ")" {
				inConstBlock = false
				continue
			}
			if strings.HasPrefix(line, "//") {
				continue
			}
			if name := parseIdentifier(line); addSymbol(seen, &symbols, name) {
				continue
			}
		}

		if !strings.HasPrefix(line, "func ") {
			continue
		}
		rest := strings.TrimSpace(strings.TrimPrefix(line, "func "))
		if rest == "" {
			continue
		}
		if strings.HasPrefix(rest, "(") {
			// Method, not a package-level function.
			continue
		}

		name := parseIdentifier(rest)
		if name == "" {
			continue
		}
		if !unicode.IsUpper([]rune(name)[0]) {
			continue
		}
		if _, ok := seen[name]; ok {
			continue
		}

		seen[name] = struct{}{}
		symbols = append(symbols, name)
	}

	if err := scanner.Err(); err != nil {
		return nil, fmt.Errorf("scan go doc output: %w", err)
	}

	sort.Strings(symbols)
	return symbols, nil
}

func addSymbol(seen map[string]struct{}, symbols *[]string, name string) bool {
	if name == "" {
		return false
	}
	if !unicode.IsUpper([]rune(name)[0]) {
		return false
	}
	if _, ok := seen[name]; ok {
		return true
	}
	seen[name] = struct{}{}
	*symbols = append(*symbols, name)
	return true
}

func parseIdentifier(input string) string {
	for i, r := range input {
		if !(unicode.IsLetter(r) || unicode.IsDigit(r)) {
			return input[:i]
		}
	}
	return input
}

func usedSymbols(testDir, pkgPath string) (map[string]bool, error) {
	info := make(map[string]bool)

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

		fset := token.NewFileSet()
		file, err := parser.ParseFile(fset, path, nil, parser.ParseComments)
		if err != nil {
			return fmt.Errorf("parse %s: %w", path, err)
		}

		aliases, dotImport, err := collectAliases(file, pkgPath)
		if err != nil {
			return fmt.Errorf("%s: %w", path, err)
		}
		if dotImport {
			return fmt.Errorf("%s: dot imports of %s are not supported", path, pkgPath)
		}
		if len(aliases) == 0 {
			return nil
		}

		ast.Inspect(file, func(n ast.Node) bool {
			sel, ok := n.(*ast.SelectorExpr)
			if !ok {
				return true
			}
			ident, ok := sel.X.(*ast.Ident)
			if !ok {
				return true
			}
			if aliases[ident.Name] {
				info[sel.Sel.Name] = true
			}
			return true
		})

		return nil
	})

	return info, err
}

func collectAliases(file *ast.File, target string) (map[string]bool, bool, error) {
	aliases := make(map[string]bool)
	var dotImport bool

	for _, imp := range file.Imports {
		path, err := strconv.Unquote(imp.Path.Value)
		if err != nil {
			return nil, false, fmt.Errorf("unquote import path: %w", err)
		}
		if path != target {
			continue
		}

		if imp.Name != nil {
			switch imp.Name.Name {
			case ".":
				dotImport = true
				continue
			case "_":
				continue
			default:
				aliases[imp.Name.Name] = true
				continue
			}
		}

		aliases[filepath.Base(path)] = true
	}

	return aliases, dotImport, nil
}
