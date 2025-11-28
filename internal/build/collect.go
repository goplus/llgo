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
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"sort"
	"strings"

	"github.com/goplus/llgo/internal/env"
)

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
	envVars := []string{
		llgoDebug,
		llgoDbgSyms,
		llgoTrace,
		llgoOptimize,
		llgoWasmRuntime,
		llgoWasiThreads,
		llgoStdioNobuf,
		llgoFullRpath,
	}
	for _, envVar := range envVars {
		if v := os.Getenv(envVar); v != "" {
			m.AddEnv(envVar, v)
		}
	}
}

// collectCommonInputs collects common build configuration inputs.
func (c *context) collectCommonInputs(m *ManifestBuilder) {
	m.AddCommon("ABI_MODE", fmt.Sprintf("%d", c.buildConf.AbiMode))
	m.AddCommon("BUILD_TAGS", c.buildConf.Tags)
	m.AddCommon("TARGET", c.buildConf.Target)
	m.AddCommon("TARGET_ABI", c.crossCompile.TargetABI)

	// Compiler configuration
	if c.crossCompile.CC != "" {
		m.AddCommon("CC", c.crossCompile.CC)
	}
	if len(c.crossCompile.CCFLAGS) > 0 {
		m.AddCommon("CCFLAGS", strings.Join(c.crossCompile.CCFLAGS, " "))
	}
	if len(c.crossCompile.CFLAGS) > 0 {
		m.AddCommon("CFLAGS", strings.Join(c.crossCompile.CFLAGS, " "))
	}
	if len(c.crossCompile.LDFLAGS) > 0 {
		m.AddCommon("LDFLAGS", strings.Join(c.crossCompile.LDFLAGS, " "))
	}
	if c.crossCompile.Linker != "" {
		m.AddCommon("LINKER", c.crossCompile.Linker)
	}

	// Extra files from target configuration
	if len(c.crossCompile.ExtraFiles) > 0 {
		extraDigest, err := DigestFiles(c.crossCompile.ExtraFiles)
		if err == nil && extraDigest != "" {
			m.AddCommon("EXTRA_FILES", extraDigest)
		}
	}
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

	// Rewrite vars
	if len(pkg.rewriteVars) > 0 {
		var rewrites []string
		for k, v := range pkg.rewriteVars {
			rewrites = append(rewrites, fmt.Sprintf("%s=%s", k, v))
		}
		sort.Strings(rewrites)
		m.AddPackage("REWRITE_VARS", strings.Join(rewrites, ","))
	}

	// Add metadata fields if available (for cache saving)
	// (LINK_ARGS/NEED_RT/NEED_PY_INIT are appended later in saveToCache)

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

	// Check if archive file exists
	if _, err := os.Stat(paths.Archive); err != nil {
		return false
	}

	// Read metadata from manifest
	content, err := ReadManifest(paths.Manifest)
	if err != nil {
		return false
	}

	// Parse metadata from manifest [Package] section (INI format)
	meta, err := parseManifestMetadata(content)
	if err != nil {
		return false
	}

	// Use the .a archive directly for linking (no extraction needed)
	pkg.LLFiles = []string{paths.Archive}
	pkg.LinkArgs = meta.LinkArgs
	pkg.NeedRt = meta.NeedRt
	pkg.NeedPyInit = meta.NeedPyInit
	pkg.CacheHit = true

	return true
}

// parseManifestMetadata extracts metadata from manifest [Package] section.
func parseManifestMetadata(content string) (*CacheArchiveMetadata, error) {
	meta := &CacheArchiveMetadata{}

	// Find Package section
	idx := strings.Index(content, "[Package]\n")
	if idx == -1 {
		return meta, nil
	}

	// Extract Package section content (until next section or end)
	pkgSection := content[idx+len("[Package]\n"):]
	if nextIdx := strings.Index(pkgSection, "\n["); nextIdx != -1 {
		pkgSection = pkgSection[:nextIdx]
	}

	// Parse key-value pairs in Package section
	lines := strings.Split(pkgSection, "\n")
	for _, line := range lines {
		line = strings.TrimSpace(line)
		if line == "" {
			continue
		}
		parts := strings.SplitN(line, " = ", 2)
		if len(parts) != 2 {
			continue
		}
		key, value := strings.TrimSpace(parts[0]), strings.TrimSpace(parts[1])

		switch key {
		case "LINK_ARGS":
			if value != "" {
				meta.LinkArgs = strings.Fields(value)
			}
		case "NEED_RT":
			meta.NeedRt = value == "true"
		case "NEED_PY_INIT":
			meta.NeedPyInit = value == "true"
		}
	}

	return meta, nil
}

// CacheArchiveMetadata holds metadata about a cached archive.
type CacheArchiveMetadata struct {
	LinkArgs   []string
	NeedRt     bool
	NeedPyInit bool
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

	if len(objectFiles) == 0 {
		return nil
	}

	// Create .a archive from object files (atomic write to avoid races)
	if err := createArchiveFile(paths.Archive, objectFiles); err != nil {
		return err
	}

	// Append metadata to existing manifest (pkg.Manifest was built in collectFingerprint).
	manifestWithMeta := pkg.Manifest
	if manifestWithMeta == "" {
		// Fallback: rebuild if missing (should not happen in normal flow).
		m := NewManifestBuilder()
		c.collectEnvInputs(m)
		c.collectCommonInputs(m)
		if err := c.collectPackageInputs(m, pkg); err != nil {
			return err
		}
		manifestWithMeta = m.Build()
	}
	manifestWithMeta = strings.TrimRight(manifestWithMeta, "\n") + "\n"
	if !strings.Contains(manifestWithMeta, "[Package]") {
		manifestWithMeta += "[Package]\n"
	}
	if len(pkg.LinkArgs) > 0 {
		manifestWithMeta += fmt.Sprintf("LINK_ARGS = %s\n", strings.Join(pkg.LinkArgs, " "))
	}
	if pkg.NeedRt {
		manifestWithMeta += "NEED_RT = true\n"
	}
	if pkg.NeedPyInit {
		manifestWithMeta += "NEED_PY_INIT = true\n"
	}
	manifestWithMeta += "\n"

	// Write manifest with metadata
	if err := WriteManifest(paths.Manifest, manifestWithMeta); err != nil {
		return err
	}

	return nil
}
