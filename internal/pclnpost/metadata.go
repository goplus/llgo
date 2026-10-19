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
	"fmt"

	"github.com/xgo-dev/llgo/internal/build/funcinfo"
	"github.com/xgo-dev/llgo/internal/pclnmap"
)

// These markers describe the optional embedded metadata carrier emitted by
// internal/build. All addresses are resolved by the linker, including after
// LTO internalization. The header and discovery rows disappear on rewrite.
const (
	MetadataRecordMagic = uint64(0x31434d4f474c4c)   // "LLGOMC1"
	MetadataHeaderMagic = uint64(0x3130444d4f474c4c) // "LLGOMD01"
	metadataGlobalCount = 12
)

// Header slots are addresses of runtime ABI globals, not their values:
// table, count, pclines, pcline count, strings, string offsets, string count,
// hash, hash mask, symbol index, symbol index count, entry end.
type compactMetadata struct {
	globals [metadataGlobalCount]uint64
	table   funcinfo.Table
	index   []symIndexEntry
}

func checkedVM(info *binaryInfo, addr, size uint64) ([]byte, error) {
	for _, sec := range info.secs {
		if addr >= sec.vmaddr && addr-sec.vmaddr <= sec.size && size <= sec.size-(addr-sec.vmaddr) {
			off := sec.fileOff + addr - sec.vmaddr
			if sectionInFile(info.raw, off, size) {
				return info.raw[off : off+size], nil
			}
		}
	}
	return nil, fmt.Errorf("metadata range [%#x,+%#x) is not file-backed", addr, size)
}

func metadataArray(info *binaryInfo, addr, count, stride uint64) ([]byte, error) {
	// All variable-size metadata belongs to the reclaimable carrier. Check
	// before multiplication/allocation, including zero-sized table pointers.
	if count == 0 {
		return nil, nil
	}
	if count > info.entryVMSize/stride || addr < info.entryVMAddr ||
		addr-info.entryVMAddr > info.entryVMSize || count*stride > info.entryVMSize-(addr-info.entryVMAddr) {
		return nil, fmt.Errorf("metadata array [%#x,%d*%d) is outside carrier", addr, count, stride)
	}
	return checkedVM(info, addr, count*stride)
}

// discoverCompactMetadata also limits entrySec to the original site prefix.
// Runtime uses the same end boundary, so a failed rewrite retains a working
// fallback and never interprets payload words as function entry records.
func discoverCompactMetadata(info *binaryInfo) error {
	if len(info.entrySec) >= 8 && binary.LittleEndian.Uint64(info.entrySec) == prebuiltMagic {
		return nil
	}
	for off := 0; off+32 <= len(info.entrySec); off += 16 {
		row := info.entrySec[off:]
		if binary.LittleEndian.Uint64(row) != 0 || binary.LittleEndian.Uint64(row[8:]) != MetadataRecordMagic {
			continue
		}
		if info.metadata != nil || binary.LittleEndian.Uint64(row[24:]) != 0 {
			return fmt.Errorf("invalid duplicate metadata discovery record")
		}
		headerAddr := binary.LittleEndian.Uint64(row[16:])
		header, err := metadataArray(info, headerAddr, metadataGlobalCount+1, 8)
		if err != nil {
			return err
		}
		if binary.LittleEndian.Uint64(header) != MetadataHeaderMagic {
			return fmt.Errorf("invalid compact metadata header")
		}
		m := new(compactMetadata)
		var values [metadataGlobalCount]uint64
		for i := range m.globals {
			addr := binary.LittleEndian.Uint64(header[8+8*i:])
			if addr%8 != 0 || (addr >= info.entryVMAddr && addr-info.entryVMAddr < info.entryVMSize) {
				return fmt.Errorf("invalid metadata ABI global address %#x", addr)
			}
			data, err := checkedVM(info, addr, 8)
			if err != nil {
				return err
			}
			m.globals[i], values[i] = addr, binary.LittleEndian.Uint64(data)
		}
		end := values[11]
		if end < info.entryVMAddr+uint64(off+32) || end > headerAddr || (end-info.entryVMAddr)%16 != 0 {
			return fmt.Errorf("invalid metadata sites-end boundary %#x", end)
		}
		if err := m.decode(info, values); err != nil {
			return err
		}
		info.entrySec = info.entrySec[:end-info.entryVMAddr]
		info.metadata = m
	}
	return nil
}

func (m *compactMetadata) decode(info *binaryInfo, v [metadataGlobalCount]uint64) error {
	records, err := metadataArray(info, v[0], v[1], funcinfo.EncodedRecordSize)
	if err != nil {
		return err
	}
	pcLines, err := metadataArray(info, v[2], v[3], funcinfo.EncodedPCLineRecordSize)
	if err != nil {
		return err
	}
	offsets, err := metadataArray(info, v[5], v[6], 4)
	if err != nil {
		return err
	}
	index, err := metadataArray(info, v[9], v[10], 16)
	if err != nil {
		return err
	}
	t := &m.table
	t.Records = make([]funcinfo.EncodedRecord, v[1])
	t.PCLines = make([]funcinfo.EncodedPCLineRecord, v[3])
	t.StringOffsets = make([]uint32, v[6])
	for _, item := range []struct {
		raw []byte
		dst any
	}{{records, &t.Records}, {pcLines, &t.PCLines}, {offsets, &t.StringOffsets}} {
		if err := binary.Read(bytes.NewReader(item.raw), binary.LittleEndian, item.dst); err != nil {
			return err
		}
	}
	if v[4] < info.entryVMAddr || v[4]-info.entryVMAddr > info.entryVMSize {
		return fmt.Errorf("metadata strings are outside carrier")
	}
	strings, err := checkedVM(info, v[4], info.entryVMSize-(v[4]-info.entryVMAddr))
	if err != nil {
		return err
	}
	end := 0
	for _, off := range t.StringOffsets {
		if uint64(off) >= uint64(len(strings)) {
			return fmt.Errorf("metadata string offset %d is out of bounds", off)
		}
		n := bytes.IndexByte(strings[off:], 0)
		if n < 0 {
			return fmt.Errorf("unterminated metadata string")
		}
		end = max(end, int(off)+n+1)
	}
	t.Strings = strings[:end]
	validStrings := func(ids ...uint32) bool {
		for _, id := range ids {
			if uint64(id) >= uint64(len(t.StringOffsets)) {
				return false
			}
		}
		return true
	}
	for _, rec := range t.Records {
		if !validStrings(rec.SymbolPkg, rec.SymbolName, rec.NamePkg, rec.NameName, rec.FileRoot, rec.FileName) {
			return fmt.Errorf("invalid string ID in function metadata")
		}
	}
	for _, rec := range t.PCLines {
		if rec.Func == 0 || uint64(rec.Func) > uint64(len(t.Records)) || !validStrings(rec.FileRoot, rec.FileName) {
			return fmt.Errorf("invalid function or string ID in PC-line metadata")
		}
	}
	for off := 0; off < len(index); off += 16 {
		r := symIndexEntry{binary.LittleEndian.Uint64(index[off:]), binary.LittleEndian.Uint32(index[off+8:])}
		if r.idx == 0 || uint64(r.idx) > uint64(len(t.Records)) || (len(m.index) != 0 && m.index[len(m.index)-1].id >= r.id) || fnv64(t.Symbol(t.Records[r.idx-1])) != r.id {
			return fmt.Errorf("invalid metadata symbol index")
		}
		m.index = append(m.index, r)
	}
	return nil
}

func (m *compactMetadata) compact(kept []siteRecord, pcSites []siteRecord) (*compactMetadata, error) {
	data := pclnmap.Data{Table: m.table}
	for _, entry := range m.index {
		data.SymbolIndex = append(data.SymbolIndex, pclnmap.SymbolIndexEntry{SymbolID: entry.id, FuncIndex: entry.idx})
	}
	for _, entry := range kept {
		// Native entry sites can include symbols outside the Go catalog.
		// Match the relink path's join policy before invoking the shared pruner.
		if _, ok := lookupSymIndex(m.index, entry.symbolID); ok {
			data.EntrySites = append(data.EntrySites, pclnmap.Site{PCOffset: entry.pc, ID: entry.symbolID})
		}
	}
	for _, site := range pcSites {
		// These physical PC sites remain in the executable and are consumed
		// by the runtime. Preserve every referenced owner, including inlined
		// functions with no entry site of their own.
		data.PCSites = append(data.PCSites, pclnmap.Site{PCOffset: site.pc, ID: site.symbolID})
	}
	pruned, err := pclnmap.Prune(data)
	if err != nil {
		return nil, err
	}
	out := &compactMetadata{globals: m.globals, table: pruned.Table}
	for _, entry := range pruned.SymbolIndex {
		out.index = append(out.index, symIndexEntry{entry.SymbolID, entry.FuncIndex})
	}
	return out, nil
}

// appendPayload lays out the rebuilt arrays behind the prebuilt entry table
// and returns the new values of the runtime ABI globals. No retained payload
// contains absolute pointers, so its interior can be freely relocated.
func (m *compactMetadata) appendPayload(blob []byte, base uint64) ([]byte, [metadataGlobalCount]uint64, error) {
	var values [metadataGlobalCount]uint64
	values[11] = base + uint64(len(blob))
	appendArray := func(slot int, data any, empty bool) error {
		if empty {
			return nil
		}
		for len(blob)%8 != 0 {
			blob = append(blob, 0)
		}
		values[slot] = base + uint64(len(blob))
		var b bytes.Buffer
		if err := binary.Write(&b, binary.LittleEndian, data); err != nil {
			return err
		}
		blob = append(blob, b.Bytes()...)
		return nil
	}
	t := &m.table
	for _, item := range []struct {
		slot  int
		data  any
		empty bool
	}{
		{0, t.Records, len(t.Records) == 0}, {2, t.PCLines, len(t.PCLines) == 0},
		{4, t.Strings, len(t.Strings) == 0}, {5, t.StringOffsets, len(t.StringOffsets) == 0}, {7, t.Hash, len(t.Hash) == 0},
	} {
		if err := appendArray(item.slot, item.data, item.empty); err != nil {
			return nil, values, err
		}
	}
	index := make([]struct {
		ID             uint64
		Index, Padding uint32
	}, len(m.index))
	for i, r := range m.index {
		index[i].ID, index[i].Index = r.id, r.idx
	}
	if err := appendArray(9, index, len(index) == 0); err != nil {
		return nil, values, err
	}
	values[1], values[3], values[6], values[10] = uint64(len(t.Records)), uint64(len(t.PCLines)), uint64(len(t.StringOffsets)), uint64(len(index))
	if len(t.Hash) != 0 {
		values[8] = uint64(len(t.Hash) - 1)
	}
	return blob, values, nil
}

func patchMetadataGlobals(raw []byte, info *binaryInfo, m *compactMetadata, values [metadataGlobalCount]uint64) error {
	staged := *info
	staged.raw = raw
	for i, addr := range m.globals {
		data, err := checkedVM(&staged, addr, 8)
		if err != nil {
			return err
		}
		binary.LittleEndian.PutUint64(data, values[i])
	}
	return nil
}
