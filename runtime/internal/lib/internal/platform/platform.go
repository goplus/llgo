// Copyright 2024 The GoPlus Authors (goplus.org). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Package platform provides platform-specific utilities.
package platform

// llgo:skipall
type _platform struct{}

// CgoSupported returns whether CGO is supported for the given GOOS/GOARCH.
// This is a simplified version of internal/platform.CgoSupported.
func CgoSupported(goos, goarch string) bool {
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
