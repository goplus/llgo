package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"os"
	"path/filepath"
	"runtime"
	"strings"

	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/packages"
)

func main() {
	var (
		pkgPath  string
		asmFile  string
		goos     string
		goarch   string
		outFile  string
		metaFile string
		annotate bool
	)
	flag.StringVar(&pkgPath, "pkg", "", "Go package import path (required)")
	flag.StringVar(&asmFile, "file", "", "Plan9 asm .s file path (required)")
	flag.StringVar(&goos, "goos", runtime.GOOS, "target GOOS")
	flag.StringVar(&goarch, "goarch", runtime.GOARCH, "target GOARCH")
	flag.StringVar(&outFile, "out", "", "output .ll path (default: <file>.ll, or '-' for stdout)")
	flag.StringVar(&metaFile, "meta", "", "optional output metadata json path")
	flag.BoolVar(&annotate, "annotate", true, "emit source asm lines as IR comments")
	flag.Parse()

	if strings.TrimSpace(pkgPath) == "" || strings.TrimSpace(asmFile) == "" {
		fmt.Fprintln(os.Stderr, "usage: go run ./chore/plan9asm -pkg <import/path> -file <path/to/file.s> [-goos ...] [-goarch ...] [-out ...] [-meta ...] [-annotate=true]")
		os.Exit(2)
	}

	pkg, err := loadPackage(pkgPath, goos, goarch)
	check(err)

	asmPath, err := resolveAsmPath(pkg.Dir, asmFile)
	check(err)

	tr, err := build.TranslatePlan9AsmFileForPkgWithOptions(
		pkg,
		asmPath,
		goos,
		goarch,
		nil,
		build.TranslatePlan9AsmOptions{
			AnnotateSource: annotate,
		},
	)
	check(err)

	if outFile == "" {
		outFile = asmPath + ".ll"
	}
	if outFile == "-" {
		_, err = os.Stdout.WriteString(tr.LLVMIR)
		check(err)
	} else {
		check(os.WriteFile(outFile, []byte(tr.LLVMIR), 0644))
		fmt.Fprintf(os.Stderr, "wrote llvm ir: %s\n", outFile)
	}

	if metaFile != "" {
		payload := struct {
			Package   string                         `json:"package"`
			File      string                         `json:"file"`
			GOOS      string                         `json:"goos"`
			GOARCH    string                         `json:"goarch"`
			Functions []build.Plan9AsmFunctionInfo   `json:"functions"`
			Raw       *build.Plan9AsmFileTranslation `json:"translation"`
		}{
			Package:   pkg.PkgPath,
			File:      asmPath,
			GOOS:      goos,
			GOARCH:    goarch,
			Functions: tr.Functions,
			Raw:       tr,
		}
		data, err := json.MarshalIndent(payload, "", "  ")
		check(err)
		check(os.WriteFile(metaFile, data, 0644))
		fmt.Fprintf(os.Stderr, "wrote metadata: %s\n", metaFile)
	}
}

func loadPackage(pkgPath, goos, goarch string) (*packages.Package, error) {
	cfg := &packages.Config{
		Mode: packages.NeedName |
			packages.NeedFiles |
			packages.NeedCompiledGoFiles |
			packages.NeedImports |
			packages.NeedSyntax |
			packages.NeedTypes |
			packages.NeedTypesSizes |
			packages.NeedTypesInfo,
		Env: append(os.Environ(), "GOOS="+goos, "GOARCH="+goarch),
	}
	pkgs, err := packages.LoadEx(nil, nil, cfg, pkgPath)
	if err != nil {
		return nil, err
	}
	if len(pkgs) == 0 {
		return nil, fmt.Errorf("package not found: %s", pkgPath)
	}
	for _, p := range pkgs {
		if len(p.Errors) != 0 {
			return nil, fmt.Errorf("load %s: %s", p.PkgPath, p.Errors[0].Msg)
		}
	}
	for _, p := range pkgs {
		if p.PkgPath == pkgPath {
			if p.Types == nil || p.Types.Scope() == nil {
				return nil, fmt.Errorf("package %s loaded without types", pkgPath)
			}
			return p, nil
		}
	}
	p := pkgs[0]
	if p.Types == nil || p.Types.Scope() == nil {
		return nil, fmt.Errorf("package %s loaded without types", p.PkgPath)
	}
	return p, nil
}

func resolveAsmPath(pkgDir, asmFile string) (string, error) {
	if asmFile == "" {
		return "", fmt.Errorf("empty asm file path")
	}
	paths := []string{asmFile}
	if !filepath.IsAbs(asmFile) {
		paths = append(paths, filepath.Join(pkgDir, asmFile))
	}
	for _, p := range paths {
		if fi, err := os.Stat(p); err == nil && !fi.IsDir() {
			return filepath.Abs(p)
		}
	}
	return "", fmt.Errorf("asm file not found: %s (searched: %s)", asmFile, strings.Join(paths, ", "))
}

func check(err error) {
	if err == nil {
		return
	}
	fmt.Fprintln(os.Stderr, err)
	os.Exit(1)
}
