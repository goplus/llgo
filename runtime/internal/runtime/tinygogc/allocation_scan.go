/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *     http://www.apache.org/licenses/LICENSE-2.0
 */

package tinygogc

// Each block uses two state bits; 00 is free. mask selects the low bit of
// every represented pair, for either one metadata byte or a complete word.
func occupiedStates(states, mask uint64) bool {
	return (states|states>>1)&mask == mask
}

func advanceAllocScan(index, end, cursor, step uintptr) uintptr {
	next := index + step
	if next > end {
		next = end
	}
	// The circular allocator detects a complete scan by revisiting its cursor.
	// A bulk skip must not jump over that checkpoint after wrapping around.
	if index < cursor && next > cursor {
		next = cursor
	}
	return next
}
