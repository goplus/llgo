// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build unix

package exec

const (
	unix_R_OK = 0x4
	unix_W_OK = 0x2
	unix_X_OK = 0x1
)
