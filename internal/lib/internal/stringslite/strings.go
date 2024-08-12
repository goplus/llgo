// Copyright 2024 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Package stringslite implements a subset of strings,
// only using packages that may be imported by "os".
//
// Tests for these functions are in the strings package.
package stringslite

import (
	"github.com/goplus/llgo/internal/lib/internal/bytealg"
)

func IndexByte(s string, c byte) int {
	return bytealg.IndexByteString(s, c)
}
