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
	"strings"
	_ "unsafe"
)

// Type aliases to reference standard library types
type Context = build.Context

// parseGoVersion extracts the minor version number from runtime.Version()
// e.g., "go1.24" or "go1.24.1" -> 24
func parseGoVersion() int {
	v := runtime.Version()
	// Strip "go" prefix
	if strings.HasPrefix(v, "go") {
		v = v[2:]
	}
	// Extract version like "1.24" or "1.24.1"
	parts := strings.Split(v, ".")
	if len(parts) >= 2 {
		if minor, err := strconv.Atoi(parts[1]); err == nil {
			return minor
		}
	}
	// Fallback to a reasonable default if parsing fails
	return 24
}

var goVersion = parseGoVersion()

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

//go:linkname cgoSupported internal/platform.CgoSupported
func cgoSupported(goos, goarch string) bool
