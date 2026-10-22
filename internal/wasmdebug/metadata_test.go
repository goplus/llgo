/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
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

package wasmdebug

import (
	"bytes"
	"reflect"
	"testing"
)

func TestStripMetadataPreservesRuntimeSections(t *testing.T) {
	base := appendSection(append([]byte(nil), wasmHeader...), 11, []byte{1, 2, 3})
	for _, name := range []string{"target_features", "build_id", "external_debug_info", "llgo.pcln", "dylink.0", "unknown"} {
		base = appendCustomSection(base, name, []byte{4, 5})
	}
	input := bytes.Clone(base)
	for _, name := range []string{".debug_info", ".zdebug_line", "reloc..debug_info", "name", "sourceMappingURL"} {
		input = appendCustomSection(input, name, []byte{9})
	}
	input = appendCustomSection(input, "producers", []byte{7})
	for _, all := range []bool{false, true} {
		got, err := StripMetadata(input, all)
		want := base
		if !all {
			want = appendCustomSection(bytes.Clone(base), "producers", []byte{7})
		}
		if err != nil || !bytes.Equal(got, want) {
			t.Fatalf("all=%v: %x, %v", all, got, err)
		}
	}
	if _, err := StripMetadata([]byte("invalid"), true); err == nil {
		t.Fatal("invalid module accepted")
	}
}

func TestTargetFeatures(t *testing.T) {
	payload := []byte{2, '+', 7, 'a', 't', 'o', 'm', 'i', 'c', 's', '-', 8, 'm', 'e', 'm', 'o', 'r', 'y', '6', '4'}
	base := appendSection(bytes.Clone(wasmHeader), 1, []byte{0})
	module := appendCustomSection(base, "target_features", payload)
	got, err := TargetFeatures(module)
	if err != nil || !reflect.DeepEqual(got, []string{"atomics"}) {
		t.Fatalf("features=%v, %v", got, err)
	}
	if got, err := TargetFeatures(wasmHeader); err != nil || len(got) != 0 {
		t.Fatalf("no features=%v, %v", got, err)
	}
	for _, bad := range [][]byte{nil, {1}, {1, '?'}, {1, '+', 9, 'a'}, {0, 0}, {128, 128, 128, 128, 128}} {
		if _, err := TargetFeatures(appendCustomSection(bytes.Clone(wasmHeader), "target_features", bad)); err == nil {
			t.Fatalf("accepted %x", bad)
		}
	}
	if _, err := TargetFeatures(appendCustomSection(module, "target_features", []byte{0})); err == nil {
		t.Fatal("duplicate accepted")
	}
	if _, err := TargetFeatures([]byte("bad")); err == nil {
		t.Fatal("bad module accepted")
	}
}
