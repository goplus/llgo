/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *     http://www.apache.org/licenses/LICENSE-2.0
 */

package tinygogc

import "testing"

func TestOccupiedStates(t *testing.T) {
	for states := uint64(0); states < 256; states++ {
		want := true
		for block := 0; block < 4; block++ {
			if states>>(2*block)&3 == 0 {
				want = false
			}
		}
		if got := occupiedStates(states, 0x55); got != want {
			t.Fatalf("states %02x: got %v, want %v", states, got, want)
		}
	}
	const mask = uint64(0x5555555555555555)
	for _, state := range []uint64{1, 2, 3} {
		states := state * mask
		if !occupiedStates(states, mask) {
			t.Fatalf("occupied word %x classified as free", states)
		}
		for block := 0; block < 32; block++ {
			if occupiedStates(states&^(3<<(2*block)), mask) {
				t.Fatalf("free block %d skipped in word %x", block, states)
			}
		}
	}
}

func TestAllocScanRevisitsEveryCursor(t *testing.T) {
	// Partial metadata words and unaligned cursors must still terminate a
	// complete scan of an occupied arena, rather than skipping GC forever.
	for end := uintptr(1); end < 70; end++ {
		for cursor := uintptr(0); cursor < end; cursor++ {
			for _, step := range []uintptr{1, 4, 32} {
				index := cursor
				for scans := uintptr(0); ; scans++ {
					if scans > end+1 {
						t.Fatalf("scan skipped cursor %d in arena %d, step %d", cursor, end, step)
					}
					index = advanceAllocScan(index, end, cursor, step)
					if index == end {
						index = 0
					}
					if index == cursor {
						break
					}
				}
			}
		}
	}
}
