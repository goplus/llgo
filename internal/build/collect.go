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
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"sort"
	"strings"

	"github.com/goplus/llgo/internal/env"
)

// cacheEnabled checks if build cache is enabled.
// Cache can be disabled by setting LLGO_CACHE=off
func cacheEnabled() bool {
	return os.Getenv("LLGO_CACHE") != "off"
}

// collectFingerprint collects all inputs and generates fingerprint for a package.
func (c *context) collectFingerprint(pkg *aPackage) error {
	m := NewManifestBuilder()

	// Env section
	c.collectEnvInputs(m)

	// Common section
	c.collectCommonInputs(m)

	// Package section
	if err := c.collectPackageInputs(m, pkg); err != nil {
		return err
	}

	pkg.Manifest = m.Build()
	pkg.Fingerprint = m.Fingerprint()
	return nil
}

// collectEnvInputs collects environment-related inputs.
func (c *context) collectEnvInputs(m *ManifestBuilder) {
	m.AddEnv("GOOS", c.buildConf.Goos)
	m.AddEnv("GOARCH", c.buildConf.Goarch)
	m.AddEnv("LLVM_TRIPLE", c.crossCompile.LLVMTarget)
	m.AddEnv("LLGO_VERSION", env.Version())
	m.AddEnv("GO_VERSION", runtime.Version())
	m.AddEnv("LLVM_VERSION", c.getLLVMVersion())

	// Environment variables that affect build
	if v := os.Getenv("LLGO_STDIO_NOBUF"); v != "" {
		m.AddEnv("LLGO_STDIO_NOBUF", v)
	}
	if v := os.Getenv("LLGO_WASI_THREADS"); v != "" {
		m.AddEnv("LLGO_WASI_THREADS", v)
	}
}

// collectCommonInputs collects common build configuration inputs.
func (c *context) collectCommonInputs(m *ManifestBuilder) {
	m.AddCommon("BUILD_MODE", string(c.buildConf.BuildMode))
	m.AddCommon("ABI_MODE", fmt.Sprintf("%d", c.buildConf.AbiMode))
	m.AddCommon("BUILD_TAGS", c.buildConf.Tags)
	m.AddCommon("TARGET", c.buildConf.Target)
	m.AddCommon("TARGET_ABI", c.crossCompile.TargetABI)
}

// collectPackageInputs collects package-specific inputs.
func (c *context) collectPackageInputs(m *ManifestBuilder, pkg *aPackage) error {
	p := pkg.Package

	m.AddPackage("PKG_PATH", p.PkgPath)
	m.AddPackage("PKG_ID", p.ID)

	// Go source files
	goFilesDigest, err := DigestFilesWithOverlay(p.GoFiles, c.conf.Overlay)
	if err != nil {
		return fmt.Errorf("digest go files: %w", err)
	}
	m.AddPackage("GO_FILES", goFilesDigest)

	// Alt package files (if any)
	if pkg.AltPkg != nil {
		altFilesDigest, err := DigestFilesWithOverlay(pkg.AltPkg.GoFiles, c.conf.Overlay)
		if err != nil {
			return fmt.Errorf("digest alt go files: %w", err)
		}
		m.AddPackage("ALT_GO_FILES", altFilesDigest)
	}

	// Other files (C, assembly, etc.)
	if len(p.OtherFiles) > 0 {
		otherFilesDigest, err := DigestFiles(p.OtherFiles)
		if err != nil {
			return fmt.Errorf("digest other files: %w", err)
		}
		m.AddPackage("OTHER_FILES", otherFilesDigest)
	}

	// Link args (collected after building, so we add them later)
	if len(pkg.LinkArgs) > 0 {
		m.AddPackage("LINK_ARGS", strings.Join(pkg.LinkArgs, " "))
	}

	// Rewrite vars
	if len(pkg.rewriteVars) > 0 {
		var rewrites []string
		for k, v := range pkg.rewriteVars {
			rewrites = append(rewrites, fmt.Sprintf("%s=%s", k, v))
		}
		sort.Strings(rewrites)
		m.AddPackage("REWRITE_VARS", strings.Join(rewrites, ","))
	}

	// Global rewrites for this package
	if c.buildConf.GlobalRewrites != nil {
		if vars := c.buildConf.GlobalRewrites[p.PkgPath]; vars != nil {
			var globals []string
			for k, v := range vars {
				globals = append(globals, fmt.Sprintf("%s=%s", k, v))
			}
			sort.Strings(globals)
			m.AddPackage("GLOBAL_REWRITES", strings.Join(globals, ","))
		}
	}

	return nil
}

// getLLVMVersion returns the cached LLVM version or detects it.
func (c *context) getLLVMVersion() string {
	if c.llvmVersion != "" {
		return c.llvmVersion
	}
	c.llvmVersion = detectLLVMVersion(c)
	return c.llvmVersion
}

// detectLLVMVersion detects LLVM version from clang --version.
func detectLLVMVersion(ctx *context) string {
	// Get compiler path from cross compile config
	cc := ctx.crossCompile.CC
	if cc == "" {
		cc = "clang"
	}
	versionCmd := exec.Command(cc, "--version")
	output, err := versionCmd.Output()
	if err != nil {
		return ""
	}
	line := string(output)
	if idx := strings.IndexByte(line, '\n'); idx >= 0 {
		line = line[:idx]
	}
	return strings.TrimSpace(line)
}

// targetTriple returns the target triple for cache directory.
func (c *context) targetTriple() string {
	return TargetTriple(
		c.buildConf.Goos,
		c.buildConf.Goarch,
		c.crossCompile.LLVMTarget,
		c.crossCompile.TargetABI,
	)
}

// ensureCacheManager creates cacheManager if not exists.
func (c *context) ensureCacheManager() *CacheManager {
	if c.cacheManager == nil {
		c.cacheManager = NewCacheManager()
	}
	return c.cacheManager
}

// tryLoadFromCache attempts to load a package from cache.
// Returns true if cache hit, false otherwise.
func (c *context) tryLoadFromCache(pkg *aPackage) bool {
	if !cacheEnabled() {
		return false
	}

	if pkg.Fingerprint == "" {
		return false
	}

	cm := c.ensureCacheManager()
	paths := cm.PackagePaths(c.targetTriple(), pkg.PkgPath, pkg.Fingerprint)

	if !cm.CacheExists(paths) {
		return false
	}

	// Read metadata from manifest
	content, err := ReadManifest(paths.Manifest)
	if err != nil {
		return false
	}

	// Parse metadata from manifest (last section contains JSON metadata)
	meta, err := parseManifestMetadata(content)
	if err != nil {
		return false
	}

	// Load cached .o files directly from cache directory
	cacheDir := filepath.Dir(paths.Manifest)
	var cachedFiles []string
	for _, origFile := range meta.Files {
		// Files are stored with their basename in cache directory
		cachedFile := filepath.Join(cacheDir, filepath.Base(origFile))
		if _, err := os.Stat(cachedFile); err != nil {
			return false
		}
		cachedFiles = append(cachedFiles, cachedFile)
	}

	// Populate package fields from cache
	pkg.LLFiles = cachedFiles
	pkg.LinkArgs = meta.LinkArgs
	pkg.NeedRt = meta.NeedRt
	pkg.NeedPyInit = meta.NeedPyInit
	pkg.CacheHit = true

	return true
}

// parseManifestMetadata extracts JSON metadata from manifest content.
func parseManifestMetadata(content string) (*CacheArchiveMetadata, error) {
	// Find Metadata section
	idx := strings.Index(content, "Metadata:\n")
	if idx == -1 {
		return &CacheArchiveMetadata{}, nil
	}

	jsonStr := strings.TrimPrefix(content[idx:], "Metadata:\n")
	var meta CacheArchiveMetadata
	if err := json.Unmarshal([]byte(jsonStr), &meta); err != nil {
		return nil, err
	}
	return &meta, nil
}

// saveToCache saves a built package to cache.
func (c *context) saveToCache(pkg *aPackage) error {
	if !cacheEnabled() {
		return nil
	}

	if pkg.Fingerprint == "" || pkg.Manifest == "" {
		return nil
	}

	// Don't cache main packages
	if pkg.Name == "main" {
		return nil
	}

	cm := c.ensureCacheManager()
	paths := cm.PackagePaths(c.targetTriple(), pkg.PkgPath, pkg.Fingerprint)

	// Ensure directory exists
	if err := cm.EnsureDir(paths); err != nil {
		return err
	}

	// Collect object files to cache
	// Deduplicate by full path first
	var objectFiles []string
	seenPath := make(map[string]bool)
	for _, f := range pkg.LLFiles {
		if filepath.Ext(f) == ".o" || filepath.Ext(f) == ".ll" {
			if !seenPath[f] {
				seenPath[f] = true
				objectFiles = append(objectFiles, f)
			}
		}
	}

	// Copy object files directly to cache directory (no archive)
	cacheDir := filepath.Dir(paths.Manifest)
	for _, objFile := range objectFiles {
		destFile := filepath.Join(cacheDir, filepath.Base(objFile))
		content, err := os.ReadFile(objFile)
		if err != nil {
			return fmt.Errorf("read %s: %w", objFile, err)
		}
		if err := os.WriteFile(destFile, content, 0644); err != nil {
			return fmt.Errorf("write %s: %w", destFile, err)
		}
	}

	// Create metadata
	meta := &CacheArchiveMetadata{
		Files:      objectFiles,
		LinkArgs:   pkg.LinkArgs,
		NeedRt:     pkg.NeedRt,
		NeedPyInit: pkg.NeedPyInit,
	}

	// Add metadata to manifest
	metaJSON, err := json.Marshal(meta)
	if err != nil {
		return err
	}

	manifestWithMeta := pkg.Manifest + "Metadata:\n" + string(metaJSON)

	// Write manifest with metadata
	if err := WriteManifest(paths.Manifest, manifestWithMeta); err != nil {
		return err
	}

	return nil
}
