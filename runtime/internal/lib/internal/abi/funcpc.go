// Copyright 2023 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package abi

import _ "unsafe"

//go:linkname FuncPCABI0 llgo.funcPCABI0
func FuncPCABI0(f interface{}) uintptr

// llgo does not distinguish the ABI-specific entry-point query here.
// Reuse the same lowering as FuncPCABI0.
//
//go:linkname FuncPCABIInternal llgo.funcPCABI0
func FuncPCABIInternal(f interface{}) uintptr
