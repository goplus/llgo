//go:build !llgo

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
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/crosscompile"
	"github.com/goplus/llgo/internal/packages"
)

func TestCollectFingerprint(t *testing.T) {
	td := t.TempDir()

	// Create a test file
	goFile := filepath.Join(td, "main.go")
	if err := os.WriteFile(goFile, []byte("package main\nfunc main() {}"), 0644); err != nil {
		t.Fatal(err)
	}

	ctx := &context{
		conf: &packages.Config{},
		buildConf: &Config{
			Goos:      "darwin",
			Goarch:    "arm64",
			BuildMode: BuildModeExe,
			Tags:      "test",
		},
		crossCompile: crosscompile.Export{
			LLVMTarget: "arm64-apple-darwin",
		},
	}

	pkg := &aPackage{
		Package: &packages.Package{
			PkgPath: "example.com/test",
			GoFiles: []string{goFile},
		},
	}

	if err := ctx.collectFingerprint(pkg); err != nil {
		t.Fatalf("collectFingerprint: %v", err)
	}

	// Check fingerprint is generated
	if pkg.Fingerprint == "" {
		t.Error("fingerprint should not be empty")
	}
	if len(pkg.Fingerprint) != 64 {
		t.Errorf("fingerprint length = %d, want 64", len(pkg.Fingerprint))
	}

	// Check manifest contains expected sections
	if !strings.Contains(pkg.Manifest, "Env:") {
		t.Error("manifest should contain Env section")
	}
	if !strings.Contains(pkg.Manifest, "Common:") {
		t.Error("manifest should contain Common section")
	}
	if !strings.Contains(pkg.Manifest, "Package:") {
		t.Error("manifest should contain Package section")
	}

	// Check specific values
	if !strings.Contains(pkg.Manifest, "GOOS=darwin") {
		t.Error("manifest should contain GOOS=darwin")
	}
	if !strings.Contains(pkg.Manifest, "PKG_PATH=example.com/test") {
		t.Error("manifest should contain PKG_PATH")
	}
}

func TestCollectFingerprintDeterminism(t *testing.T) {
	td := t.TempDir()

	goFile := filepath.Join(td, "main.go")
	if err := os.WriteFile(goFile, []byte("package main"), 0644); err != nil {
		t.Fatal(err)
	}

	ctx := &context{
		conf: &packages.Config{},
		buildConf: &Config{
			Goos:      "linux",
			Goarch:    "amd64",
			BuildMode: BuildModeExe,
		},
		crossCompile: crosscompile.Export{},
	}

	pkg1 := &aPackage{
		Package: &packages.Package{
			PkgPath: "test/pkg",
			GoFiles: []string{goFile},
		},
	}

	pkg2 := &aPackage{
		Package: &packages.Package{
			PkgPath: "test/pkg",
			GoFiles: []string{goFile},
		},
	}

	if err := ctx.collectFingerprint(pkg1); err != nil {
		t.Fatal(err)
	}
	if err := ctx.collectFingerprint(pkg2); err != nil {
		t.Fatal(err)
	}

	if pkg1.Fingerprint != pkg2.Fingerprint {
		t.Error("same inputs should produce same fingerprint")
	}
}

func TestTargetTripleMethod(t *testing.T) {
	tests := []struct {
		name   string
		ctx    *context
		expect string
	}{
		{
			name: "with llvm target",
			ctx: &context{
				buildConf: &Config{
					Goos:   "darwin",
					Goarch: "arm64",
				},
				crossCompile: crosscompile.Export{
					LLVMTarget: "arm64-apple-darwin",
				},
			},
			expect: "arm64-apple-darwin",
		},
		{
			name: "without llvm target",
			ctx: &context{
				buildConf: &Config{
					Goos:   "linux",
					Goarch: "amd64",
				},
				crossCompile: crosscompile.Export{},
			},
			expect: "amd64-linux",
		},
		{
			name: "with abi",
			ctx: &context{
				buildConf: &Config{
					Goos:   "linux",
					Goarch: "arm",
				},
				crossCompile: crosscompile.Export{
					TargetABI: "gnueabihf",
				},
			},
			expect: "arm-linux-gnueabihf",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := tt.ctx.targetTriple()
			if got != tt.expect {
				t.Errorf("targetTriple() = %q, want %q", got, tt.expect)
			}
		})
	}
}

func TestEnsureCacheManager(t *testing.T) {
	ctx := &context{
		buildConf: &Config{},
	}

	// First call should create manager
	cm1 := ctx.ensureCacheManager()
	if cm1 == nil {
		t.Fatal("ensureCacheManager returned nil")
	}

	// Second call should return same instance
	cm2 := ctx.ensureCacheManager()
	if cm1 != cm2 {
		t.Error("ensureCacheManager should return same instance")
	}
}

func TestTryLoadFromCache_NoFingerprint(t *testing.T) {
	ctx := &context{
		buildConf: &Config{},
	}

	pkg := &aPackage{
		Package: &packages.Package{
			PkgPath: "test/pkg",
		},
		Fingerprint: "", // No fingerprint
	}

	if ctx.tryLoadFromCache(pkg) {
		t.Error("should return false when no fingerprint")
	}
}

func TestSaveToCache_MainPackage(t *testing.T) {
	td := t.TempDir()
	oldFunc := cacheRootFunc
	cacheRootFunc = func() string { return td }
	defer func() { cacheRootFunc = oldFunc }()

	ctx := &context{
		buildConf: &Config{
			Goos:   "darwin",
			Goarch: "arm64",
		},
		crossCompile: crosscompile.Export{
			LLVMTarget: "arm64-apple-darwin",
		},
	}

	pkg := &aPackage{
		Package: &packages.Package{
			PkgPath: "main",
			Name:    "main", // Main package
		},
		Fingerprint: "abc123",
		Manifest:    "test manifest",
	}

	// Should not error but also should not create cache
	if err := ctx.saveToCache(pkg); err != nil {
		t.Fatalf("saveToCache: %v", err)
	}

	// Check no cache was created
	cm := ctx.ensureCacheManager()
	paths := cm.PackagePaths("arm64-apple-darwin", "main", "abc123")
	if _, err := os.Stat(paths.Manifest); !os.IsNotExist(err) {
		t.Error("main package should not be cached")
	}
}

func TestSaveToCache_Success(t *testing.T) {
	td := t.TempDir()
	oldFunc := cacheRootFunc
	cacheRootFunc = func() string { return td }
	defer func() { cacheRootFunc = oldFunc }()

	ctx := &context{
		buildConf: &Config{
			Goos:   "darwin",
			Goarch: "arm64",
		},
		crossCompile: crosscompile.Export{
			LLVMTarget: "arm64-apple-darwin",
		},
	}

	// Create a temporary .o file
	objFile, err := os.CreateTemp(td, "test-*.o")
	if err != nil {
		t.Fatalf("CreateTemp: %v", err)
	}
	objFile.WriteString("fake object file")
	objFile.Close()

	pkg := &aPackage{
		Package: &packages.Package{
			PkgPath: "example.com/lib",
			Name:    "lib",
		},
		Fingerprint: "def456",
		Manifest:    "Env:\nGOOS=darwin\n",
		LLFiles:     []string{objFile.Name()},
	}

	if err := ctx.saveToCache(pkg); err != nil {
		t.Fatalf("saveToCache: %v", err)
	}

	// Check cache was created
	cm := ctx.ensureCacheManager()
	paths := cm.PackagePaths("arm64-apple-darwin", "example.com/lib", "def456")

	// Check manifest contains original content and metadata
	content, err := ReadManifest(paths.Manifest)
	if err != nil {
		t.Fatalf("ReadManifest: %v", err)
	}
	if !strings.Contains(content, "GOOS=darwin") {
		t.Errorf("manifest should contain original content")
	}
	if !strings.Contains(content, "Metadata:") {
		t.Errorf("manifest should contain metadata section")
	}

	// Check archive exists
	if _, err := os.Stat(paths.Archive); err != nil {
		t.Errorf("archive should exist: %v", err)
	}
}

func TestGetLLVMVersion(t *testing.T) {
	ctx := &context{
		crossCompile: crosscompile.Export{},
	}

	// First call should detect version
	v1 := ctx.getLLVMVersion()
	// May be empty if clang is not installed, but should not panic

	// Second call should return cached version
	v2 := ctx.getLLVMVersion()
	if v1 != v2 {
		t.Error("getLLVMVersion should return cached value")
	}
}
