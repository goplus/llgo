// Copyright 2024 The GoPlus Authors (goplus.org). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Package build provides alternative implementations for go/build.
// We override build.Default.Compiler in an init function.

package build

import (
	"go/build"
)

func init() {
	// LLGO PATCH: Override build.Default.Compiler to be "gc" instead of "llgo"
	// This prevents "unknown compiler" errors when user code uses go/build package
	// Even though runtime.Compiler = "llgo", we set build.Default.Compiler = "gc"
	build.Default.Compiler = "gc"
}
