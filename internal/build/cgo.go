/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package build

import (
	"encoding/json"
	"fmt"
	"go/ast"
	"go/token"
	"go/types"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"strings"

	"github.com/goplus/llgo/internal/buildtags"
	llssa "github.com/goplus/llgo/ssa"
	"github.com/goplus/llgo/xtool/safesplit"
)

type cgoDecl struct {
	tag     string
	cflags  []string
	ldflags []string
}

type cgoPreamble struct {
	goFile string
	src    string
}

const (
	cgoHeader = `
#include <stdlib.h>
static void* _Cmalloc(size_t size) {
	return malloc(size);
}
`
)

func buildCgo(ctx *context, pkg *aPackage, files []*ast.File, externs []string, verbose bool) (cgoLdflags []string, err error) {
	cfiles, preambles, cdecls, err := parseCgo_(pkg, files)
	if err != nil {
		return
	}
	tagUsed := make(map[string]bool)
	for _, cdecl := range cdecls {
		if cdecl.tag != "" {
			tagUsed[cdecl.tag] = false
		}
	}
	buildtags.CheckTags(ctx.conf.BuildFlags, tagUsed)
	cflags := []string{}
	ldflags := []string{}
	for _, cdecl := range cdecls {
		if cdecl.tag == "" || tagUsed[cdecl.tag] {
			if len(cdecl.cflags) > 0 {
				cflags = append(cflags, cdecl.cflags...)
			}
			if len(cdecl.ldflags) > 0 {
				ldflags = append(ldflags, cdecl.ldflags...)
			}
		}
	}
	incDirs := make(map[string]none)
	for _, preamble := range preambles {
		dir, _ := filepath.Split(preamble.goFile)
		if _, ok := incDirs[dir]; !ok {
			incDirs[dir] = none{}
			cflags = append(cflags, "-I"+dir)
		}
	}
	for _, cfile := range cfiles {
		clFile(ctx, cflags, cfile, pkg.ExportFile, func(linkFile string) {
			cgoLdflags = append(cgoLdflags, linkFile)
		}, verbose)
	}
	re := regexp.MustCompile(`^(_cgo_[^_]+_(Cfunc|Cmacro)_)(.*)$`)
	cgoSymbols := make(map[string]string)
	mallocFix := false
	for _, symbolName := range externs {
		lastPart := symbolName
		lastDot := strings.LastIndex(symbolName, ".")
		if lastDot != -1 {
			lastPart = symbolName[lastDot+1:]
		}
		if strings.HasPrefix(lastPart, "__cgo_") {
			// func ptr var: main.__cgo_func_name
			cgoSymbols[symbolName] = lastPart
		} else if m := re.FindStringSubmatch(symbolName); len(m) > 0 {
			prefix := m[1] // _cgo_hash_(Cfunc|Cmacro)_
			name := m[3]   // remaining part
			cgoSymbols[symbolName] = name
			// fix missing _cgo_9113e32b6599_Cfunc__Cmalloc
			if !mallocFix && m[2] == "Cfunc" {
				mallocName := prefix + "_Cmalloc"
				cgoSymbols[mallocName] = "_Cmalloc"
				mallocFix = true
			}
		}
	}
	for _, preamble := range preambles {
		tmpFile, err := os.CreateTemp("", "-cgo-*.c")
		if err != nil {
			return nil, fmt.Errorf("failed to create temp file: %v", err)
		}
		tmpName := tmpFile.Name()
		defer os.Remove(tmpName)
		code := cgoHeader + "\n\n" + preamble.src
		externDecls, err := genExternDeclsByClang(pkg, code, cflags, cgoSymbols)
		if err != nil {
			return nil, fmt.Errorf("failed to generate extern decls: %v", err)
		}
		if err = os.WriteFile(tmpName, []byte(code+"\n\n"+externDecls), 0644); err != nil {
			return nil, fmt.Errorf("failed to write temp file: %v", err)
		}
		clFile(ctx, cflags, tmpName, pkg.ExportFile, func(linkFile string) {
			cgoLdflags = append(cgoLdflags, linkFile)
		}, verbose)
	}
	for _, ldflag := range ldflags {
		cgoLdflags = append(cgoLdflags, safesplit.SplitPkgConfigFlags(ldflag)...)
	}
	return
}

// clangASTNode represents a node in clang's AST
type clangASTNode struct {
	Kind  string         `json:"kind"`
	Name  string         `json:"name,omitempty"`
	Inner []clangASTNode `json:"inner,omitempty"`
}

func genExternDeclsByClang(pkg *aPackage, src string, cflags []string, cgoSymbols map[string]string) (string, error) {
	tmpSrc, err := os.CreateTemp("", "cgo-src-*.c")
	if err != nil {
		return "", fmt.Errorf("failed to create temp file: %v", err)
	}
	defer os.Remove(tmpSrc.Name())
	if err := os.WriteFile(tmpSrc.Name(), []byte(src), 0644); err != nil {
		return "", fmt.Errorf("failed to write temp file: %v", err)
	}
	symbolNames := make(map[string]bool)
	if err := getFuncNames(tmpSrc.Name(), cflags, symbolNames); err != nil {
		return "", fmt.Errorf("failed to get func names: %v", err)
	}
	macroNames := make(map[string]bool)
	if err := getMacroNames(tmpSrc.Name(), cflags, macroNames); err != nil {
		return "", fmt.Errorf("failed to get macro names: %v", err)
	}

	b := strings.Builder{}
	var toRemove []string
	for cgoName, symbolName := range cgoSymbols {
		if strings.HasPrefix(symbolName, "__cgo_") {
			gofuncName := strings.Replace(cgoName, ".__cgo_", ".", 1)
			gofn := pkg.LPkg.FuncOf(gofuncName)
			cgoVar := pkg.LPkg.VarOf(cgoName)
			if gofn != nil {
				cgoVar.ReplaceAllUsesWith(gofn.Expr)
			} else {
				cfuncName := symbolName[len("__cgo_"):]
				cfn := pkg.LPkg.NewFunc(cfuncName, types.NewSignatureType(nil, nil, nil, nil, nil, false), llssa.InC)
				cgoVar.ReplaceAllUsesWith(cfn.Expr)
			}
			toRemove = append(toRemove, cgoName)
		} else {
			usePtr := ""
			if symbolNames[symbolName] {
				usePtr = "*"
			} else if !macroNames[symbolName] {
				continue
			}
			/* template:
			typeof(fputs)* _cgo_1574167f3838_Cfunc_fputs;

			__attribute__((constructor))
			static void _init__cgo_1574167f3838_Cfunc_fputs() {
				_cgo_1574167f3838_Cfunc_fputs = fputs;
			}*/
			b.WriteString(fmt.Sprintf(`
typeof(%s)%s %s;

__attribute__((constructor))
static void _init_%s() {
	%s = %s;
}
`,
				symbolName, usePtr, cgoName,
				cgoName,
				cgoName, symbolName))
			toRemove = append(toRemove, cgoName)
		}
	}
	for _, funcName := range toRemove {
		delete(cgoSymbols, funcName)
	}
	return b.String(), nil
}

func getMacroNames(file string, cflags []string, macroNames map[string]bool) error {
	args := append([]string{"-dM", "-E"}, cflags...)
	args = append(args, file)
	cmd := exec.Command("clang", args...)
	output, err := cmd.Output()
	if err != nil {
		return err
	}
	for _, line := range strings.Split(string(output), "\n") {
		if strings.HasPrefix(line, "#define ") {
			define := strings.TrimPrefix(line, "#define ")
			parts := strings.SplitN(define, " ", 2)
			if len(parts) > 1 {
				macroNames[parts[0]] = true
			}
		}
	}
	return nil
}

func getFuncNames(file string, cflags []string, symbolNames map[string]bool) error {
	args := append([]string{"-Xclang", "-ast-dump=json", "-fsyntax-only"}, cflags...)
	args = append(args, file)
	cmd := exec.Command("clang", args...)
	cmd.Stderr = os.Stderr
	output, err := cmd.Output()
	if err != nil {
		dump := "dump failed"
		if tmpFile, err := os.CreateTemp("", "llgo-clang-ast-dump*.log"); err == nil {
			dump = "dump saved to " + tmpFile.Name()
			tmpFile.Write(output)
			tmpFile.Close()
		}
		return fmt.Errorf("failed to run clang: %v, %s", err, dump)
	}
	var astRoot clangASTNode
	if err := json.Unmarshal(output, &astRoot); err != nil {
		dump := "dump failed"
		if tmpFile, err := os.CreateTemp("", "llgo-clang-ast-dump*.log"); err == nil {
			dump = "dump saved to " + tmpFile.Name()
			tmpFile.Write(output)
			tmpFile.Close()
		}
		return fmt.Errorf("failed to unmarshal AST: %v, %s", err, dump)
	}

	extractFuncNames(&astRoot, symbolNames)
	return nil
}

func extractFuncNames(node *clangASTNode, funcNames map[string]bool) {
	for _, inner := range node.Inner {
		if inner.Kind == "FunctionDecl" && inner.Name != "" {
			funcNames[inner.Name] = true
		}
	}
}

func parseCgo_(pkg *aPackage, files []*ast.File) (cfiles []string, preambles []cgoPreamble, cdecls []cgoDecl, err error) {
	dirs := make(map[string]none)
	for _, file := range files {
		pos := pkg.Fset.Position(file.Name.NamePos)
		dir, _ := filepath.Split(pos.Filename)
		dirs[dir] = none{}
	}
	for dir := range dirs {
		matches, err := filepath.Glob(filepath.Join(dir, "*.c"))
		if err != nil {
			continue
		}
		for _, match := range matches {
			if strings.HasSuffix(match, "_test.c") {
				continue
			}
			if fi, err := os.Stat(match); err == nil && !fi.IsDir() {
				cfiles = append(cfiles, match)
			}
		}
	}

	for _, file := range files {
		for _, decl := range file.Decls {
			switch decl := decl.(type) {
			case *ast.GenDecl:
				if decl.Tok == token.IMPORT {
					if doc := decl.Doc; doc != nil && len(decl.Specs) == 1 {
						spec := decl.Specs[0].(*ast.ImportSpec)
						if spec.Path.Value == "\"unsafe\"" {
							pos := pkg.Fset.Position(doc.Pos())
							preamble, flags, err := parseCgoPreamble(pos, doc.Text())
							if err != nil {
								panic(err)
							}
							preambles = append(preambles, preamble)
							cdecls = append(cdecls, flags...)
						}
					}
				}
			}
		}
	}
	return
}

func parseCgoPreamble(pos token.Position, text string) (preamble cgoPreamble, decls []cgoDecl, err error) {
	b := strings.Builder{}
	fline := pos.Line
	fname := pos.Filename
	b.WriteString(fmt.Sprintf("#line %d %q\n", fline, fname))

	for _, line := range strings.Split(text, "\n") {
		fline++
		line = strings.TrimSpace(line)
		if strings.HasPrefix(line, "#cgo ") {
			var cgoDecls []cgoDecl
			cgoDecls, err = parseCgoDecl(line)
			if err != nil {
				return
			}
			decls = append(decls, cgoDecls...)
			b.WriteString(fmt.Sprintf("#line %d %q\n", fline, fname))
		} else {
			b.WriteString(line)
			b.WriteString("\n")
		}
	}
	preamble = cgoPreamble{
		goFile: pos.Filename,
		src:    b.String(),
	}
	return
}

// Parse cgo directive like:
// #cgo pkg-config: python3
// #cgo windows CFLAGS: -IC:/Python312/include
// #cgo windows LDFLAGS: -LC:/Python312/libs -lpython312
// #cgo CFLAGS: -I/usr/include/python3.12
// #cgo LDFLAGS: -L/usr/lib/python3.12/config-3.12-x86_64-linux-gnu -lpython3.12
func parseCgoDecl(line string) (cgoDecls []cgoDecl, err error) {
	idx := strings.Index(line, ":")
	if idx == -1 {
		err = fmt.Errorf("invalid cgo format: %v", line)
		return
	}

	decl := strings.TrimSpace(line[:idx])
	arg := strings.TrimSpace(line[idx+1:])

	// Split on first space to remove #cgo
	parts := strings.SplitN(decl, " ", 2)
	if len(parts) < 2 {
		err = fmt.Errorf("invalid cgo directive: %v", line)
		return
	}

	// Process remaining part
	remaining := strings.TrimSpace(parts[1])
	var tag, flag string

	// Split on last space to get flag
	if lastSpace := strings.LastIndex(remaining, " "); lastSpace != -1 {
		tag = strings.TrimSpace(remaining[:lastSpace])
		flag = strings.TrimSpace(remaining[lastSpace+1:])
	} else {
		flag = remaining
	}

	switch flag {
	case "pkg-config":
		ldflags, e := exec.Command("pkg-config", "--libs", arg).Output()
		if e != nil {
			err = fmt.Errorf("pkg-config: %v", e)
			return
		}
		cflags, e := exec.Command("pkg-config", "--cflags", arg).Output()
		if e != nil {
			err = fmt.Errorf("pkg-config: %v", e)
			return
		}
		cgoDecls = append(cgoDecls, cgoDecl{
			tag:     tag,
			cflags:  safesplit.SplitPkgConfigFlags(string(cflags)),
			ldflags: safesplit.SplitPkgConfigFlags(string(ldflags)),
		})
	case "CFLAGS":
		cgoDecls = append(cgoDecls, cgoDecl{
			tag:    tag,
			cflags: safesplit.SplitPkgConfigFlags(arg),
		})
	case "LDFLAGS":
		cgoDecls = append(cgoDecls, cgoDecl{
			tag:     tag,
			ldflags: safesplit.SplitPkgConfigFlags(arg),
		})
	}
	return
}
