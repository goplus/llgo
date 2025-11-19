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
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"io"
	"os"
	"sort"
	"strings"
)

// KeyValue represents a key-value pair for manifest entries.
type KeyValue struct {
	Key   string
	Value string
}

// ManifestBuilder builds manifest text with sorted sections.
type ManifestBuilder struct {
	env    []KeyValue
	common []KeyValue
	pkg    []KeyValue
}

// NewManifestBuilder creates a new ManifestBuilder.
func NewManifestBuilder() *ManifestBuilder {
	return &ManifestBuilder{}
}

// AddEnv adds a key-value pair to the Env section.
func (m *ManifestBuilder) AddEnv(key, value string) {
	m.env = append(m.env, KeyValue{key, value})
}

// AddCommon adds a key-value pair to the Common section.
func (m *ManifestBuilder) AddCommon(key, value string) {
	m.common = append(m.common, KeyValue{key, value})
}

// AddPackage adds a key-value pair to the Package section.
func (m *ManifestBuilder) AddPackage(key, value string) {
	m.pkg = append(m.pkg, KeyValue{key, value})
}

// Build generates the sorted manifest text.
func (m *ManifestBuilder) Build() string {
	var b strings.Builder

	// Sort each section by key
	sortKV := func(kvs []KeyValue) {
		sort.Slice(kvs, func(i, j int) bool {
			return kvs[i].Key < kvs[j].Key
		})
	}

	writeSection := func(name string, kvs []KeyValue) {
		sortKV(kvs)
		b.WriteString(name)
		b.WriteString(":\n")
		for _, kv := range kvs {
			b.WriteString(kv.Key)
			b.WriteString("=")
			b.WriteString(kv.Value)
			b.WriteString("\n")
		}
	}

	writeSection("Env", m.env)
	writeSection("Common", m.common)
	writeSection("Package", m.pkg)

	return b.String()
}

// Fingerprint returns the sha256 hash of the manifest content.
func (m *ManifestBuilder) Fingerprint() string {
	content := m.Build()
	hash := sha256.Sum256([]byte(content))
	return hex.EncodeToString(hash[:])
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
	Path   string
	SHA256 string
}

// DigestFiles calculates digests for multiple files.
// Returns format: "file1]sha256:xxx,file2]sha256:yyy"
func DigestFiles(paths []string) (string, error) {
	if len(paths) == 0 {
		return "", nil
	}

	digests := make([]FileDigest, 0, len(paths))
	for _, path := range paths {
		hash, err := DigestFile(path)
		if err != nil {
			return "", fmt.Errorf("digest file %q: %w", path, err)
		}
		digests = append(digests, FileDigest{Path: path, SHA256: hash})
	}

	// Sort by path for deterministic output
	sort.Slice(digests, func(i, j int) bool {
		return digests[i].Path < digests[j].Path
	})

	var parts []string
	for _, d := range digests {
		parts = append(parts, fmt.Sprintf("%s]sha256:%s", d.Path, d.SHA256))
	}

	return strings.Join(parts, ","), nil
}

// DigestFilesWithOverlay calculates digests for files, using overlay content when available.
func DigestFilesWithOverlay(paths []string, overlay map[string][]byte) (string, error) {
	if len(paths) == 0 {
		return "", nil
	}

	digests := make([]FileDigest, 0, len(paths))
	for _, path := range paths {
		var hash string
		if content, ok := overlay[path]; ok {
			// Use overlay content
			hash = DigestBytes(content)
		} else {
			// Read from disk
			var err error
			hash, err = DigestFile(path)
			if err != nil {
				return "", fmt.Errorf("digest file %q: %w", path, err)
			}
		}
		digests = append(digests, FileDigest{Path: path, SHA256: hash})
	}

	// Sort by path for deterministic output
	sort.Slice(digests, func(i, j int) bool {
		return digests[i].Path < digests[j].Path
	})

	var parts []string
	for _, d := range digests {
		parts = append(parts, fmt.Sprintf("%s]sha256:%s", d.Path, d.SHA256))
	}

	return strings.Join(parts, ","), nil
}
