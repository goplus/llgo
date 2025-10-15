// Copyright 2024 The GoPlus Authors (goplus.org). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Package build provides alternative implementations for go/build.
// Only functions that need modification are patched here.

package build

import (
	"go/build"
	"os"
	"path/filepath"
	"runtime"
	"strconv"
)

// Type aliases to reference standard library types
type Context = build.Context

// Go version constant (Go 1.24)
const goVersion = 24

var defaultToolTags []string
var defaultReleaseTags []string

// defaultContext returns the default Context for builds.
// LLGO PATCH: Sets Compiler = "gc" instead of runtime.Compiler
func defaultContext() Context {
	var c Context

	c.GOARCH = runtime.GOARCH
	c.GOOS = runtime.GOOS
	if goroot := runtime.GOROOT(); goroot != "" {
		c.GOROOT = filepath.Clean(goroot)
	}
	c.GOPATH = envOr("GOPATH", defaultGOPATH())
	// LLGO PATCH: Use "gc" instead of runtime.Compiler to avoid "unknown compiler" error
	c.Compiler = "gc"
	c.ToolTags = append(c.ToolTags, buildToolTags()...)

	defaultToolTags = append([]string{}, c.ToolTags...)

	for i := 1; i <= goVersion; i++ {
		c.ReleaseTags = append(c.ReleaseTags, "go1."+strconv.Itoa(i))
	}

	defaultReleaseTags = append([]string{}, c.ReleaseTags...)

	env := os.Getenv("CGO_ENABLED")
	if env == "" {
		env = "1"
	}
	switch env {
	case "1":
		c.CgoEnabled = true
	case "0":
		c.CgoEnabled = false
	default:
		if runtime.GOARCH == c.GOARCH && runtime.GOOS == c.GOOS {
			c.CgoEnabled = cgoSupported(c.GOOS, c.GOARCH)
			break
		}
		c.CgoEnabled = false
	}

	return c
}

func envOr(name, def string) string {
	s := os.Getenv(name)
	if s == "" {
		return def
	}
	return s
}

func defaultGOPATH() string {
	env := "HOME"
	if runtime.GOOS == "windows" {
		env = "USERPROFILE"
	} else if runtime.GOOS == "plan9" {
		env = "home"
	}
	if home := os.Getenv(env); home != "" {
		def := filepath.Join(home, "go")
		if filepath.Clean(def) == filepath.Clean(runtime.GOROOT()) {
			return ""
		}
		return def
	}
	return ""
}

// buildToolTags returns the tool tags for the current build configuration.
// This is a simplified version that returns basic tags.
func buildToolTags() []string {
	return []string{
		// Standard tool tags
		"gc",
		"goexperiment.boringcrypto", // Default boring crypto experiment
	}
}

// cgoSupported returns whether CGO is supported for the given GOOS/GOARCH.
// This is a simplified version of internal/platform.CgoSupported.
func cgoSupported(goos, goarch string) bool {
	// Most common platforms support CGO
	switch goos + "/" + goarch {
	case "darwin/amd64", "darwin/arm64",
		"linux/386", "linux/amd64", "linux/arm", "linux/arm64",
		"windows/386", "windows/amd64", "windows/arm64",
		"freebsd/386", "freebsd/amd64", "freebsd/arm", "freebsd/arm64",
		"openbsd/386", "openbsd/amd64", "openbsd/arm", "openbsd/arm64",
		"netbsd/386", "netbsd/amd64", "netbsd/arm", "netbsd/arm64",
		"android/386", "android/amd64", "android/arm", "android/arm64",
		"illumos/amd64",
		"solaris/amd64",
		"linux/ppc64le", "linux/riscv64", "linux/s390x":
		return true
	}
	return false
}
