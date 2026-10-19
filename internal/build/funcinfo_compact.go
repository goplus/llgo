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

package build

import (
	"github.com/xgo-dev/llgo/internal/pclnpost"
	"github.com/xgo-dev/llvm"
)

// The first implementation uses the existing ELF64 non-PIE carrier. Other
// targets and library modes keep their established metadata layout.
func shouldCompactFuncInfo(ctx *context) bool {
	return ctx != nil && ctx.buildConf != nil &&
		ctx.buildConf.Goos == "linux" && ctx.buildConf.Target == "" &&
		(ctx.buildConf.Goarch == "amd64" || ctx.buildConf.Goarch == "arm64") &&
		ctx.buildConf.BuildMode == BuildModeExe && ctx.buildConf.PCLNMode == PCLNEmbedded &&
		shouldEmitRuntimeEntrySites(ctx)
}

// All payload arrays follow the raw sites in the same linker output section.
// The separate sites-end boundary keeps the unrewritten image fully usable.
// pclnpost can rebuild both tables into this carrier and reclaim its suffix
// without moving code or changing any loadable virtual address.
func prepareCompactFuncInfo(ctx *context, mod llvm.Module) {
	if !shouldCompactFuncInfo(ctx) {
		return
	}
	for _, name := range []string{
		funcInfoDataSymbol, pcLineDataSymbol, funcInfoStringsDataSymbol,
		funcInfoStringOffsetsDataSymbol, funcInfoHashDataSymbol, funcInfoSymbolIndexDataSymbol,
	} {
		if global := mod.NamedGlobal(name); !global.IsNil() {
			global.SetSection(".llgo_funcinfo_payload")
			global.SetUnnamedAddr(false)
		}
	}
	// Order is the link-phase metadata ABI in pclnpost/metadata.go.
	names := []string{
		funcInfoTableSymbol, funcInfoCountSymbol, pcLineTableSymbol, pcLineCountSymbol,
		funcInfoStringsSymbol, funcInfoStringOffsetsSymbol, funcInfoStringCountSymbol,
		funcInfoHashSymbol, funcInfoHashMaskSymbol,
		funcInfoSymbolIndexSymbol, funcInfoSymbolIndexCountSymbol, funcInfoEntryEndPtrSymbol,
	}
	llvmCtx := mod.Context()
	i64 := llvmCtx.Int64Type()
	ptr := llvm.PointerType(llvmCtx.Int8Type(), 0)
	values := []llvm.Value{llvm.ConstInt(i64, pclnpost.MetadataHeaderMagic, false)}
	types := []llvm.Type{i64}
	for _, name := range names {
		global := mod.NamedGlobal(name)
		setFuncInfoExternallyInitialized(global)
		values = append(values, global)
		types = append(types, ptr)
	}
	end := llvm.AddGlobal(mod, llvmCtx.Int8Type(), "__llgo_funcinfo_sites_end")
	mod.NamedGlobal(funcInfoEntryEndPtrSymbol).SetInitializer(end)
	headerType := llvmCtx.StructType(types, false)
	header := llvm.AddGlobal(mod, headerType, "__llgo_funcinfo_compact_header")
	header.SetInitializer(llvm.ConstNamedStruct(headerType, values))
	header.SetSection(".llgo_funcinfo_payload")
	header.SetAlignment(8)
	header.SetLinkage(llvm.PrivateLinkage)
	// Like the old symbol-index discovery record, these rows have pc==0 or
	// id==0 and are ignored by runtime entry scanning and reachability.
	markerType := llvmCtx.StructType([]llvm.Type{i64, i64, ptr, i64}, false)
	marker := llvm.AddGlobal(mod, markerType, "__llgo_funcinfo_compact_marker")
	marker.SetInitializer(llvm.ConstNamedStruct(markerType, []llvm.Value{
		llvm.ConstInt(i64, 0, false), llvm.ConstInt(i64, pclnpost.MetadataRecordMagic, false),
		header, llvm.ConstInt(i64, 0, false),
	}))
	marker.SetSection("llgo_funcinfo_entry")
	marker.SetAlignment(8)
	marker.SetLinkage(llvm.PrivateLinkage)
	appendLLVMUsed(mod, marker)
}
