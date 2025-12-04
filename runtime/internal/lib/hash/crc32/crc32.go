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

package crc32

import (
	"encoding/binary"
	"errors"
	"hash"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/zlib"
)

// llgo:skipall
type _crc32 struct{}

// The size of a CRC-32 checksum in bytes.
const Size = 4

// Predefined polynomials.
const (
	// IEEE is by far and away the most common CRC-32 polynomial.
	// Used by ethernet (IEEE 802.3), v.42, fddi, gzip, zip, png, ...
	IEEE = 0xedb88320

	// Castagnoli's polynomial, used in iSCSI.
	// Has better error detection characteristics than IEEE.
	// https://dx.doi.org/10.1109/26.231911
	Castagnoli = 0x82f63b78

	// Koopman's polynomial.
	// Also has better error detection characteristics than IEEE.
	// https://dx.doi.org/10.1109/DSN.2002.1028931
	Koopman = 0xeb31d82e
)

// Table is a 256-word table representing the polynomial for efficient processing.
type Table [256]uint32

func simpleMakeTable(poly uint32) *Table {
	table := new(Table)
	for i := 0; i < 256; i++ {
		crc := uint32(i)
		for j := 0; j < 8; j++ {
			if crc&1 == 1 {
				crc = (crc >> 1) ^ poly
			} else {
				crc >>= 1
			}
		}
		table[i] = crc
	}
	return table
}

// IEEETable is the table for the IEEE polynomial.
var IEEETable *Table = simpleMakeTable(IEEE)

// MakeTable returns a Table constructed from the specified polynomial.
// The contents of this Table must not be modified.
func MakeTable(poly uint32) *Table {
	switch poly {
	case IEEE:
		return IEEETable
	case Castagnoli:
		return castagnoliTable
	case Koopman:
		return koopmanTable
	default:
		return simpleMakeTable(poly)
	}
}

var (
	castagnoliTable = simpleMakeTable(Castagnoli)
	koopmanTable    = simpleMakeTable(Koopman)
)

type digest struct {
	crc uint32
	tab *Table
}

func (d *digest) Size() int { return Size }

func (d *digest) BlockSize() int { return 1 }

func (d *digest) Reset() { d.crc = 0 }

func updateTable(crc uint32, tab *Table, p []byte) uint32 {
	if tab == nil {
		tab = IEEETable
	}
	if tab == IEEETable {
		return uint32(zlib.Crc32ZBytes(c.Ulong(crc), p))
	}
	return simpleUpdate(crc, tab, p)
}

func simpleUpdate(crc uint32, tab *Table, p []byte) uint32 {
	crc = ^crc
	for _, b := range p {
		crc = tab[byte(crc)^b] ^ (crc >> 8)
	}
	return ^crc
}

func (d *digest) Write(p []byte) (n int, err error) {
	d.crc = updateTable(d.crc, d.tab, p)
	return len(p), nil
}

func (d *digest) Sum32() uint32 { return d.crc }

func (d *digest) Sum(in []byte) []byte {
	s := d.Sum32()
	return append(in, byte(s>>24), byte(s>>16), byte(s>>8), byte(s))
}

const (
	marshaledMagic = "crc\x01"
	marshaledSize  = len(marshaledMagic) + 4 + 4
)

func tableSum(tab *Table) uint32 {
	if tab == nil {
		tab = IEEETable
	}
	buf := make([]byte, 0, len(*tab)*4)
	tmp := make([]byte, 4)
	for _, v := range tab {
		binary.BigEndian.PutUint32(tmp, v)
		buf = append(buf, tmp...)
	}
	return ChecksumIEEE(buf)
}

func (d *digest) ensureTable() *Table {
	if d.tab == nil {
		d.tab = IEEETable
	}
	return d.tab
}

func (d *digest) AppendBinary(b []byte) ([]byte, error) {
	tab := d.ensureTable()
	b = append(b, marshaledMagic...)
	tmp := make([]byte, 4)
	binary.BigEndian.PutUint32(tmp, tableSum(tab))
	b = append(b, tmp...)
	binary.BigEndian.PutUint32(tmp, d.crc)
	b = append(b, tmp...)
	return b, nil
}

func (d *digest) MarshalBinary() ([]byte, error) {
	return d.AppendBinary(make([]byte, 0, marshaledSize))
}

func (d *digest) UnmarshalBinary(b []byte) error {
	if len(b) != marshaledSize {
		return errors.New("hash/crc32: invalid hash state size")
	}
	if string(b[:len(marshaledMagic)]) != marshaledMagic {
		return errors.New("hash/crc32: invalid hash state identifier")
	}
	tab := d.ensureTable()
	if tableSum(tab) != binary.BigEndian.Uint32(b[4:8]) {
		return errors.New("hash/crc32: tables do not match")
	}
	d.crc = binary.BigEndian.Uint32(b[8:12])
	return nil
}

func New(tab *Table) hash.Hash32 {
	if tab == nil {
		tab = IEEETable
	}
	return &digest{tab: tab}
}

// NewIEEE creates a new hash.Hash32 computing the CRC-32 checksum using
// the IEEE polynomial. Its Sum method will lay the value out in
// big-endian byte order. The returned Hash32 also implements
// encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to marshal
// and unmarshal the internal state of the hash.
func NewIEEE() hash.Hash32 { return New(IEEETable) }

// Update returns the result of adding the bytes in p to the crc.
func Update(crc uint32, tab *Table, p []byte) uint32 {
	if tab == nil {
		tab = IEEETable
	}
	return updateTable(crc, tab, p)
}

// Checksum returns the CRC-32 checksum of data
// using the polynomial represented by the Table.
func Checksum(data []byte, tab *Table) uint32 { return Update(0, tab, data) }

// ChecksumIEEE returns the CRC-32 checksum of data
// using the IEEE polynomial.
func ChecksumIEEE(data []byte) uint32 {
	return uint32(zlib.Crc32ZBytes(0, data))
}
