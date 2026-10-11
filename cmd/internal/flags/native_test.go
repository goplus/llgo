/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package flags

import (
	"bytes"
	"flag"
	"os"
	"path/filepath"
	"reflect"
	"strings"
	"testing"

	"github.com/xgo-dev/llgo/cmd/internal/base"
)

func TestDirectoryAndGOFLAGSPrecedence(t *testing.T) {
	old, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}
	t.Cleanup(func() {
		if err := os.Chdir(old); err != nil {
			t.Error(err)
		}
	})
	dir := t.TempDir()
	for _, args := range [][]string{{"-C", dir, "-tags=explicit", "."}, {"-C=" + dir, "-tags=explicit", "."}, {"--C", dir, "-tags=explicit", "."}} {
		t.Setenv("GOENV", "off")
		t.Setenv("GOFLAGS", "-tags=env -v")
		var tags string
		var verbose bool
		fs := flag.NewFlagSet("native", flag.ContinueOnError)
		AddDirectoryFlag(fs)
		fs.StringVar(&tags, "tags", "", "tags")
		fs.BoolVar(&verbose, "v", false, "verbose")
		if err := Parse(fs, args); err != nil {
			t.Fatal(err)
		}
		cwd, _ := os.Getwd()
		if !sameDirectory(cwd, dir) || tags != "explicit" || !verbose || !reflect.DeepEqual(fs.Args(), []string{"."}) {
			t.Fatalf("cwd=%s tags=%s verbose=%v operands=%v", cwd, tags, verbose, fs.Args())
		}
	}
}

func TestInvalidDefaultsAndDirectory(t *testing.T) {
	t.Setenv("GOENV", "off")
	for _, value := range []string{"bare", "-", "--", "-tags", "-C=tmp", "'-tags=unterminated", "-v=invalid", "-unknown"} {
		t.Run(value, func(t *testing.T) {
			t.Setenv("GOFLAGS", value)
			fs := flag.NewFlagSet("invalid", flag.ContinueOnError)
			fs.SetOutput(new(bytes.Buffer))
			AddCommonFlags(fs)
			fs.String("tags", "", "tags")
			if err := Parse(fs, nil); err == nil {
				t.Fatalf("accepted GOFLAGS=%q", value)
			}
		})
	}
	t.Setenv("GOFLAGS", "")
	for _, args := range [][]string{{"-C"}, {"-C="}, {"-C", filepath.Join(t.TempDir(), "missing")}, {"-v", "-C", t.TempDir()}} {
		fs := flag.NewFlagSet("invalid", flag.ContinueOnError)
		fs.SetOutput(new(bytes.Buffer))
		AddCommonFlags(fs)
		if err := Parse(fs, args); err == nil {
			t.Fatalf("accepted %v", args)
		}
	}
	fs := flag.NewFlagSet("valid", flag.ContinueOnError)
	fs.SetOutput(new(bytes.Buffer))
	AddCommonFlags(fs)
	if err := Parse(fs, []string{"operand", "-C=program-argument"}); err != nil {
		t.Fatal(err)
	}
}

func TestUnsupportedBuildFlagsHaveHelpAndFail(t *testing.T) {
	for _, arg := range []string{"-race", "-race=false", "-msan", "-asan", "-pgo=auto", "-asmflags=-S", "-compiler=gc", "-gccgoflags=-O2", "-installsuffix=other", "-pkgdir=tmp", "-toolexec=wrapper", "-buildvcs=false", "-linkshared", "-n", "-work", "-trimpath"} {
		t.Run(arg, func(t *testing.T) {
			cmd := &base.Command{}
			CaptureGoBuildFlags(cmd)
			cmd.Flag.SetOutput(new(bytes.Buffer))
			if err := cmd.Flag.Parse([]string{arg}); err == nil || !strings.Contains(err.Error(), "unsupported") {
				t.Fatalf("accepted %s: %v", arg, err)
			}
		})
	}
	for _, arg := range []string{"-modcacherw=invalid"} {
		cmd := &base.Command{}
		CaptureGoBuildFlags(cmd)
		cmd.Flag.SetOutput(new(bytes.Buffer))
		if err := cmd.Flag.Parse([]string{arg}); err == nil {
			t.Fatalf("accepted %s", arg)
		}
	}
	fs := flag.NewFlagSet("buildenv", flag.ContinueOnError)
	fs.SetOutput(new(bytes.Buffer))
	AddBuildFlags(fs)
	if fs.Lookup("buildenv") != nil {
		t.Fatal("dead buildenv flag still registered")
	}
}

func sameDirectory(a, b string) bool {
	x, e := os.Stat(a)
	if e != nil {
		return false
	}
	y, e := os.Stat(b)
	return e == nil && os.SameFile(x, y)
}

func TestPersistentDefaultsAndLookupErrors(t *testing.T) {
	dir := t.TempDir()
	file := filepath.Join(dir, "goenv")
	if err := os.WriteFile(file, []byte("GOFLAGS=-tags=persisted\n"), 0600); err != nil {
		t.Fatal(err)
	}
	t.Setenv("GOENV", file)
	t.Setenv("GOFLAGS", "")
	fs := flag.NewFlagSet("persistent", flag.ContinueOnError)
	fs.SetOutput(new(bytes.Buffer))
	tags := fs.String("tags", "", "tags")
	if err := Parse(fs, nil); err != nil || *tags != "persisted" {
		t.Fatalf("defaults=%q err=%v", *tags, err)
	}
	t.Setenv("PATH", "")
	if err := Parse(fs, nil); err == nil {
		t.Fatal("accepted missing Go toolchain")
	}
}

func TestManifestRejectionsAreRecognized(t *testing.T) {
	for _, command := range []string{"build", "run", "install", "test", "clean", "version"} {
		fs := flag.NewFlagSet(command, flag.ContinueOnError)
		fs.SetOutput(new(bytes.Buffer))
		FinalizeNativeFlags(command, fs)
		fs.VisitAll(func(f *flag.Flag) {
			if err := fs.Set(f.Name, "true"); err == nil || !strings.Contains(err.Error(), "unsupported") {
				t.Errorf("%s -%s did not reject: %v", command, f.Name, err)
			}
		})
	}
}
