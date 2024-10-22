// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package platform

// RaceDetectorSupported reports whether goos/goarch supports the race
// detector. There is a copy of this function in cmd/dist/test.go.
// Race detector only supports 48-bit VMA on arm64. But it will always
// return true for arm64, because we don't have VMA size information during
// the compile time.
func RaceDetectorSupported(goos, goarch string) bool {
	switch goos {
	case "linux":
		return goarch == "amd64" || goarch == "ppc64le" || goarch == "arm64" || goarch == "s390x"
	case "darwin":
		return goarch == "amd64" || goarch == "arm64"
	case "freebsd", "netbsd", "openbsd", "windows":
		return goarch == "amd64"
	default:
		return false
	}
}

// MSanSupported reports whether goos/goarch supports the memory
// sanitizer option.
// There is a copy of this function in misc/cgo/testsanitizers/cc_test.go.
func MSanSupported(goos, goarch string) bool {
	switch goos {
	case "linux":
		return goarch == "amd64" || goarch == "arm64"
	case "freebsd":
		return goarch == "amd64"
	default:
		return false
	}
}

// ASanSupported reports whether goos/goarch supports the address
// sanitizer option.
// There is a copy of this function in misc/cgo/testsanitizers/cc_test.go.
func ASanSupported(goos, goarch string) bool {
	switch goos {
	case "linux":
		return goarch == "arm64" || goarch == "amd64" || goarch == "riscv64" || goarch == "ppc64le"
	default:
		return false
	}
}

// FuzzSupported reports whether goos/goarch supports fuzzing
// ('go test -fuzz=.').
func FuzzSupported(goos, goarch string) bool {
	switch goos {
	case "darwin", "freebsd", "linux", "windows":
		return true
	default:
		return false
	}
}

// FuzzInstrumented reports whether fuzzing on goos/goarch uses coverage
// instrumentation. (FuzzInstrumented implies FuzzSupported.)
func FuzzInstrumented(goos, goarch string) bool {
	switch goarch {
	case "amd64", "arm64":
		// TODO(#14565): support more architectures.
		return FuzzSupported(goos, goarch)
	default:
		return false
	}
}

// MustLinkExternal reports whether goos/goarch requires external linking.
func MustLinkExternal(goos, goarch string) bool {
	return MustLinkExternalGo121(goos, goarch, false)
}

// MustLinkExternalGo121 reports whether goos/goarch requires external linking,
// with or without cgo dependencies. [This version back-ported from
// Go 1.21 as part of a test].
func MustLinkExternalGo121(goos, goarch string, withCgo bool) bool {
	if withCgo {
		switch goarch {
		case "loong64",
			"mips", "mipsle", "mips64", "mips64le",
			"riscv64":
			// Internally linking cgo is incomplete on some architectures.
			// https://go.dev/issue/14449
			return true
		case "arm64":
			if goos == "windows" {
				// windows/arm64 internal linking is not implemented.
				return true
			}
		case "ppc64":
			// Big Endian PPC64 cgo internal linking is not implemented for aix or linux.
			// https://go.dev/issue/8912
			return true
		}

		switch goos {
		case "android":
			return true
		case "dragonfly":
			// It seems that on Dragonfly thread local storage is
			// set up by the dynamic linker, so internal cgo linking
			// doesn't work. Test case is "go test runtime/cgo".
			return true
		}
	}

	switch goos {
	case "android":
		if goarch != "arm64" {
			return true
		}
	case "ios":
		if goarch == "arm64" {
			return true
		}
	}
	return false
}

// BuildModeSupported reports whether goos/goarch supports the given build mode
// using the given compiler.
func BuildModeSupported(compiler, buildmode, goos, goarch string) bool {
	if compiler == "gccgo" {
		return true
	}

	platform := goos + "/" + goarch

	switch buildmode {
	case "archive":
		return true

	case "c-archive":
		// TODO(bcmills): This seems dubious.
		// Do we really support c-archive mode on js/wasm‽
		return platform != "linux/ppc64"

	case "c-shared":
		switch platform {
		case "linux/amd64", "linux/arm", "linux/arm64", "linux/386", "linux/ppc64le", "linux/riscv64", "linux/s390x",
			"android/amd64", "android/arm", "android/arm64", "android/386",
			"freebsd/amd64",
			"darwin/amd64", "darwin/arm64",
			"windows/amd64", "windows/386", "windows/arm64":
			return true
		}
		return false

	case "default":
		return true

	case "exe":
		return true

	case "pie":
		switch platform {
		case "linux/386", "linux/amd64", "linux/arm", "linux/arm64", "linux/ppc64le", "linux/riscv64", "linux/s390x",
			"android/amd64", "android/arm", "android/arm64", "android/386",
			"freebsd/amd64",
			"darwin/amd64", "darwin/arm64",
			"ios/amd64", "ios/arm64",
			"aix/ppc64",
			"windows/386", "windows/amd64", "windows/arm", "windows/arm64":
			return true
		}
		return false

	case "shared":
		switch platform {
		case "linux/386", "linux/amd64", "linux/arm", "linux/arm64", "linux/ppc64le", "linux/s390x":
			return true
		}
		return false

	case "plugin":
		switch platform {
		case "linux/amd64", "linux/arm", "linux/arm64", "linux/386", "linux/s390x", "linux/ppc64le",
			"android/amd64", "android/arm", "android/arm64", "android/386",
			"darwin/amd64", "darwin/arm64",
			"freebsd/amd64":
			return true
		}
		return false

	default:
		return false
	}
}

func InternalLinkPIESupported(goos, goarch string) bool {
	switch goos + "/" + goarch {
	case "darwin/amd64", "darwin/arm64",
		"linux/amd64", "linux/arm64", "linux/ppc64le",
		"android/arm64",
		"windows-amd64", "windows-386", "windows-arm":
		return true
	}
	return false
}
