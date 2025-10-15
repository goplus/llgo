// Copyright 2024 The GoPlus Authors (goplus.org). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//  Minimal overlay for go/build package.
// This file contains only the patched defaultContext function.

package build

import (
	"internal/buildcfg"
	"internal/goversion"
	"internal/platform"
	"os"
	"path/filepath"
	"runtime"
	"strconv"
)

var defaultToolTags []string
var defaultReleaseTags []string

func defaultContext() Context {
	var c Context

	c.GOARCH = buildcfg.GOARCH
	c.GOOS = buildcfg.GOOS
	if goroot := runtime.GOROOT(); goroot != "" {
		c.GOROOT = filepath.Clean(goroot)
	}
	c.GOPATH = envOr("GOPATH", defaultGOPATH())
	// LLGO PATCH: Use "gc" instead of runtime.Compiler to avoid "unknown compiler" error
	c.Compiler = "gc"
	c.ToolTags = append(c.ToolTags, buildcfg.ToolTags...)

	defaultToolTags = append([]string{}, c.ToolTags...)

	for i := 1; i <= goversion.Version; i++ {
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
			c.CgoEnabled = platform.CgoSupported(c.GOOS, c.GOARCH)
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
