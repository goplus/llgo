// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ARM64-specific hardware-assisted CRC32 algorithms. See crc32.go for a
// description of the interface that each architecture-specific file
// implements.

package crc32

// IEEE polynomial: 0xedb88320
// Castagnoli polynomial: 0x82f63b78

func castagnoliUpdate(crc uint32, p []byte) uint32 {
	const poly = 0x82f63b78
	for _, b := range p {
		crc ^= uint32(b)
		for i := 0; i < 8; i++ {
			if crc&1 != 0 {
				crc = (crc >> 1) ^ poly
			} else {
				crc >>= 1
			}
		}
	}
	return crc
}

func ieeeUpdate(crc uint32, p []byte) uint32 {
	const poly = 0xedb88320
	for _, b := range p {
		crc ^= uint32(b)
		for i := 0; i < 8; i++ {
			if crc&1 != 0 {
				crc = (crc >> 1) ^ poly
			} else {
				crc >>= 1
			}
		}
	}
	return crc
}
