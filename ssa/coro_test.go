//go:build !llgo
// +build !llgo

/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package ssa

import (
	"go/types"
	"os"
	"strings"
	"testing"
)

func TestCoroMode(t *testing.T) {
	// Test default mode (should be false)
	os.Unsetenv(EnvLLGoCoro)
	if IsLLVMCoroMode() {
		t.Fatal("IsLLVMCoroMode should be false by default")
	}

	// Test enabled mode
	os.Setenv(EnvLLGoCoro, "1")
	if !IsLLVMCoroMode() {
		t.Fatal("IsLLVMCoroMode should be true when LLGO_CORO=1")
	}

	// Test disabled mode
	os.Setenv(EnvLLGoCoro, "0")
	if IsLLVMCoroMode() {
		t.Fatal("IsLLVMCoroMode should be false when LLGO_CORO=0")
	}

	// Cleanup
	os.Unsetenv(EnvLLGoCoro)
}

func TestCoroNameHelpers(t *testing.T) {
	// Test CoroName
	if CoroName("foo") != "foo$coro" {
		t.Fatal("CoroName(foo) should be foo$coro")
	}

	// Test IsCoroName
	if !IsCoroName("foo$coro") {
		t.Fatal("IsCoroName should return true for foo$coro")
	}
	if IsCoroName("foo") {
		t.Fatal("IsCoroName should return false for foo")
	}
	if IsCoroName("$coro") {
		t.Fatal("IsCoroName should return false for just $coro")
	}

	// Test BaseNameFromCoro
	if BaseNameFromCoro("foo$coro") != "foo" {
		t.Fatal("BaseNameFromCoro(foo$coro) should be foo")
	}
	if BaseNameFromCoro("foo") != "foo" {
		t.Fatal("BaseNameFromCoro(foo) should be foo when not a coro name")
	}
}

func TestNewCoroFunc(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")

	// Create a simple function signature
	params := types.NewTuple(types.NewVar(0, nil, "x", types.Typ[types.Int]))
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)

	// Create coroutine version
	coroFn := pkg.NewCoroFunc("testfn", sig, InGo)

	// Verify the coroutine function was created
	if coroFn.OrigName != "testfn" {
		t.Fatalf("OrigName should be testfn, got %s", coroFn.OrigName)
	}
	if coroFn.OrigSig != sig {
		t.Fatal("OrigSig should be the original signature")
	}

	// Verify the function name ends with $coro
	if !strings.Contains(coroFn.Fn.impl.Name(), CoroSuffix) {
		t.Fatalf("Coroutine function name should contain %s", CoroSuffix)
	}

	// Verify the coro function has presplitcoroutine attribute in module output
	pkgStr := pkg.String()
	if !strings.Contains(pkgStr, "presplitcoroutine") {
		t.Fatalf("Coroutine function should have presplitcoroutine attribute in module:\n%s", pkgStr)
	}
}

func TestCoroSignature(t *testing.T) {
	prog := NewProgram(nil)

	// Create a signature with multiple params and returns
	params := types.NewTuple(
		types.NewVar(0, nil, "a", types.Typ[types.Int]),
		types.NewVar(0, nil, "b", types.Typ[types.String]),
	)
	rets := types.NewTuple(
		types.NewVar(0, nil, "", types.Typ[types.Int]),
		types.NewVar(0, nil, "", types.Typ[types.Bool]),
	)
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)

	// Convert to coro signature
	coroSig := makeCoroSignature(sig, prog)

	// Verify params are unchanged
	if coroSig.Params().Len() != 2 {
		t.Fatalf("Coro signature should have 2 params, got %d", coroSig.Params().Len())
	}

	// Verify return is ptr (handle)
	if coroSig.Results().Len() != 1 {
		t.Fatalf("Coro signature should have 1 return, got %d", coroSig.Results().Len())
	}
	retType := coroSig.Results().At(0).Type()
	if retType != prog.VoidPtr().raw.Type {
		t.Fatal("Coro signature return type should be unsafe.Pointer")
	}
}

func TestCoroIntrinsicSignatures(t *testing.T) {
	prog := NewProgram(nil)

	// Test tyCoroId
	coroIdSig := prog.tyCoroId()
	if coroIdSig.Params().Len() != 4 {
		t.Fatalf("tyCoroId should have 4 params, got %d", coroIdSig.Params().Len())
	}
	if coroIdSig.Results().Len() != 1 {
		t.Fatalf("tyCoroId should have 1 result, got %d", coroIdSig.Results().Len())
	}

	// Test tyCoroBegin
	coroBeginSig := prog.tyCoroBegin()
	if coroBeginSig.Params().Len() != 2 {
		t.Fatalf("tyCoroBegin should have 2 params, got %d", coroBeginSig.Params().Len())
	}
	if coroBeginSig.Results().Len() != 1 {
		t.Fatalf("tyCoroBegin should have 1 result, got %d", coroBeginSig.Results().Len())
	}

	// Test tyCoroSuspend
	coroSuspendSig := prog.tyCoroSuspend()
	if coroSuspendSig.Params().Len() != 2 {
		t.Fatalf("tyCoroSuspend should have 2 params, got %d", coroSuspendSig.Params().Len())
	}
	if coroSuspendSig.Results().Len() != 1 {
		t.Fatalf("tyCoroSuspend should have 1 result, got %d", coroSuspendSig.Results().Len())
	}

	// Test tyCoroEnd
	coroEndSig := prog.tyCoroEnd()
	if coroEndSig.Params().Len() != 2 {
		t.Fatalf("tyCoroEnd should have 2 params, got %d", coroEndSig.Params().Len())
	}
	if coroEndSig.Results().Len() != 1 {
		t.Fatalf("tyCoroEnd should have 1 result, got %d", coroEndSig.Results().Len())
	}

	// Test tyCoroResume
	coroResumeSig := prog.tyCoroResume()
	if coroResumeSig.Params().Len() != 1 {
		t.Fatalf("tyCoroResume should have 1 param, got %d", coroResumeSig.Params().Len())
	}
	if coroResumeSig.Results() != nil && coroResumeSig.Results().Len() != 0 {
		t.Fatal("tyCoroResume should have no results")
	}

	// Test tyCoroDestroy
	coroDestroySig := prog.tyCoroDestroy()
	if coroDestroySig.Params().Len() != 1 {
		t.Fatalf("tyCoroDestroy should have 1 param, got %d", coroDestroySig.Params().Len())
	}

	// Test tyCoroSize
	coroSizeSig := prog.tyCoroSize()
	if coroSizeSig.Params() != nil && coroSizeSig.Params().Len() != 0 {
		t.Fatal("tyCoroSize should have no params")
	}
	if coroSizeSig.Results().Len() != 1 {
		t.Fatalf("tyCoroSize should have 1 result, got %d", coroSizeSig.Results().Len())
	}

	// Test tyCoroAlloc
	coroAllocSig := prog.tyCoroAlloc()
	if coroAllocSig.Params().Len() != 1 {
		t.Fatalf("tyCoroAlloc should have 1 param, got %d", coroAllocSig.Params().Len())
	}
	if coroAllocSig.Results().Len() != 1 {
		t.Fatalf("tyCoroAlloc should have 1 result, got %d", coroAllocSig.Results().Len())
	}

	// Test tyCoroFree
	coroFreeSig := prog.tyCoroFree()
	if coroFreeSig.Params().Len() != 2 {
		t.Fatalf("tyCoroFree should have 2 params, got %d", coroFreeSig.Params().Len())
	}
	if coroFreeSig.Results().Len() != 1 {
		t.Fatalf("tyCoroFree should have 1 result, got %d", coroFreeSig.Results().Len())
	}
}

func TestCoroModeGlobal(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")

	// Get coro mode global (for non-amd64 fallback)
	modeGlobal := pkg.getCoroModeGlobal()
	if modeGlobal.impl.IsNil() {
		t.Fatal("Coro mode global should not be nil")
	}

	// Get again to test caching
	modeGlobal2 := pkg.getCoroModeGlobal()
	if modeGlobal.impl != modeGlobal2.impl {
		t.Fatal("Coro mode global should be cached")
	}
}
