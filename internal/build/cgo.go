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
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"strings"

	"github.com/goplus/llgo/internal/buildtags"
	"github.com/goplus/llgo/internal/safesplit"
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

func buildCgo(ctx *context, pkg *aPackage, files []*ast.File, externs map[string][]string, verbose bool) (cgoLdflags []string, err error) {
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
	re := regexp.MustCompile(`^(_cgo_[^_]+_Cfunc_)(.*)$`)
	cgoFuncs := make(map[string]string)
	mallocFix := false
	for _, funcs := range externs {
		for _, funcName := range funcs {
			if m := re.FindStringSubmatch(funcName); len(m) > 0 {
				cgoFuncs[funcName] = m[2]
				// fix missing _cgo_9113e32b6599_Cfunc__Cmalloc
				if !mallocFix {
					pkgPrefix := m[1]
					mallocName := pkgPrefix + "_Cmalloc"
					cgoFuncs[mallocName] = "_Cmalloc"
					mallocFix = true
				}
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
		externDecls := genExternDeclsByClang(code, cflags, cgoFuncs)
		if err = os.WriteFile(tmpName, []byte(code+"\n\n"+externDecls), 0644); err != nil {
			return nil, err
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

func genExternDeclsByClang(src string, cflags []string, cgoFuncs map[string]string) string {
	tmpSrc, err := os.CreateTemp("", "cgo-src-*.c")
	if err != nil {
		return ""
	}
	defer os.Remove(tmpSrc.Name())
	if err := os.WriteFile(tmpSrc.Name(), []byte(src), 0644); err != nil {
		return ""
	}
	args := append([]string{"-Xclang", "-ast-dump=json", "-fsyntax-only"}, cflags...)
	args = append(args, tmpSrc.Name())
	cmd := exec.Command("clang", args...)
	output, err := cmd.Output()
	if err != nil {
		return ""
	}
	var astRoot clangASTNode
	if err := json.Unmarshal(output, &astRoot); err != nil {
		return ""
	}

	funcNames := make(map[string]bool)
	extractFuncNames(&astRoot, funcNames)

	b := strings.Builder{}
	var toRemove []string
	for cgoFunc, funcName := range cgoFuncs {
		if funcNames[funcName] {
			b.WriteString(fmt.Sprintf("void* %s = (void*)%s;\n", cgoFunc, funcName))
			toRemove = append(toRemove, cgoFunc)
		}
	}
	for _, funcName := range toRemove {
		delete(cgoFuncs, funcName)
	}
	return b.String()
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
