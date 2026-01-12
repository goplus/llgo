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

package cltest

import (
	"archive/zip"
	"bytes"
	"errors"
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"io"
	"log"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/gogen/packages"
	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/llgen"
	"github.com/goplus/llgo/ssa/ssatest"
	"github.com/qiniu/x/test"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"

	llssa "github.com/goplus/llgo/ssa"
)

func init() {
	llssa.Initialize(llssa.InitAll | llssa.InitNative)
}

func InitDebug() {
	cl.SetDebug(cl.DbgFlagAll)
	llssa.SetDebug(llssa.DbgFlagAll)
}

func FromDir(t *testing.T, sel, relDir string) {
	dir, err := os.Getwd()
	if err != nil {
		t.Fatal("Getwd failed:", err)
	}
	dir = path.Join(dir, relDir)
	fis, err := os.ReadDir(dir)
	if err != nil {
		t.Fatal("ReadDir failed:", err)
	}
	for _, fi := range fis {
		name := fi.Name()
		if !fi.IsDir() || strings.HasPrefix(name, "_") {
			continue
		}
		t.Run(name, func(t *testing.T) {
			testFrom(t, dir+"/"+name, sel)
		})
	}
}

func RunFromDir(t *testing.T, sel, relDir string) {
	dir, err := os.Getwd()
	if err != nil {
		t.Fatal("Getwd failed:", err)
	}
	dir = path.Join(dir, relDir)
	fis, err := os.ReadDir(dir)
	if err != nil {
		t.Fatal("ReadDir failed:", err)
	}
	for _, fi := range fis {
		name := fi.Name()
		if !fi.IsDir() || strings.HasPrefix(name, "_") {
			continue
		}
		pkgDir := dir + "/" + name
		relPkg := filepath.ToSlash(filepath.Join(relDir, name))
		t.Run(name, func(t *testing.T) {
			testRunFrom(t, pkgDir, relPkg, sel)
		})
	}
}

// *.ll => *.lla
func decodeLinkFile(llFile string) (data []byte, err error) {
	zipFile := llFile + "a"
	zipf, err := zip.OpenReader(zipFile)
	if err != nil {
		return
	}
	defer zipf.Close()
	f, err := zipf.Open(filepath.Base(llFile))
	if err != nil {
		return
	}
	defer f.Close()
	data, err = io.ReadAll(f)
	if err == nil {
		os.WriteFile(llFile, data, 0644)
	}
	return
}

func Pkg(t *testing.T, pkgPath, outFile string) {
	b, err := os.ReadFile(outFile)
	if err != nil {
		if !os.IsNotExist(err) {
			t.Fatal("ReadFile failed:", err)
		}
		if b, err = decodeLinkFile(outFile); err != nil {
			t.Fatal("decodeLinkFile failed:", err)
		}
	}
	expected := string(b)
	if v := llgen.GenFrom(pkgPath); v != expected {
		t.Fatalf("\n==> got:\n%s\n==> expected:\n%s\n", v, expected)
	}
}

func testFrom(t *testing.T, pkgDir, sel string) {
	if sel != "" && !strings.Contains(pkgDir, sel) {
		return
	}
	log.Println("Parsing", pkgDir)
	v := llgen.GenFrom(pkgDir)
	out := pkgDir + "/out.ll"
	b, _ := os.ReadFile(out)
	if !bytes.Equal(b, []byte{';'}) { // expected == ";" means skipping out.ll
		if test.Diff(t, pkgDir+"/out.ll.new", []byte(v), b) {
			t.Fatal("llgen.GenFrom: unexpect result")
		}
	}
}

func testRunFrom(t *testing.T, pkgDir, relPkg, sel string) {
	if sel != "" && !strings.Contains(pkgDir, sel) {
		return
	}
	expectedPath := filepath.Join(pkgDir, "expect.txt")
	expected, err := os.ReadFile(expectedPath)
	if err != nil {
		if errors.Is(err, os.ErrNotExist) {
			return
		}
		t.Fatal("ReadFile failed:", err)
	}

	output, err := RunAndCapture(relPkg, pkgDir)
	if err != nil {
		t.Fatalf("run failed: %v\noutput: %s", err, string(output))
	}
	if bytes.Equal(expected, []byte{';'}) { // expected == ";" means skipping expect.txt
		return
	}
	if test.Diff(t, filepath.Join(pkgDir, "expect.txt.new"), output, expected) {
		t.Fatal("unexpected output")
	}
}

func RunAndCapture(relPkg, pkgDir string) ([]byte, error) {
	var output bytes.Buffer
	tmpDir, err := os.MkdirTemp("", "llgo-run-*")
	if err != nil {
		return nil, err
	}
	defer os.RemoveAll(tmpDir)

	cacheDir, err := os.MkdirTemp("", "llgo-gocache-*")
	if err != nil {
		return nil, err
	}
	defer os.RemoveAll(cacheDir)
	oldCache := os.Getenv("GOCACHE")
	if err := os.Setenv("GOCACHE", cacheDir); err != nil {
		return nil, err
	}
	defer func() {
		if oldCache == "" {
			_ = os.Unsetenv("GOCACHE")
		} else {
			_ = os.Setenv("GOCACHE", oldCache)
		}
	}()

	conf := build.NewDefaultConf(build.ModeBuild)
	conf.AppExt = ""
	if runtime.GOOS == "windows" {
		conf.AppExt = ".exe"
	}
	outPath := filepath.Join(tmpDir, "llgo-run"+conf.AppExt)
	conf.OutFile = outPath
	if _, err := build.Do([]string{relPkg}, conf); err != nil {
		return nil, err
	}

	cmd := exec.Command(outPath)
	cmd.Dir = pkgDir
	cmd.Stdout = &output
	cmd.Stderr = &output
	if err := cmd.Run(); err != nil {
		return output.Bytes(), fmt.Errorf("run failed: %w", err)
	}
	return output.Bytes(), nil
}

func TestCompileEx(t *testing.T, src any, fname, expected string, dbg bool) {
	t.Helper()
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, fname, src, parser.ParseComments)
	if err != nil {
		t.Fatal("ParseFile failed:", err)
	}
	files := []*ast.File{f}
	name := f.Name.Name
	pkg := types.NewPackage(name, name)
	imp := packages.NewImporter(fset)
	mode := ssa.SanityCheckFunctions | ssa.InstantiateGenerics
	if dbg {
		mode |= ssa.GlobalDebug
	}
	foo, _, err := ssautil.BuildPackage(
		&types.Config{Importer: imp}, fset, pkg, files, mode)
	if err != nil {
		t.Fatal("BuildPackage failed:", err)
	}
	foo.WriteTo(os.Stderr)
	prog := ssatest.NewProgramEx(t, nil, imp)
	prog.TypeSizes(types.SizesFor("gc", runtime.GOARCH))

	ret, err := cl.NewPackage(prog, foo, files)
	if err != nil {
		t.Fatal("cl.NewPackage failed:", err)
	}

	if v := ret.String(); v != expected && expected != ";" { // expected == ";" means skipping out.ll
		t.Fatalf("\n==> got:\n%s\n==> expected:\n%s\n", v, expected)
	}
}
