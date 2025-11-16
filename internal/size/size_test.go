/*
 * Copyright (c) 2025 The GoPlus Authors (goplus.org). All rights reserved.
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

package size

import (
	"testing"
)

func TestParseReadelfOutput(t *testing.T) {
	// Sample llvm-readelf output
	output := `
Section Headers:
  [Nr] Name              Type            Address          Off    Size   ES Flg Lk Inf Al
  [ 0]                   NULL            0000000000000000 000000 000000 00      0   0  0
  [ 1] .text             PROGBITS        0000000000401000 001000 001234 00  AX  0   0 16
  [ 2] .rodata           PROGBITS        0000000000403000 003000 000200 00   A  0   0  8
  [ 3] .data             PROGBITS        0000000000404000 004000 000100 00  WA  0   0  8
  [ 4] .bss              NOBITS          0000000000405000 005000 000080 00  WA  0   0  8
`

	report, err := parseReadelfOutput(output)
	if err != nil {
		t.Fatalf("parseReadelfOutput failed: %v", err)
	}

	// Check that sections were parsed
	if len(report.Sections) == 0 {
		t.Fatal("Expected sections to be parsed")
	}

	// Check .text size (0x1234 = 4660 bytes)
	if report.Text != 0x1234 {
		t.Errorf("Expected .text size to be 0x1234, got 0x%x", report.Text)
	}

	// Check .rodata size (0x200 = 512 bytes)
	if report.Rodata != 0x200 {
		t.Errorf("Expected .rodata size to be 0x200, got 0x%x", report.Rodata)
	}

	// Check .data size (0x100 = 256 bytes)
	if report.Data != 0x100 {
		t.Errorf("Expected .data size to be 0x100, got 0x%x", report.Data)
	}

	// Check .bss size (0x80 = 128 bytes)
	if report.Bss != 0x80 {
		t.Errorf("Expected .bss size to be 0x80, got 0x%x", report.Bss)
	}

	// Check total
	expectedTotal := uint64(0x1234 + 0x200 + 0x100 + 0x80)
	if report.Total != expectedTotal {
		t.Errorf("Expected total to be 0x%x, got 0x%x", expectedTotal, report.Total)
	}
}

func TestFormatSize(t *testing.T) {
	tests := []struct {
		size     uint64
		expected string
	}{
		{0, "0 B"},
		{512, "512 B"},
		{1024, "1.0 KB"},
		{1536, "1.5 KB"},
		{1048576, "1.0 MB"},
		{1572864, "1.5 MB"},
	}

	for _, tt := range tests {
		result := formatSize(tt.size)
		if result != tt.expected {
			t.Errorf("formatSize(%d) = %s, expected %s", tt.size, result, tt.expected)
		}
	}
}
