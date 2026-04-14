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
	"strings"
	"testing"

	"github.com/goplus/llvm"
)

func TestReadAndString(t *testing.T) {
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

	got := info.String()
	want := strings.TrimSpace(`
[UseIface]
github.com/goplus/llgo/demo.main:
    *_llgo_github.com/goplus/llgo/demo.File
    *_llgo_github.com/goplus/llgo/demo.Other

[UseIfaceMethod]
github.com/goplus/llgo/demo.consume:
    _llgo_github.com/goplus/llgo/demo.Reader Read _llgo_func$readsig

[InterfaceInfo]
_llgo_github.com/goplus/llgo/demo.Reader:
    Close _llgo_func$closesig
    Read _llgo_func$readsig

[MethodInfo]
*_llgo_github.com/goplus/llgo/demo.File:
    0 Read _llgo_func$readsig github.com/goplus/llgo/demo.(*File).Read github.com/goplus/llgo/demo.File.Read
    1 Close _llgo_func$closesig github.com/goplus/llgo/demo.(*File).Close github.com/goplus/llgo/demo.File.Close

[UseNamedMethod]
github.com/goplus/llgo/demo.lookup:
    ServeHTTP
    String

[ReflectMethod]
github.com/goplus/llgo/demo.reflectAll
`) + "\n"
	if got != want {
		t.Fatalf("semmeta string mismatch\n==> got:\n%s\n==> want:\n%s", got, want)
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
