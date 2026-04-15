/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
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

package semmeta

import (
	"testing"

	"github.com/goplus/llvm"
)

func TestRead(t *testing.T) {
	ctx := llvm.NewContext()
	defer ctx.Dispose()

	mod := ctx.NewModule("semmeta.test")
	defer mod.Dispose()

	addRow(mod, useIfaceMetadata,
		ctx.MDString("github.com/goplus/llgo/demo.main"),
		ctx.MDString("*_llgo_github.com/goplus/llgo/demo.Other"),
	)
	addRow(mod, useIfaceMetadata,
		ctx.MDString("github.com/goplus/llgo/demo.main"),
		ctx.MDString("*_llgo_github.com/goplus/llgo/demo.File"),
	)
	addRow(mod, useIfaceMethodMetadata,
		ctx.MDString("github.com/goplus/llgo/demo.consume"),
		ctx.MDString("_llgo_github.com/goplus/llgo/demo.Reader"),
		ctx.MDString("Read"),
		ctx.MDString("_llgo_func$readsig"),
	)
	addRow(mod, interfaceInfoMetadata,
		ctx.MDString("_llgo_github.com/goplus/llgo/demo.Reader"),
		ctx.MDString("Close"),
		ctx.MDString("_llgo_func$closesig"),
	)
	addRow(mod, interfaceInfoMetadata,
		ctx.MDString("_llgo_github.com/goplus/llgo/demo.Reader"),
		ctx.MDString("Read"),
		ctx.MDString("_llgo_func$readsig"),
	)
	addRow(mod, methodInfoMetadata,
		ctx.MDString("*_llgo_github.com/goplus/llgo/demo.File"),
		llvm.ConstInt(ctx.Int32Type(), 1, false).ConstantAsMetadata(),
		ctx.MDString("Close"),
		ctx.MDString("_llgo_func$closesig"),
		ctx.MDString("github.com/goplus/llgo/demo.(*File).Close"),
		ctx.MDString("github.com/goplus/llgo/demo.File.Close"),
	)
	addRow(mod, methodInfoMetadata,
		ctx.MDString("*_llgo_github.com/goplus/llgo/demo.File"),
		llvm.ConstInt(ctx.Int32Type(), 0, false).ConstantAsMetadata(),
		ctx.MDString("Read"),
		ctx.MDString("_llgo_func$readsig"),
		ctx.MDString("github.com/goplus/llgo/demo.(*File).Read"),
		ctx.MDString("github.com/goplus/llgo/demo.File.Read"),
	)
	addRow(mod, useNamedMethodMetadata,
		ctx.MDString("github.com/goplus/llgo/demo.lookup"),
		ctx.MDString("String"),
	)
	addRow(mod, useNamedMethodMetadata,
		ctx.MDString("github.com/goplus/llgo/demo.lookup"),
		ctx.MDString("ServeHTTP"),
	)
	addRow(mod, reflectMethodMetadata,
		ctx.MDString("github.com/goplus/llgo/demo.reflectAll"),
	)

	info, err := Read(mod)
	if err != nil {
		t.Fatal(err)
	}
	if got := info.UseIface[Symbol("github.com/goplus/llgo/demo.main")]; len(got) != 2 ||
		got[0] != "*_llgo_github.com/goplus/llgo/demo.Other" ||
		got[1] != "*_llgo_github.com/goplus/llgo/demo.File" {
		t.Fatalf("UseIface mismatch: %#v", got)
	}
	if got := info.UseIfaceMethod[Symbol("github.com/goplus/llgo/demo.consume")]; len(got) != 1 ||
		got[0].Target != "_llgo_github.com/goplus/llgo/demo.Reader" ||
		got[0].Sig.Name != "Read" ||
		got[0].Sig.MType != "_llgo_func$readsig" {
		t.Fatalf("UseIfaceMethod mismatch: %#v", got)
	}
	if got := info.InterfaceInfo[Symbol("_llgo_github.com/goplus/llgo/demo.Reader")]; len(got) != 2 ||
		got[0].Name != "Close" || got[0].MType != "_llgo_func$closesig" ||
		got[1].Name != "Read" || got[1].MType != "_llgo_func$readsig" {
		t.Fatalf("InterfaceInfo mismatch: %#v", got)
	}
	if got := info.MethodInfo[Symbol("*_llgo_github.com/goplus/llgo/demo.File")]; len(got) != 2 ||
		got[0].Index != 1 || got[0].Sig.Name != "Close" ||
		got[1].Index != 0 || got[1].Sig.Name != "Read" {
		t.Fatalf("MethodInfo mismatch: %#v", got)
	}
	if got := info.UseNamedMethod[Symbol("github.com/goplus/llgo/demo.lookup")]; len(got) != 2 ||
		got[0] != "String" || got[1] != "ServeHTTP" {
		t.Fatalf("UseNamedMethod mismatch: %#v", got)
	}
	if _, ok := info.ReflectMethod[Symbol("github.com/goplus/llgo/demo.reflectAll")]; !ok {
		t.Fatal("ReflectMethod entry missing")
	}
}

func TestReadRejectsBadRowShape(t *testing.T) {
	ctx := llvm.NewContext()
	defer ctx.Dispose()

	mod := ctx.NewModule("semmeta.bad")
	defer mod.Dispose()

	addRow(mod, methodInfoMetadata,
		ctx.MDString("*_llgo_github.com/goplus/llgo/demo.File"),
		ctx.MDString("wrong-index-kind"),
		ctx.MDString("Read"),
		ctx.MDString("_llgo_func$readsig"),
		ctx.MDString("github.com/goplus/llgo/demo.(*File).Read"),
		ctx.MDString("github.com/goplus/llgo/demo.File.Read"),
	)

	if _, err := Read(mod); err == nil {
		t.Fatal("Read should fail on malformed metadata")
	}
}

func addRow(mod llvm.Module, table string, fields ...llvm.Metadata) {
	mod.AddNamedMetadataOperand(table, mod.Context().MDNode(fields))
}
