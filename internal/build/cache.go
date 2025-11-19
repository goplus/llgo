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
	"path/filepath"
	"strings"

	"github.com/goplus/llgo/internal/env"
)

const (
	cacheBuildDirName = "build"
	cacheArchiveExt   = ".a"
	cacheManifestExt  = ".manifest"
)

// cacheRootFunc can be overridden for testing
var cacheRootFunc = env.LLGoCacheDir

// buildCacheRootDir returns the root directory for build cache
func buildCacheRootDir() string {
	return filepath.Join(cacheRootFunc(), cacheBuildDirName)
}

// CacheManager manages the build cache directory structure
type CacheManager struct {
	root string
}

// NewCacheManager creates a new cache manager
func NewCacheManager() *CacheManager {
	return &CacheManager{root: buildCacheRootDir()}
}

// CachePaths holds the paths for a cached package
type CachePaths struct {
	Dir      string // Directory containing cache files
	Archive  string // Path to .a file
	Manifest string // Path to .manifest file
}

// PackagePaths returns the cache paths for a package
func (cm *CacheManager) PackagePaths(targetTriple, pkgPath, fingerprint string) CachePaths {
	pkgDir := sanitizePkgPath(pkgPath)
	dir := filepath.Join(cm.root, targetTriple, pkgDir)
	return CachePaths{
		Dir:      dir,
		Archive:  filepath.Join(dir, fingerprint+cacheArchiveExt),
		Manifest: filepath.Join(dir, fingerprint+cacheManifestExt),
	}
}

// sanitizePkgPath converts a package path to a safe directory path
func sanitizePkgPath(pkgPath string) string {
	if pkgPath == "" {
		return "_"
	}
	segments := strings.Split(pkgPath, "/")
	for i, segment := range segments {
		if segment == "" {
			segments[i] = "_"
		}
	}
	return filepath.Join(segments...)
}

// EnsureDir creates the cache directory if it doesn't exist
func (cm *CacheManager) EnsureDir(paths CachePaths) error {
	return os.MkdirAll(paths.Dir, 0o755)
}

// WriteManifest writes manifest content to a file atomically
func WriteManifest(path string, content string) error {
	if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
		return fmt.Errorf("create manifest dir: %w", err)
	}

	// Write to temp file first
	tmp, err := os.CreateTemp(filepath.Dir(path), "manifest-*.tmp")
	if err != nil {
		return fmt.Errorf("create temp manifest: %w", err)
	}

	if _, err := tmp.WriteString(content); err != nil {
		tmp.Close()
		os.Remove(tmp.Name())
		return fmt.Errorf("write manifest: %w", err)
	}

	if err := tmp.Close(); err != nil {
		os.Remove(tmp.Name())
		return fmt.Errorf("close manifest: %w", err)
	}

	// Atomic rename
	if err := os.Rename(tmp.Name(), path); err != nil {
		os.Remove(tmp.Name())
		return fmt.Errorf("publish manifest: %w", err)
	}

	return nil
}

// ReadManifest reads manifest content from a file
func ReadManifest(path string) (string, error) {
	content, err := os.ReadFile(path)
	if err != nil {
		return "", err
	}
	return string(content), nil
}

// CacheExists checks if a valid cache entry exists
func (cm *CacheManager) CacheExists(paths CachePaths) bool {
	// Only manifest must exist (files are checked during load)
	if _, err := os.Stat(paths.Manifest); err != nil {
		return false
	}
	return true
}

// CleanPackageCache removes all cache entries for a package
func (cm *CacheManager) CleanPackageCache(targetTriple, pkgPath string) error {
	pkgDir := sanitizePkgPath(pkgPath)
	dir := filepath.Join(cm.root, targetTriple, pkgDir)
	return os.RemoveAll(dir)
}

// CleanAllCache removes the entire build cache
func (cm *CacheManager) CleanAllCache() error {
	return os.RemoveAll(cm.root)
}

// TargetTriple returns the target triple string for cache directory
func TargetTriple(goos, goarch, llvmTarget, targetABI string) string {
	triple := llvmTarget
	if triple == "" {
		triple = fmt.Sprintf("%s-%s", goarch, goos)
	}
	if targetABI != "" {
		triple = triple + "-" + targetABI
	}
	return triple
}

// ListCachedPackages returns all cached fingerprints for a package
func (cm *CacheManager) ListCachedPackages(targetTriple, pkgPath string) ([]string, error) {
	pkgDir := sanitizePkgPath(pkgPath)
	dir := filepath.Join(cm.root, targetTriple, pkgDir)

	entries, err := os.ReadDir(dir)
	if err != nil {
		if os.IsNotExist(err) {
			return nil, nil
		}
		return nil, err
	}

	var fingerprints []string
	for _, entry := range entries {
		name := entry.Name()
		if strings.HasSuffix(name, cacheArchiveExt) {
			fp := strings.TrimSuffix(name, cacheArchiveExt)
			fingerprints = append(fingerprints, fp)
		}
	}

	return fingerprints, nil
}

// CacheStats holds statistics about the cache
type CacheStats struct {
	TotalPackages int
	TotalSize     int64
}

// Stats returns statistics about the cache
func (cm *CacheManager) Stats() (CacheStats, error) {
	var stats CacheStats

	err := filepath.Walk(cm.root, func(path string, info os.FileInfo, err error) error {
		if err != nil {
			if os.IsNotExist(err) {
				return nil
			}
			return err
		}
		if !info.IsDir() {
			stats.TotalSize += info.Size()
			if strings.HasSuffix(path, cacheArchiveExt) {
				stats.TotalPackages++
			}
		}
		return nil
	})

	if os.IsNotExist(err) {
		return stats, nil
	}
	return stats, err
}
