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

package build

import (
	"encoding/json"
	"os"
	"path/filepath"
	"reflect"
	"testing"
)

func TestSourceOverlayViewsAndClone(t *testing.T) {
	dir := t.TempDir()
	selected := filepath.Join(dir, "virtual.go")
	backing := filepath.Join(dir, "backing.go")
	deleted := filepath.Join(dir, "deleted.go")
	conf := &Config{Overlay: map[string][]byte{"base.go": []byte("package base")}, SourceOverlay: map[string]SourceOverlayFile{
		selected: {BackingFile: backing, Contents: []byte("package overlay")}, deleted: {},
	}}
	copy := conf.clone()
	record := copy.SourceOverlay[selected]
	record.Contents[0] = 'P'
	copy.SourceOverlay[selected] = record
	delete(copy.SourceOverlay, deleted)
	if string(conf.SourceOverlay[selected].Contents) != "package overlay" || len(conf.SourceOverlay) != 2 {
		t.Fatal("source overlay clone aliases caller")
	}
	file, err := prepareSourceOverlay(conf)
	if err != nil {
		t.Fatal(err)
	}
	defer os.Remove(file)
	data, err := os.ReadFile(file)
	if err != nil {
		t.Fatal(err)
	}
	var overlay struct{ Replace map[string]string }
	if err := json.Unmarshal(data, &overlay); err != nil {
		t.Fatal(err)
	}
	if !reflect.DeepEqual(overlay.Replace, map[string]string{selected: backing, deleted: ""}) {
		t.Fatalf("loader overlay=%v", overlay.Replace)
	}
	if string(conf.Overlay[selected]) != "package overlay" || string(conf.Overlay["base.go"]) != "package base" {
		t.Fatalf("parser overlay=%v", conf.Overlay)
	}
	if _, ok := conf.Overlay[deleted]; !ok {
		t.Fatal("parser lost deletion view")
	}
	fresh := &Config{SourceOverlay: conf.SourceOverlay}
	name, err := prepareSourceOverlay(fresh)
	if err != nil {
		t.Fatal(err)
	}
	os.Remove(name)
	if len(fresh.Overlay) != 2 {
		t.Fatal("failed to create parser view")
	}
	if name, err := prepareSourceOverlay(&Config{}); name != "" || err != nil {
		t.Fatalf("empty overlay: %q %v", name, err)
	}
	// An unavailable temporary directory must fail without mutating the parser view.
	for _, variable := range []string{"TMPDIR", "TMP", "TEMP"} {
		t.Setenv(variable, filepath.Join(dir, "missing"))
	}
	before := conf.Overlay
	if name, err := prepareSourceOverlay(conf); err == nil || name != "" {
		t.Fatalf("accepted unavailable temp directory: %q %v", name, err)
	}
	if !reflect.DeepEqual(conf.Overlay, before) {
		t.Fatal("changed parser view on error")
	}
}

func TestCleanReportsRemovalErrors(t *testing.T) {
	dir := t.TempDir()
	blocked := filepath.Join(dir, "program")
	if err := os.Mkdir(blocked, 0700); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(blocked, "keep"), []byte("keep"), 0600); err != nil {
		t.Fatal(err)
	}
	if err := removeExecutableArtifacts(blocked, true); err == nil {
		t.Fatal("silently ignored a removal error")
	}
	if err := removeFile(filepath.Join(dir, "absent"), false); err != nil {
		t.Fatal(err)
	}
}
