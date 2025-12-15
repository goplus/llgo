//go:build linux && go1.24

// Copyright 2024 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package poll

import "runtime"

// splicePipeFields contains the fields for a splice pipe.
// This type is extracted from splicePipe for use with runtime.AddCleanup.
type splicePipeFields struct {
	rfd  int
	wfd  int
	data int
}

// splicePipe is used for splice operations on Linux.
// It contains file descriptors and uses runtime.Cleanup for resource management.
type splicePipe struct {
	splicePipeFields
	cleanup runtime.Cleanup
}
