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

	"github.com/goplus/llgo/runtime/internal/lib/internal/buildcfg"
)

// Type aliases to reference standard library types
type Context = build.Context

//go:linkname cgoSupported internal/platform.CgoSupported
func cgoSupported(goos, goarch string) bool

//go:linkname toolTags internal/buildcfg.ToolTags
var toolTags []string

// defaultToolTags should be an internal detail,
// but widely used packages access it using linkname.
// Notable members of the hall of shame include:
//   - github.com/gopherjs/gopherjs
//
// Do not remove or change the type signature.
// See go.dev/issue/67401.
//
//go:linkname defaultToolTags
var defaultToolTags []string

// defaultReleaseTags should be an internal detail,
// but widely used packages access it using linkname.
// Notable members of the hall of shame include:
//   - github.com/gopherjs/gopherjs
//
// Do not remove or change the type signature.
// See go.dev/issue/67401.
//
//go:linkname defaultReleaseTags
var defaultReleaseTags []string

// parseGoVersion extracts the minor version number from runtime.Version()
// e.g., "go1.24" or "go1.24.1" -> 24
func parseGoVersion() int {
	v := runtime.Version()
	if strings.HasPrefix(v, "go") {
		v = v[2:]
	}
	parts := strings.Split(v, ".")
	if len(parts) >= 2 {
		if minor, err := strconv.Atoi(parts[1]); err == nil {
			return minor
		}
	}
	return 24
}

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
	c.ToolTags = append(c.ToolTags, toolTags...)

	defaultToolTags = append([]string{}, c.ToolTags...)

	// Each major Go release in the Go 1.x series adds a new
	// "go1.x" release tag. That is, the go1.x tag is present in
	// all releases >= Go 1.x.
	goVersion := parseGoVersion()
	for i := 1; i <= goVersion; i++ {
		c.ReleaseTags = append(c.ReleaseTags, "go1."+strconv.Itoa(i))
	}

	defaultReleaseTags = append([]string{}, c.ReleaseTags...)

	env := os.Getenv("CGO_ENABLED")
	if env == "" {
		env = buildcfg.DefaultCGO_ENABLED
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

