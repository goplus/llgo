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

package goflags

import (
	"encoding/json"
	"errors"
	"os"
	"path/filepath"
	"reflect"
	"runtime"
	"strings"
	"testing"

	"github.com/xgo-dev/llgo/internal/build"
)

func TestUnsupportedNativeFlagsAreAtomic(t *testing.T) {
	args := []string{
		"-race", "--asan=false", "-msan", "-pgo=off", "-linkshared", "-compiler=gc", "-asmflags=-S", "-gccgoflags=-O2", "-installsuffix=test", "-pkgdir=tmp", "-toolexec=wrapper", "-trimpath", "-buildvcs=false", "-n", "-work",
		"-gcflags=-m", "-gcflags=-live", "-gcflags=-S", "-gcflags=-wb=false", "-gcflags=-smallframes", "-gcflags=-d=maymorestack=hook", "-gcflags=fmt=-N", "-gcflags=-lang=bad", "-gcflags=-N=bad", "-gcflags=-l=4", "-gcflags=-lang", "-gcflags=-lang=go1.22 operand", "-gcflags=broken", "-gcflags=-d=converthash=01", "-ldflags=-X main.version=v1",
	}
	for _, arg := range args {
		t.Run(arg, func(t *testing.T) {
			conf := &build.Config{GoBuildFlags: []string{"-tags=existing"}, GoVersion: "go1.22", Overlay: map[string][]byte{"old": []byte("old")}}
			before := *conf
			before.GoBuildFlags = append([]string(nil), conf.GoBuildFlags...)
			if err := ApplyBuildFlags(conf, []string{arg}); err == nil {
				t.Fatalf("accepted %s", arg)
			}
			if !reflect.DeepEqual(*conf, before) {
				t.Fatalf("modified config on error: %+v", conf)
			}
		})
	}
}

func TestNativeOverlayViewAndErrors(t *testing.T) {
	dir := t.TempDir()
	backing := filepath.Join(dir, "backing.go")
	if err := os.WriteFile(backing, []byte("package overlay\nconst Selected = 42\n"), 0600); err != nil {
		t.Fatal(err)
	}
	file := filepath.Join(dir, "overlay.json")
	removed := filepath.Join(dir, "removed.go")
	selected := filepath.Join(dir, "selected.go")
	data, _ := json.Marshal(map[string]any{"Replace": map[string]string{selected: backing, removed: ""}})
	if err := os.WriteFile(file, data, 0600); err != nil {
		t.Fatal(err)
	}
	conf := &build.Config{Overlay: map[string][]byte{"existing": []byte("existing")}}
	if err := ApplyBuildFlags(conf, []string{"--overlay", file}); err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(string(conf.SourceOverlay[selected].Contents), "Selected = 42") {
		t.Fatalf("wrong overlay: %q", conf.SourceOverlay[selected].Contents)
	}
	if v, ok := conf.SourceOverlay[removed]; !ok || len(v.Contents) != 0 || v.BackingFile != "" {
		t.Fatal("lost deletion entry")
	}
	if string(conf.Overlay["existing"]) != "existing" {
		t.Fatal("lost existing source patches")
	}
	for _, tc := range []struct {
		name, data string
		absent     bool
	}{
		{name: "missing.json", absent: true}, {name: "invalid.json", data: "{"}, {name: "non-go.json", data: `{"Replace":{"asset.txt":"backing.go"}}`},
		{name: "bad-backing.json", data: `{"Replace":{"virtual.go":"missing.go"}}`},
	} {
		t.Run(tc.name, func(t *testing.T) {
			file := filepath.Join(dir, tc.name)
			if !tc.absent {
				if err := os.WriteFile(file, []byte(tc.data), 0600); err != nil {
					t.Fatal(err)
				}
			}
			before := *conf
			if err := ApplyBuildFlags(conf, []string{"-overlay=" + file}); err == nil {
				t.Fatal("accepted invalid overlay")
			}
			if !reflect.DeepEqual(*conf, before) {
				t.Fatal("modified config on invalid overlay")
			}
		})
	}
	if err := ApplyBuildFlags(conf, []string{"-overlay="}); err != nil {
		t.Fatal(err)
	}
}

func TestNativeOverlayMissingWorkingDirectoryIsAtomic(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Windows cannot remove the current working directory")
	}
	for _, relativeBacking := range []bool{false, true} {
		t.Run(map[bool]string{false: "logical path", true: "backing path"}[relativeBacking], func(t *testing.T) {
			dir := t.TempDir()
			cwd := filepath.Join(dir, "cwd")
			if err := os.Mkdir(cwd, 0700); err != nil {
				t.Fatal(err)
			}
			logical, backing := "virtual.go", ""
			if relativeBacking {
				logical, backing = filepath.Join(dir, "virtual.go"), "replacement.go"
			}
			data, err := json.Marshal(map[string]any{"Replace": map[string]string{logical: backing}})
			if err != nil {
				t.Fatal(err)
			}
			file := filepath.Join(dir, "overlay.json")
			if err := os.WriteFile(file, data, 0600); err != nil {
				t.Fatal(err)
			}
			t.Chdir(cwd)
			if err := os.Remove(cwd); err != nil {
				t.Fatal(err)
			}
			if _, err := os.Getwd(); err == nil {
				t.Skip("operating system still resolves the removed working directory")
			} else if !errors.Is(err, os.ErrNotExist) {
				t.Fatal(err)
			}
			conf := &build.Config{GoBuildFlags: []string{"-tags=existing"}, Overlay: map[string][]byte{"original": []byte("original")}}
			before := *conf
			before.GoBuildFlags = append([]string(nil), conf.GoBuildFlags...)
			if err := ApplyBuildFlags(conf, []string{"-overlay=" + file}); !errors.Is(err, os.ErrNotExist) {
				t.Fatalf("missing working directory error = %v", err)
			}
			if !reflect.DeepEqual(*conf, before) {
				t.Fatal("changed the configuration after overlay path failure")
			}
		})
	}
}
