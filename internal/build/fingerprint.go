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
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"io"
	"os"
	"sort"
	"strings"

	"gopkg.in/yaml.v3"
)

// depEntry captures dependency identity plus either version or fingerprint.
type depEntry struct {
	ID          string `yaml:"id"`
	Version     string `yaml:"version,omitempty"`
	Fingerprint string `yaml:"fingerprint,omitempty"`
}

// manifestMetadata stores metadata produced during build but not part of the fingerprint.
type manifestMetadata struct {
	LinkArgs   []string `yaml:"link_args,omitempty"`
	NeedRt     bool     `yaml:"need_rt,omitempty"`
	NeedPyInit bool     `yaml:"need_py_init,omitempty"`
}

// manifestData is the structured representation of manifest content.
type manifestData struct {
	Env      map[string]interface{} `yaml:"env,omitempty"`
	Common   map[string]interface{} `yaml:"common,omitempty"`
	Package  map[string]interface{} `yaml:"package,omitempty"`
	Deps     []depEntry             `yaml:"deps,omitempty"`
	Metadata *manifestMetadata      `yaml:"metadata,omitempty"`
}

// manifestDataOrdered wraps manifestData so we can marshal with deterministic key order.
type manifestDataOrdered struct {
	Env      orderedMap      `yaml:"env,omitempty"`
	Common   orderedMap      `yaml:"common,omitempty"`
	Package  orderedMap      `yaml:"package,omitempty"`
	Deps     []depEntry      `yaml:"deps,omitempty"`
	Metadata *manifestMetadata `yaml:"metadata,omitempty"`
}

// manifestBuilder builds manifest text with sorted sections.
type manifestBuilder struct {
	env    map[string]interface{}
	common map[string]interface{}
	pkg    map[string]interface{}
	deps   []depEntry
	meta   *manifestMetadata
}

// NewManifestBuilder creates a new manifestBuilder.
func NewManifestBuilder() *manifestBuilder {
	return &manifestBuilder{}
}

// AddEnv adds a key-value pair to the Env section.
func (m *manifestBuilder) AddEnv(key, value string) {
	m.env = mergeValue(m.env, key, value)
}

// AddCommon adds a key-value pair to the Common section.
func (m *manifestBuilder) AddCommon(key string, value interface{}) {
	m.common = mergeValue(m.common, key, value)
}

// AddPackage adds a key-value pair to the Package section.
func (m *manifestBuilder) AddPackage(key string, value interface{}) {
	m.pkg = mergeValue(m.pkg, key, value)
}

// AddDep adds a dependency entry to the manifest.
func (m *manifestBuilder) AddDep(dep depEntry) {
	m.deps = append(m.deps, dep)
}

// SetMetadata sets the metadata block.
func (m *manifestBuilder) SetMetadata(meta *manifestMetadata) {
	m.meta = meta
}

// Build generates the sorted manifest text in INI format.
func (m *manifestBuilder) Build() string {
	data := manifestData{
		Env:      copyMap(m.env),
		Common:   copyMap(m.common),
		Package:  copyMap(m.pkg),
		Deps:     sortDeps(m.deps),
		Metadata: m.meta,
	}
	content, _ := buildManifestYAML(data)
	return content
}

// Fingerprint returns the sha256 hash of the manifest content.
func (m *manifestBuilder) Fingerprint() string {
	content := m.Build()
	hash := sha256.Sum256([]byte(content))
	return hex.EncodeToString(hash[:])
}

func sortMapKeys(m map[string]interface{}) []string {
	keys := make([]string, 0, len(m))
	for k := range m {
		keys = append(keys, k)
	}
	sort.Strings(keys)
	return keys
}

func sortDeps(deps []depEntry) []depEntry {
	if len(deps) == 0 {
		return nil
	}
	sorted := append([]depEntry(nil), deps...)
	sort.Slice(sorted, func(i, j int) bool {
		if sorted[i].ID == sorted[j].ID {
			if sorted[i].Version == sorted[j].Version {
				return sorted[i].Fingerprint < sorted[j].Fingerprint
			}
			return sorted[i].Version < sorted[j].Version
		}
		return sorted[i].ID < sorted[j].ID
	})
	return sorted
}

func (d manifestData) isEmpty() bool {
	return len(d.Env) == 0 && len(d.Common) == 0 && len(d.Package) == 0 && len(d.Deps) == 0 && (d.Metadata == nil)
}

func buildManifestYAML(data manifestData) (string, error) {
	if data.isEmpty() {
		return "", nil
	}

	ordered := manifestDataOrdered{
		Env:      orderedMap(copyMap(data.Env)),
		Common:   orderedMap(copyMap(data.Common)),
		Package:  orderedMap(copyMap(data.Package)),
		Deps:     sortDeps(data.Deps),
		Metadata: data.Metadata,
	}

	var buf bytes.Buffer
	enc := yaml.NewEncoder(&buf)
	enc.SetIndent(2)
	if err := enc.Encode(ordered); err != nil {
		return "", err
	}
	_ = enc.Close()
	return buf.String(), nil
}

func decodeManifest(content string) (manifestData, error) {
	var data manifestData
	trimmed := strings.TrimSpace(content)
	if trimmed == "" {
		return data, nil
	}
	if err := yaml.Unmarshal([]byte(trimmed), &data); err != nil {
		return manifestData{}, err
	}
	return data, nil
}

func copyMap(src map[string]interface{}) map[string]interface{} {
	if len(src) == 0 {
		return nil
	}
	dup := make(map[string]interface{}, len(src))
	for k, v := range src {
		dup[k] = v
	}
	return dup
}

// orderedMap marshals deterministically with keys sorted.
type orderedMap map[string]interface{}

// MarshalYAML implements yaml marshaling with sorted keys.
func (m orderedMap) MarshalYAML() (interface{}, error) {
	if len(m) == 0 {
		return nil, nil
	}
	node := &yaml.Node{Kind: yaml.MappingNode}
	for _, k := range sortMapKeys(m) {
		node.Content = append(node.Content,
			&yaml.Node{Kind: yaml.ScalarNode, Tag: "!!str", Value: k},
			nodeFromValue(m[k]),
		)
	}
	return node, nil
}

func mergeValue(m map[string]interface{}, key string, v interface{}) map[string]interface{} {
	if m == nil {
		m = make(map[string]interface{})
	}
	if exist, ok := m[key]; ok {
		switch cur := exist.(type) {
		case []interface{}:
			m[key] = append(cur, v)
		case []string:
			if s, ok := v.(string); ok {
				m[key] = append(cur, s)
			} else {
				m[key] = append(interfaceSlice(cur), v)
			}
		default:
			m[key] = []interface{}{cur, v}
		}
	} else {
		m[key] = v
	}
	return m
}

func interfaceSlice(src []string) []interface{} {
	res := make([]interface{}, len(src))
	for i, v := range src {
		res[i] = v
	}
	return res
}

func nodeFromValue(v interface{}) *yaml.Node {
	switch val := v.(type) {
	case nil:
		return &yaml.Node{Kind: yaml.ScalarNode, Tag: "!!null", Value: "~"}
	case string:
		return &yaml.Node{Kind: yaml.ScalarNode, Tag: "!!str", Value: val}
	case bool:
		value := "false"
		if val {
			value = "true"
		}
		return &yaml.Node{Kind: yaml.ScalarNode, Tag: "!!bool", Value: value}
	case []string:
		s := append([]string(nil), val...)
		sort.Strings(s)
		seq := &yaml.Node{Kind: yaml.SequenceNode}
		for _, item := range s {
			seq.Content = append(seq.Content, nodeFromValue(item))
		}
		return seq
	case []FileDigest:
		list := append([]FileDigest(nil), val...)
		sort.Slice(list, func(i, j int) bool { return list[i].Path < list[j].Path })
		seq := &yaml.Node{Kind: yaml.SequenceNode}
		for _, fd := range list {
			m := &yaml.Node{Kind: yaml.MappingNode}
			m.Content = append(m.Content,
				&yaml.Node{Kind: yaml.ScalarNode, Tag: "!!str", Value: "path"},
				&yaml.Node{Kind: yaml.ScalarNode, Tag: "!!str", Value: fd.Path},
				&yaml.Node{Kind: yaml.ScalarNode, Tag: "!!str", Value: "sha256"},
				&yaml.Node{Kind: yaml.ScalarNode, Tag: "!!str", Value: fd.SHA256},
			)
			seq.Content = append(seq.Content, m)
		}
		return seq
	case map[string]string:
		return mapNodeStringString(val)
	case map[string]interface{}:
		return mapNodeInterface(val)
	case []interface{}:
		seq := &yaml.Node{Kind: yaml.SequenceNode}
		// attempt to sort when all strings for determinism
		if allStrings(val) {
			strs := make([]string, 0, len(val))
			for _, s := range val {
				strs = append(strs, s.(string))
			}
			sort.Strings(strs)
			for _, s := range strs {
				seq.Content = append(seq.Content, nodeFromValue(s))
			}
			return seq
		}
		for _, item := range val {
			seq.Content = append(seq.Content, nodeFromValue(item))
		}
		return seq
	default:
		return &yaml.Node{Kind: yaml.ScalarNode, Tag: "!!str", Value: fmt.Sprint(val)}
	}
}

func mapNodeStringString(m map[string]string) *yaml.Node {
	n := &yaml.Node{Kind: yaml.MappingNode}
	keys := make([]string, 0, len(m))
	for k := range m {
		keys = append(keys, k)
	}
	sort.Strings(keys)
	for _, k := range keys {
		n.Content = append(n.Content,
			&yaml.Node{Kind: yaml.ScalarNode, Tag: "!!str", Value: k},
			&yaml.Node{Kind: yaml.ScalarNode, Tag: "!!str", Value: m[k]},
		)
	}
	return n
}

func mapNodeInterface(m map[string]interface{}) *yaml.Node {
	n := &yaml.Node{Kind: yaml.MappingNode}
	for _, k := range sortMapKeys(m) {
		n.Content = append(n.Content,
			&yaml.Node{Kind: yaml.ScalarNode, Tag: "!!str", Value: k},
			nodeFromValue(m[k]),
		)
	}
	return n
}

func allStrings(list []interface{}) bool {
	for _, v := range list {
		if _, ok := v.(string); !ok {
			return false
		}
	}
	return true
}

// DigestFile calculates the sha256 hash of a file.
func DigestFile(path string) (string, error) {
	f, err := os.Open(path)
	if err != nil {
		return "", err
	}
	defer f.Close()

	h := sha256.New()
	if _, err := io.Copy(h, f); err != nil {
		return "", err
	}

	return hex.EncodeToString(h.Sum(nil)), nil
}

// DigestBytes calculates the sha256 hash of bytes.
func DigestBytes(data []byte) string {
	hash := sha256.Sum256(data)
	return hex.EncodeToString(hash[:])
}

// FileDigest represents a file with its path and hash.
type FileDigest struct {
	Path   string `yaml:"path"`
	SHA256 string `yaml:"sha256"`
}

// DigestFiles calculates digests for multiple files and returns the
// serialized digest plus structured list for manifest output.
// Serialized format kept for backward compatibility: "file1]sha256:xxx,file2]sha256:yyy"
func DigestFiles(paths []string) (string, []FileDigest, error) {
	if len(paths) == 0 {
		return "", nil, nil
	}

	digests := make([]FileDigest, 0, len(paths))
	for _, path := range paths {
		hash, err := DigestFile(path)
		if err != nil {
			return "", nil, fmt.Errorf("digest file %q: %w", path, err)
		}
		digests = append(digests, FileDigest{Path: path, SHA256: hash})
	}

	sort.Slice(digests, func(i, j int) bool { return digests[i].Path < digests[j].Path })

	var parts []string
	for _, d := range digests {
		parts = append(parts, fmt.Sprintf("%s]sha256:%s", d.Path, d.SHA256))
	}

	return strings.Join(parts, ","), digests, nil
}

// DigestFilesWithOverlay calculates digests for files, using overlay content when available.
func DigestFilesWithOverlay(paths []string, overlay map[string][]byte) (string, []FileDigest, error) {
	if len(paths) == 0 {
		return "", nil, nil
	}

	digests := make([]FileDigest, 0, len(paths))
	for _, path := range paths {
		var hash string
		if content, ok := overlay[path]; ok {
			hash = DigestBytes(content)
		} else {
			var err error
			hash, err = DigestFile(path)
			if err != nil {
				return "", nil, fmt.Errorf("digest file %q: %w", path, err)
			}
		}
		digests = append(digests, FileDigest{Path: path, SHA256: hash})
	}

	sort.Slice(digests, func(i, j int) bool { return digests[i].Path < digests[j].Path })

	var parts []string
	for _, d := range digests {
		parts = append(parts, fmt.Sprintf("%s]sha256:%s", d.Path, d.SHA256))
	}

	return strings.Join(parts, ","), digests, nil
}
