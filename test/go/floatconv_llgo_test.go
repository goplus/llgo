//go:build llgo
// +build llgo

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

package gotest

import (
	"math"
	"testing"
)

func TestFloatToIntegerConversionBounds(t *testing.T) {
	checkUint32 := func(name string, f float32, want uint32) {
		if got := uint32(f); got != want {
			t.Fatalf("%s: uint32(%v) = %d, want %d", name, f, got, want)
		}
	}
	checkInt32 := func(name string, f float64, want int32) {
		if got := int32(f); got != want {
			t.Fatalf("%s: int32(%v) = %d, want %d", name, f, got, want)
		}
	}

	checkUint32("above uint32 max", float32(5294967295.1), math.MaxUint32)
	checkUint32("negative uint32", float32(-1.1), 0)
	checkUint32("nan uint32", float32(math.NaN()), 0)

	checkInt32("above int32 max", float64(math.MaxInt32)+1024, math.MaxInt32)
	checkInt32("below int32 min", float64(math.MinInt32)-1024, math.MinInt32)
	checkInt32("nan int32", math.NaN(), 0)
}
