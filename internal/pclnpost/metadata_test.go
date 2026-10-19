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

package pclnpost

import (
	"bytes"
	"encoding/binary"
	"sort"
	"strings"
	"testing"

	"github.com/xgo-dev/llgo/internal/build/funcinfo"
)

func metadataFixture(t *testing.T) *compactMetadata {
	t.Helper()
	records := []funcinfo.Record{
		{Symbol: "pkg.Dead", Name: "pkg.Dead", File: "/dead/only.go", Line: 11},
		{Symbol: "pkg.Live", Name: "pkg.Live", File: "/src/live.go", Line: 22},
		{Symbol: "pkg.Inlined", Name: "pkg.Inlined", File: "/src/inline.go", Line: 33, Flags: funcinfo.RecordFlagWrapper},
		{Symbol: "pkg.UnusedLine", Name: "pkg.UnusedLine", File: "/unused/only.go", Line: 44},
	}
	table, err := funcinfo.EncodeWithPCLines(records, []funcinfo.PCLineRecord{
		{ID: 17, Symbol: "pkg.Inlined", File: "/src/inline.go", Line: 34},
		{ID: 19, Symbol: "pkg.UnusedLine", File: "/unused/only.go", Line: 45},
	})
	if err != nil {
		t.Fatal(err)
	}
	m := &compactMetadata{table: table}
	for i, r := range records {
		m.index = append(m.index, symIndexEntry{fnv64(r.Symbol), uint32(i + 1)})
	}
	sort.Slice(m.index, func(i, j int) bool { return m.index[i].id < m.index[j].id })
	return m
}

func TestCompactMetadataRetainsInlineOwnersAndRemapsIndexes(t *testing.T) {
	m := metadataFixture(t)
	out, err := m.compact([]siteRecord{{pc: 0x1010, symbolID: fnv64("pkg.Live")}}, []siteRecord{{pc: 0x1014, symbolID: 17}})
	if err != nil {
		t.Fatal(err)
	}
	if len(out.table.Records) != 2 || len(out.table.PCLines) != 1 {
		t.Fatalf("records=%d pclines=%d", len(out.table.Records), len(out.table.PCLines))
	}
	for _, name := range []string{"pkg.Live", "pkg.Inlined"} {
		i, ok := out.table.LookupSymbol(name)
		if !ok {
			t.Fatalf("lost %s", name)
		}
		idx, ok := lookupSymIndex(out.index, fnv64(name))
		if !ok || idx != uint32(i+1) {
			t.Fatalf("bad remap for %s: %d", name, idx)
		}
	}
	inline := out.table.Records[out.table.PCLines[0].Func-1]
	if out.table.Symbol(inline) != "pkg.Inlined" || inline.Line&funcinfo.EncodedLineWrapper == 0 || out.table.PCLineFile(out.table.PCLines[0]) != "/src/inline.go" || out.table.PCLines[0].Line != 34 {
		t.Fatalf("inline source metadata changed: %+v", out.table)
	}
	for _, dead := range []string{"Dead", "UnusedLine", "/dead/", "/unused/"} {
		if bytes.Contains(out.table.Strings, []byte(dead)) {
			t.Fatalf("dead metadata remains: %s", dead)
		}
	}
	if len(m.table.Records) != 4 {
		t.Fatal("input mutated")
	}
}

func TestCompactMetadataRejectsMissingLivePCRecord(t *testing.T) {
	_, err := metadataFixture(t).compact(nil, []siteRecord{{pc: 0x1014, symbolID: 999}})
	if err == nil {
		t.Fatal("missing live PC metadata accepted")
	}
}

// This synthetic address space exercises the actual carrier discovery and
// decoding path, including payload words which resemble valid entry sites.
func metadataImage(t *testing.T) *binaryInfo {
	t.Helper()
	m := metadataFixture(t)
	const base = uint64(0x20000)
	const dataBase = uint64(0x10000)
	sites := append(rec(0, MetadataRecordMagic), rec(base+0x100, 0)...)
	sites = append(sites, rec(0x1010, fnv64("pkg.Live"))...)
	blob := append([]byte(nil), sites...)
	blob = append(blob, make([]byte, 0x100-len(blob))...)
	headerOff := len(blob)
	blob = append(blob, make([]byte, 8*(metadataGlobalCount+1))...)
	blob, values, err := m.appendPayload(blob, base)
	if err != nil {
		t.Fatal(err)
	}
	values[11] = base + uint64(len(sites))
	binary.LittleEndian.PutUint64(blob[headerOff:], MetadataHeaderMagic)
	data := make([]byte, 8*metadataGlobalCount)
	for i, value := range values {
		binary.LittleEndian.PutUint64(data[i*8:], value)
		binary.LittleEndian.PutUint64(blob[headerOff+8+i*8:], dataBase+uint64(i*8))
	}
	raw := append(data, blob...)
	return &binaryInfo{format: "elf", raw: raw, entrySec: raw[len(data):], entryVMAddr: base, entryVMSize: uint64(len(blob)), entryFileOff: uint64(len(data)),
		secs: []secInfo{{vmaddr: dataBase, size: uint64(len(data)), fileOff: 0}, {vmaddr: base, size: uint64(len(blob)), fileOff: uint64(len(data))}}}
}

func TestDiscoverCompactMetadataBoundsEntrySites(t *testing.T) {
	info := metadataImage(t)
	if err := discoverCompactMetadata(info); err != nil {
		t.Fatal(err)
	}
	if len(info.entrySec) != 48 || info.metadata == nil || len(info.metadata.table.Records) != 4 {
		t.Fatalf("discovery failed: entries=%d metadata=%v", len(info.entrySec), info.metadata)
	}
	if got := info.metadata.table.Symbol(info.metadata.table.Records[2]); got != "pkg.Inlined" {
		t.Fatalf("decoded symbol %q", got)
	}
}

func TestDiscoverCompactMetadataRejectsCorruption(t *testing.T) {
	for _, tc := range []struct {
		name   string
		mutate func(*binaryInfo)
	}{
		{"huge count", func(i *binaryInfo) { binary.LittleEndian.PutUint64(i.raw[8:], ^uint64(0)) }},
		{"outside array", func(i *binaryInfo) { binary.LittleEndian.PutUint64(i.raw, 0xdeadbeef) }},
		{"bad end", func(i *binaryInfo) { binary.LittleEndian.PutUint64(i.raw[11*8:], i.entryVMAddr+8) }},
		{"bad string", func(i *binaryInfo) {
			addr := binary.LittleEndian.Uint64(i.raw[5*8:])
			data, _ := checkedVM(i, addr, 4)
			binary.LittleEndian.PutUint32(data, ^uint32(0))
		}},
	} {
		t.Run(tc.name, func(t *testing.T) {
			info := metadataImage(t)
			tc.mutate(info)
			before := bytes.Clone(info.raw)
			if err := discoverCompactMetadata(info); err == nil {
				t.Fatal("corrupt metadata accepted")
			}
			if !bytes.Equal(before, info.raw) {
				t.Fatal("input changed on failure")
			}
		})
	}
}

func TestMetadataPayloadRoundTripAfterCompaction(t *testing.T) {
	info := metadataImage(t)
	if err := discoverCompactMetadata(info); err != nil {
		t.Fatal(err)
	}
	m, err := info.metadata.compact([]siteRecord{{pc: 0x1010, symbolID: fnv64("pkg.Live")}}, []siteRecord{{pc: 0x1014, symbolID: 17}})
	if err != nil {
		t.Fatal(err)
	}
	blob, values, err := m.appendPayload(make([]byte, 64), info.entryVMAddr)
	if err != nil {
		t.Fatal(err)
	}
	copy(info.raw[info.entryFileOff:], blob)
	if err := patchMetadataGlobals(info.raw, info, m, values); err != nil {
		t.Fatal(err)
	}
	var decoded compactMetadata
	if err := decoded.decode(info, values); err != nil {
		t.Fatal(err)
	}
	if len(decoded.table.Records) != 2 || strings.Contains(string(decoded.table.Strings), "Dead") {
		t.Fatalf("bad round trip: %+v", decoded.table)
	}
}
