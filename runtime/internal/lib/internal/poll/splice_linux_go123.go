//go:build linux && !go1.24

// Copyright 2024 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package poll

// splicePipeFields contains the fields for a splice pipe.
type splicePipeFields struct {
	rfd  int
	wfd  int
	data int
}

// splicePipe is used for splice operations on Linux.
// For Go < 1.24, this doesn't include the cleanup field.
type splicePipe struct {
	splicePipeFields
}
