// Copyright 2026 The LLGo Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package bisect

import "io"

// Matcher is a minimal bisect matcher implementation.
// LLGo currently only needs the API surface used by internal/godebug.
type Matcher struct{}

func New(pattern string) (*Matcher, error) {
	if pattern == "" {
		return nil, nil
	}
	return &Matcher{}, nil
}

func (m *Matcher) Stack(w io.Writer) bool {
	return true
}
