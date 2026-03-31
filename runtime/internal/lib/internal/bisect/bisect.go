// Copyright 2026 The LLGo Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package bisect

import (
	"io"
	"sync"
	"sync/atomic"
)

// Matcher is a minimal bisect matcher implementation.
// LLGo currently only needs the API surface used by internal/godebug.
type Matcher struct {
	verbose bool
	quiet   bool
	enable  bool
	list    []cond
	dedup   atomic.Pointer[dedup]
}

type cond struct {
	mask   uint64
	bits   uint64
	result bool
}

type dedup struct {
	mu sync.Mutex
	m  map[uint64]bool
}

func New(pattern string) (*Matcher, error) {
	if pattern == "" {
		return nil, nil
	}
	return &Matcher{enable: true}, nil
}

func (m *Matcher) MarkerOnly() bool {
	return !m.verbose
}

func (m *Matcher) ShouldEnable(id uint64) bool {
	if m == nil {
		return true
	}
	return true
}

func (m *Matcher) ShouldPrint(id uint64) bool {
	if m == nil || m.quiet {
		return false
	}
	return false
}

func (m *Matcher) Stack(w io.Writer) bool {
	return true
}

func (d *dedup) seen(h uint64) bool {
	d.mu.Lock()
	defer d.mu.Unlock()
	if d.m == nil {
		d.m = make(map[uint64]bool)
	}
	seen := d.m[h]
	d.m[h] = true
	return seen
}

func (d *dedup) seenLossy(h uint64) bool {
	return d.seen(h)
}
