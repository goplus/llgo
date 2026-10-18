// Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
// Licensed under the Apache License, Version 2.0.

package dwarfcompress

import (
	"bytes"
	"debug/macho"
	"encoding/binary"
	"fmt"
	"strings"
)

func compressMachO(raw []byte) ([]byte, error) {
	const mhDSYM = 0xa
	if len(raw) < 32 || binary.LittleEndian.Uint32(raw[12:]) != mhDSYM {
		return nil, fmt.Errorf("Mach-O DWARF compression requires a dSYM, not an executable or relocatable object")
	}
	ncmds, cmdsize := binary.LittleEndian.Uint32(raw[16:]), binary.LittleEndian.Uint32(raw[20:])
	if !inFile(raw, 32, uint64(cmdsize)) || uint64(ncmds)*8 > uint64(cmdsize) {
		return nil, fmt.Errorf("invalid Mach-O load commands")
	}
	if err := validateMachORanges(raw, ncmds, cmdsize); err != nil {
		return nil, err
	}
	f, err := macho.NewFile(bytes.NewReader(raw))
	if err != nil {
		return nil, err
	}
	defer f.Close()
	// Removing whole 16 KiB pages preserves both x86-64 and arm64 segment
	// alignment. Smaller gains still compress the section, but retain padding.
	const page = uint64(16384)
	var edits []edit
	sizes := make(map[uint32]uint64)
	names := make(map[string]bool)
	for _, s := range f.Sections {
		names[s.Seg+"/"+s.Name] = true
	}
	for _, s := range f.Sections {
		if s.Seg != "__DWARF" || !strings.HasPrefix(s.Name, "__debug_") || s.Size == 0 {
			names[s.Seg+"/"+s.Name] = true
			continue
		}
		if s.Nreloc != 0 || !inFile(raw, uint64(s.Offset), s.Size) || uint64(s.Offset) < 32+uint64(cmdsize) {
			return nil, fmt.Errorf("invalid or unrelocated Mach-O DWARF section %s", s.Name)
		}
		data := compressed(raw[uint64(s.Offset) : uint64(s.Offset)+s.Size])
		if data == nil {
			names[s.Seg+"/"+s.Name] = true
			continue
		}
		name := "__zdebug_" + strings.TrimPrefix(s.Name, "__debug_")
		if len(name) > 16 {
			name = name[:16]
		}
		if names[s.Seg+"/"+name] {
			return nil, fmt.Errorf("duplicate compressed Mach-O section %s", name)
		}
		names[s.Seg+"/"+name] = true
		sizes[s.Offset] = uint64(len(data))
		stored := s.Size - (s.Size-uint64(len(data)))/page*page
		data = append(data, make([]byte, int(stored)-len(data))...)
		edits = append(edits, edit{int(s.Offset), int(uint64(s.Offset) + s.Size), data})
	}
	if len(edits) == 0 {
		return raw, nil
	}
	l, err := newLayout(raw, edits)
	if err != nil {
		return nil, err
	}
	// dSYM symbols describe the original executable's addresses. Reject the
	// unusual case of symbols referring into the debug-only segment itself.
	if f.Symtab != nil {
		for _, s := range f.Symtab.Syms {
			if s.Sect != 0 && int(s.Sect) <= len(f.Sections) && f.Sections[s.Sect-1].Seg == "__DWARF" {
				return nil, fmt.Errorf("Mach-O symbol %s refers to a rewritten debug section", s.Name)
			}
		}
	}
	out := l.apply(raw)
	if len(out) >= len(raw) {
		return raw, nil
	}
	for pos, i := 32, uint32(0); i < ncmds; i++ {
		// validateMachORanges already checked the unchanged command sizes,
		// segment extents, section counts, and symbol-table command layouts.
		kind, size := binary.LittleEndian.Uint32(out[pos:]), int(binary.LittleEndian.Uint32(out[pos+4:]))
		switch kind {
		case 0x19: // LC_SEGMENT_64
			oldOff, oldSize := binary.LittleEndian.Uint64(out[pos+40:]), binary.LittleEndian.Uint64(out[pos+48:])
			newOff, err := l.offset(oldOff)
			if err != nil {
				return nil, err
			}
			end, err := l.offset(oldOff + oldSize)
			if err != nil || end < newOff || end-newOff > oldSize {
				return nil, fmt.Errorf("invalid Mach-O segment file range")
			}
			newSize := end - newOff
			binary.LittleEndian.PutUint64(out[pos+40:], newOff)
			binary.LittleEndian.PutUint64(out[pos+48:], newSize)
			if string(bytes.TrimRight(out[pos+8:pos+24], "\x00")) == "__DWARF" {
				vmSize := binary.LittleEndian.Uint64(out[pos+32:])
				if oldSize-newSize > vmSize {
					return nil, fmt.Errorf("Mach-O debug segment virtual size underflows")
				}
				binary.LittleEndian.PutUint64(out[pos+32:], vmSize-(oldSize-newSize))
			}
			nsect := binary.LittleEndian.Uint32(out[pos+64:])
			for j := uint32(0); j < nsect; j++ {
				p := pos + 72 + int(j)*80
				off := binary.LittleEndian.Uint32(out[p+48:])
				if off != 0 {
					next, err := l.offset(uint64(off))
					if err != nil {
						return nil, err
					}
					if string(bytes.TrimRight(out[p+16:p+32], "\x00")) == "__DWARF" {
						addr := binary.LittleEndian.Uint64(out[p+32:])
						shift := uint64(off) - next - (oldOff - newOff)
						if shift > addr {
							return nil, fmt.Errorf("Mach-O debug section address underflows")
						}
						binary.LittleEndian.PutUint64(out[p+32:], addr-shift)
					}
					binary.LittleEndian.PutUint32(out[p+48:], uint32(next))
				}
				if compressedSize, ok := sizes[off]; ok {
					name := "__zdebug_" + strings.TrimPrefix(string(bytes.TrimRight(out[p:p+16], "\x00")), "__debug_")
					clear(out[p : p+16])
					copy(out[p:p+16], name)
					binary.LittleEndian.PutUint64(out[p+40:], compressedSize)
				}
				if err := l.pointer32(out, p+56); err != nil {
					return nil, err
				}
			}
		case 0x2: // LC_SYMTAB
			for _, field := range []int{8, 16} {
				if err := l.pointer32(out, pos+field); err != nil {
					return nil, err
				}
			}
		case 0xb: // LC_DYSYMTAB
			for _, field := range []int{32, 40, 48, 56, 64, 72} {
				if err := l.pointer32(out, pos+field); err != nil {
					return nil, err
				}
			}
		case 0x26, 0x29, 0x1e, 0x2b, 0x2e, 0x33, 0x34: // linkedit_data_command
			if size != 16 {
				return nil, fmt.Errorf("invalid Mach-O linkedit data command")
			}
			if err := l.pointer32(out, pos+8); err != nil {
				return nil, err
			}
		case 0x31: // LC_NOTE
			if size != 40 {
				return nil, fmt.Errorf("invalid Mach-O note command")
			}
			if err := l.pointer64(out, pos+24); err != nil {
				return nil, err
			}
		case 0x1b, 0x32, 0x24, 0x25, 0x2f, 0x30, 0x2a: // UUID, build/minimum/source versions
			// These commands have no file offsets; preserve them verbatim.
		default:
			return nil, fmt.Errorf("unsupported Mach-O dSYM load command %#x", kind)
		}
		pos += size
	}
	if _, err := macho.NewFile(bytes.NewReader(out)); err != nil {
		return nil, fmt.Errorf("invalid compressed Mach-O: %w", err)
	}
	return out, nil
}

// Check sizes before debug/macho allocates tables from load-command counts.
// File-backed sections must be disjoint, including sections we do not rewrite.
func validateMachORanges(raw []byte, ncmds, cmdsize uint32) error {
	var spans []edit
	pos, end := 32, 32+int(cmdsize)
	for i := uint32(0); i < ncmds; i++ {
		if pos > end-8 {
			return fmt.Errorf("truncated Mach-O load command")
		}
		kind, size := binary.LittleEndian.Uint32(raw[pos:]), uint64(binary.LittleEndian.Uint32(raw[pos+4:]))
		if size < 8 || size > uint64(end-pos) {
			return fmt.Errorf("invalid Mach-O load command size")
		}
		switch kind {
		case 0x19:
			if size < 72 || uint64(binary.LittleEndian.Uint32(raw[pos+64:]))*80 > size-72 {
				return fmt.Errorf("truncated Mach-O segment sections")
			}
			segOff, segSize := binary.LittleEndian.Uint64(raw[pos+40:]), binary.LittleEndian.Uint64(raw[pos+48:])
			if !inFile(raw, segOff, segSize) {
				return fmt.Errorf("invalid Mach-O segment range")
			}
			for j := uint32(0); j < binary.LittleEndian.Uint32(raw[pos+64:]); j++ {
				p := pos + 72 + int(j)*80
				off, length := uint64(binary.LittleEndian.Uint32(raw[p+48:])), binary.LittleEndian.Uint64(raw[p+40:])
				reloff, nreloc := uint64(binary.LittleEndian.Uint32(raw[p+56:])), uint64(binary.LittleEndian.Uint32(raw[p+60:]))
				if !inFile(raw, reloff, nreloc*8) {
					return fmt.Errorf("invalid Mach-O relocation range")
				}
				if off == 0 || length == 0 {
					continue // dSYM code sections describe virtual addresses only.
				}
				if binary.LittleEndian.Uint32(raw[p+52:]) > 14 {
					return fmt.Errorf("unsupported Mach-O section alignment above 16 KiB")
				}
				if off < uint64(end) || !inFile(raw, off, length) || off < segOff || length > segSize || off-segOff > segSize-length {
					return fmt.Errorf("invalid Mach-O section range")
				}
				spans = append(spans, edit{start: int(off), end: int(off + length)})
			}
		case 0x2:
			if size != 24 || !inFile(raw, uint64(binary.LittleEndian.Uint32(raw[pos+8:])), uint64(binary.LittleEndian.Uint32(raw[pos+12:]))*16) ||
				!inFile(raw, uint64(binary.LittleEndian.Uint32(raw[pos+16:])), uint64(binary.LittleEndian.Uint32(raw[pos+20:]))) {
				return fmt.Errorf("invalid Mach-O symbol table range")
			}
			for _, field := range []struct{ off, count, unit int }{{8, 12, 16}, {16, 20, 1}} {
				off := uint64(binary.LittleEndian.Uint32(raw[pos+field.off:]))
				length := uint64(binary.LittleEndian.Uint32(raw[pos+field.count:])) * uint64(field.unit)
				if length != 0 {
					if off < uint64(end) {
						return fmt.Errorf("Mach-O symbol table overlaps load commands")
					}
					spans = append(spans, edit{start: int(off), end: int(off + length)})
				}
			}
		case 0xb:
			if size != 80 || !inFile(raw, uint64(binary.LittleEndian.Uint32(raw[pos+56:])), uint64(binary.LittleEndian.Uint32(raw[pos+60:]))*4) {
				return fmt.Errorf("invalid Mach-O indirect symbol table range")
			}
		case 0x1: // 32-bit segment commands do not belong in this layout.
			return fmt.Errorf("unsupported 32-bit Mach-O segment")
		}
		pos += int(size)
	}
	if pos != end {
		return fmt.Errorf("inconsistent Mach-O load command count")
	}
	_, err := newLayout(raw, spans)
	return err
}
