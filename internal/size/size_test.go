//go:build !llgo

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
	"strings"
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

func TestPrintShortReport(t *testing.T) {
	// Test printShortReport by capturing what it would print
	report := &SizeReport{
		Text:   0x1234,
		Rodata: 0x200,
		Data:   0x100,
		Bss:    0x80,
		Total:  0x1234 + 0x200 + 0x100 + 0x80,
	}

	// This test verifies that printShortReport doesn't panic
	// We can't easily capture stdout without more complex testing infrastructure
	// So we just verify the function completes successfully
	printShortReport(report)
}

func TestPrintShortReportEmpty(t *testing.T) {
	// Test with empty report (all zeros)
	report := &SizeReport{}
	printShortReport(report)
}

func TestPrintShortReportPartial(t *testing.T) {
	// Test with only some sections populated
	report := &SizeReport{
		Text:  1024,
		Total: 1024,
	}
	printShortReport(report)
}

func TestParseReadelfOutputMultipleSections(t *testing.T) {
	// Test with multiple .text/.rodata sections (some binaries have .text.* sections)
	output := `
Section Headers:
  [Nr] Name              Type            Address          Off    Size   ES Flg Lk Inf Al
  [ 0]                   NULL            0000000000000000 000000 000000 00      0   0  0
  [ 1] .text             PROGBITS        0000000000401000 001000 001000 00  AX  0   0 16
  [ 2] .text.startup     PROGBITS        0000000000402000 002000 000100 00  AX  0   0 16
  [ 3] .rodata           PROGBITS        0000000000403000 003000 000200 00   A  0   0  8
  [ 4] .rodata.str1.1    PROGBITS        0000000000403200 003200 000050 00   A  0   0  1
  [ 5] .data             PROGBITS        0000000000404000 004000 000100 00  WA  0   0  8
  [ 6] .data.rel.ro      PROGBITS        0000000000404100 004100 000080 00  WA  0   0  8
  [ 7] .bss              NOBITS          0000000000405000 005000 000080 00  WA  0   0  8
`

	report, err := parseReadelfOutput(output)
	if err != nil {
		t.Fatalf("parseReadelfOutput failed: %v", err)
	}

	// Check that multiple .text sections are aggregated
	expectedText := uint64(0x1000 + 0x100)
	if report.Text != expectedText {
		t.Errorf("Expected .text total to be 0x%x, got 0x%x", expectedText, report.Text)
	}

	// Check that multiple .rodata sections are aggregated
	expectedRodata := uint64(0x200 + 0x50)
	if report.Rodata != expectedRodata {
		t.Errorf("Expected .rodata total to be 0x%x, got 0x%x", expectedRodata, report.Rodata)
	}

	// Check that multiple .data sections are aggregated
	expectedData := uint64(0x100 + 0x80)
	if report.Data != expectedData {
		t.Errorf("Expected .data total to be 0x%x, got 0x%x", expectedData, report.Data)
	}
}

func TestParseReadelfOutputEmpty(t *testing.T) {
	// Test with empty output
	output := ""
	report, err := parseReadelfOutput(output)
	if err != nil {
		t.Fatalf("parseReadelfOutput failed: %v", err)
	}

	if len(report.Sections) != 0 {
		t.Errorf("Expected 0 sections, got %d", len(report.Sections))
	}

	if report.Total != 0 {
		t.Errorf("Expected total to be 0, got %d", report.Total)
	}
}

func TestParseReadelfOutputNoSectionHeaders(t *testing.T) {
	// Test with output that doesn't contain section headers
	output := `
ELF Header:
  Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
  Class:                             ELF64
`
	report, err := parseReadelfOutput(output)
	if err != nil {
		t.Fatalf("parseReadelfOutput failed: %v", err)
	}

	if len(report.Sections) != 0 {
		t.Errorf("Expected 0 sections, got %d", len(report.Sections))
	}
}

func TestParseReadelfOutputInvalidHex(t *testing.T) {
	// Test that invalid hex sizes are skipped gracefully
	output := `
Section Headers:
  [Nr] Name              Type            Address          Off    Size   ES Flg Lk Inf Al
  [ 1] .text             PROGBITS        0000000000401000 001000 INVALID 00  AX  0   0 16
  [ 2] .data             PROGBITS        0000000000404000 004000 000100 00  WA  0   0  8
`

	report, err := parseReadelfOutput(output)
	if err != nil {
		t.Fatalf("parseReadelfOutput failed: %v", err)
	}

	// .text should be skipped due to invalid hex, only .data should be counted
	if report.Text != 0 {
		t.Errorf("Expected .text to be 0 (invalid hex), got 0x%x", report.Text)
	}

	if report.Data != 0x100 {
		t.Errorf("Expected .data to be 0x100, got 0x%x", report.Data)
	}
}

func TestFormatSizeLarge(t *testing.T) {
	// Test with larger sizes
	tests := []struct {
		size     uint64
		expected string
	}{
		{10485760, "10.0 MB"},     // 10 MB
		{52428800, "50.0 MB"},     // 50 MB
		{104857600, "100.0 MB"},   // 100 MB
		{1073741824, "1024.0 MB"}, // 1 GB (displayed as MB since we don't have GB formatting)
	}

	for _, tt := range tests {
		result := formatSize(tt.size)
		if result != tt.expected {
			t.Errorf("formatSize(%d) = %s, expected %s", tt.size, result, tt.expected)
		}
	}
}

func TestAnalyzeInvalidMode(t *testing.T) {
	// Test that Analyze rejects invalid modes
	invalidModes := []string{"invalid", "SHORT", "FULL", ".", "..", "/path"}

	for _, mode := range invalidModes {
		err := Analyze(nil, "/nonexistent", mode)
		if err == nil {
			t.Errorf("Expected error for invalid mode %q, got nil", mode)
		}
		if err != nil && !strings.Contains(err.Error(), "invalid size mode") {
			t.Errorf("Expected 'invalid size mode' error for mode %q, got: %v", mode, err)
		}
	}
}

func TestParseReadelfOutputRdataSections(t *testing.T) {
	// Test that .rdata sections (Windows) are counted as rodata
	output := `
Section Headers:
  [Nr] Name              Type            Address          Off    Size   ES Flg Lk Inf Al
  [ 1] .text             PROGBITS        0000000000401000 001000 001000 00  AX  0   0 16
  [ 2] .rdata            PROGBITS        0000000000403000 003000 000200 00   A  0   0  8
`

	report, err := parseReadelfOutput(output)
	if err != nil {
		t.Fatalf("parseReadelfOutput failed: %v", err)
	}

	// .rdata should be counted as rodata
	if report.Rodata != 0x200 {
		t.Errorf("Expected .rdata to be counted as rodata (0x200), got 0x%x", report.Rodata)
	}
}

func TestParseReadelfOutputSectionTypes(t *testing.T) {
	// Test different section types
	output := `
Section Headers:
  [Nr] Name              Type            Address          Off    Size   ES Flg Lk Inf Al
  [ 1] .text             PROGBITS        0000000000401000 001000 001000 00  AX  0   0 16
  [ 2] .rodata           PROGBITS        0000000000403000 003000 000200 00   A  0   0  8
  [ 3] .data             PROGBITS        0000000000404000 004000 000100 00  WA  0   0  8
  [ 4] .bss              NOBITS          0000000000405000 005000 000080 00  WA  0   0  8
  [ 5] .comment          PROGBITS        0000000000000000 005080 00001f 01  MS  0   0  1
  [ 6] .symtab           SYMTAB          0000000000000000 0050a0 000600 18      7  39  8
`

	report, err := parseReadelfOutput(output)
	if err != nil {
		t.Fatalf("parseReadelfOutput failed: %v", err)
	}

	// Verify all standard sections are parsed
	if len(report.Sections) < 4 {
		t.Errorf("Expected at least 4 sections to be parsed, got %d", len(report.Sections))
	}

	// Total should only include the 4 main sections
	expectedTotal := uint64(0x1000 + 0x200 + 0x100 + 0x80)
	if report.Total != expectedTotal {
		t.Errorf("Expected total to be 0x%x, got 0x%x", expectedTotal, report.Total)
	}
}
