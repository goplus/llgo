// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Package crc32 implements the 32-bit cyclic redundancy check, or CRC-32,
// checksum. See https://en.wikipedia.org/wiki/Cyclic_redundancy_check for
// information.
//
// This is an llgo overlay of the standard library package. It intentionally
// uses the generic (non-assembly) algorithms to avoid depending on Go/Plan 9
// assembler support for this package.
package crc32

import (
	"errors"
	"hash"
	"sync"
)

// The size of a CRC-32 checksum in bytes.
const Size = 4

// llgo:skipall
type _llgo_skipall struct{}

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

var (
	// IEEETable is the table for the IEEE polynomial.
	IEEETable = simpleMakeTable(IEEE)

	ieeeOnce   sync.Once
	ieeeTable8 *slicing8Table

	castagnoliOnce   sync.Once
	castagnoliTable  *Table
	castagnoliTable8 *slicing8Table
)

// MakeTable returns a Table constructed from the specified polynomial.
// The contents of this Table must not be modified.
func MakeTable(poly uint32) *Table {
	switch poly {
	case IEEE:
		return IEEETable
	case Castagnoli:
		castagnoliOnce.Do(func() {
			castagnoliTable = simpleMakeTable(Castagnoli)
			castagnoliTable8 = slicingMakeTable(Castagnoli)
		})
		return castagnoliTable
	default:
		return simpleMakeTable(poly)
	}
}

func initIEEE() {
	ieeeOnce.Do(func() {
		ieeeTable8 = slicingMakeTable(IEEE)
	})
}

// Update returns the result of adding the bytes in p to the crc.
func Update(crc uint32, tab *Table, p []byte) uint32 {
	switch {
	case tab == IEEETable:
		initIEEE()
		return slicingUpdate(crc, ieeeTable8, p)
	case castagnoliTable != nil && tab == castagnoliTable:
		return slicingUpdate(crc, castagnoliTable8, p)
	default:
		return simpleUpdate(crc, tab, p)
	}
}

// Checksum returns the CRC-32 checksum of data using the polynomial represented
// by the Table.
func Checksum(data []byte, tab *Table) uint32 { return Update(0, tab, data) }

// ChecksumIEEE returns the CRC-32 checksum of data using the IEEE polynomial.
func ChecksumIEEE(data []byte) uint32 {
	initIEEE()
	return slicingUpdate(0, ieeeTable8, data)
}

// digest represents the partial evaluation of a checksum.
type digest struct {
	crc uint32
	tab *Table
}

// New creates a new hash.Hash32 computing the CRC-32 checksum using the
// polynomial represented by the Table. Its Sum method will lay the value out
// in big-endian byte order. The returned Hash32 also implements
// encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to marshal and
// unmarshal the internal state of the hash.
func New(tab *Table) hash.Hash32 {
	if tab == IEEETable {
		initIEEE()
	}
	return &digest{0, tab}
}

// NewIEEE creates a new hash.Hash32 computing the CRC-32 checksum using
// the IEEE polynomial.
func NewIEEE() hash.Hash32 { return New(IEEETable) }

func (d *digest) Size() int      { return Size }
func (d *digest) BlockSize() int { return 1 }
func (d *digest) Reset()         { d.crc = 0 }

func (d *digest) Write(p []byte) (n int, err error) {
	d.crc = Update(d.crc, d.tab, p)
	return len(p), nil
}

func (d *digest) Sum32() uint32 { return d.crc }

func (d *digest) Sum(in []byte) []byte {
	s := d.Sum32()
	return append(in, byte(s>>24), byte(s>>16), byte(s>>8), byte(s))
}

const (
	magic         = "crc\x01"
	marshaledSize = len(magic) + 4 + 4
)

func tableSum(t *Table) uint32 {
	var a [1024]byte
	b := a[:0]
	if t != nil {
		for _, x := range t {
			b = beAppendUint32(b, x)
		}
	}
	return ChecksumIEEE(b)
}

func (d *digest) AppendBinary(b []byte) ([]byte, error) {
	b = append(b, magic...)
	b = beAppendUint32(b, tableSum(d.tab))
	b = beAppendUint32(b, d.crc)
	return b, nil
}

func (d *digest) MarshalBinary() ([]byte, error) {
	return d.AppendBinary(make([]byte, 0, marshaledSize))
}

func (d *digest) UnmarshalBinary(b []byte) error {
	if len(b) < len(magic) || string(b[:len(magic)]) != magic {
		return errors.New("hash/crc32: invalid hash state identifier")
	}
	if len(b) != marshaledSize {
		return errors.New("hash/crc32: invalid hash state size")
	}
	if tableSum(d.tab) != beUint32(b[4:]) {
		return errors.New("hash/crc32: tables do not match")
	}
	d.crc = beUint32(b[8:])
	return nil
}

func beAppendUint32(dst []byte, v uint32) []byte {
	return append(dst, byte(v>>24), byte(v>>16), byte(v>>8), byte(v))
}

func beUint32(b []byte) uint32 {
	_ = b[3]
	return uint32(b[0])<<24 | uint32(b[1])<<16 | uint32(b[2])<<8 | uint32(b[3])
}
