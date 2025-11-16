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

// Package size implements binary size analysis using llvm-readelf.
package size

import (
	"bytes"
	"fmt"
	"os/exec"
	"path/filepath"
	"regexp"
	"strconv"
	"strings"

	"github.com/goplus/llgo/xtool/env/llvm"
)

// SectionInfo holds information about an ELF section
type SectionInfo struct {
	Name string
	Size uint64
	Type string
}

// SizeReport contains the analysis results
type SizeReport struct {
	Sections []SectionInfo
	Text     uint64
	Rodata   uint64
	Data     uint64
	Bss      uint64
	Total    uint64
}

// Analyze analyzes the binary size using llvm-readelf
func Analyze(env *llvm.Env, binaryPath string, mode string) error {
	// Find llvm-readelf
	readelfBin := filepath.Join(env.BinDir(), "llvm-readelf")

	// Run llvm-readelf --all
	cmd := exec.Command(readelfBin, "--all", binaryPath)
	var stdout, stderr bytes.Buffer
	cmd.Stdout = &stdout
	cmd.Stderr = &stderr

	if err := cmd.Run(); err != nil {
		return fmt.Errorf("llvm-readelf failed: %v\nstderr: %s", err, stderr.String())
	}

	output := stdout.String()

	// Parse the output
	report, err := parseReadelfOutput(output)
	if err != nil {
		return err
	}

	// Print based on mode
	switch mode {
	case "short", "":
		printShortReport(report)
	case "full":
		printShortReport(report)
		fmt.Println("\n=== Full llvm-readelf output ===")
		fmt.Println(output)
	default:
		return fmt.Errorf("invalid size mode %q, must be one of: short, full", mode)
	}

	return nil
}

// parseReadelfOutput parses llvm-readelf --all output
func parseReadelfOutput(output string) (*SizeReport, error) {
	report := &SizeReport{
		Sections: make([]SectionInfo, 0),
	}

	// Parse section headers
	// Looking for section table format like:
	// Section Headers:
	//   [Nr] Name              Type            Address          Off    Size   ES Flg Lk Inf Al
	//   [ 0]                   NULL            0000000000000000 000000 000000 00      0   0  0
	//   [ 1] .text             PROGBITS        0000000000401000 001000 001234 00  AX  0   0 16

	sectionRegex := regexp.MustCompile(`\[\s*\d+\]\s+(\S+)\s+(\S+)\s+[0-9a-fA-F]+\s+[0-9a-fA-F]+\s+([0-9a-fA-F]+)`)

	lines := strings.Split(output, "\n")
	for _, line := range lines {
		matches := sectionRegex.FindStringSubmatch(line)
		if len(matches) >= 4 {
			name := matches[1]
			typ := matches[2]
			sizeStr := matches[3]

			size, err := strconv.ParseUint(sizeStr, 16, 64)
			if err != nil {
				continue // Skip invalid entries
			}

			section := SectionInfo{
				Name: name,
				Size: size,
				Type: typ,
			}
			report.Sections = append(report.Sections, section)

			// Aggregate common sections
			switch {
			case strings.HasPrefix(name, ".text"):
				report.Text += size
			case strings.HasPrefix(name, ".rodata") || strings.HasPrefix(name, ".rdata"):
				report.Rodata += size
			case strings.HasPrefix(name, ".data"):
				report.Data += size
			case strings.HasPrefix(name, ".bss"):
				report.Bss += size
			}
		}
	}

	report.Total = report.Text + report.Rodata + report.Data + report.Bss

	return report, nil
}

// printShortReport prints a summary table of size usage
func printShortReport(report *SizeReport) {
	fmt.Println("=== Binary Size Analysis ===")
	fmt.Printf("%-20s %10s\n", "Section", "Size")
	fmt.Println(strings.Repeat("-", 32))

	if report.Text > 0 {
		fmt.Printf("%-20s %10s\n", ".text (code)", formatSize(report.Text))
	}
	if report.Rodata > 0 {
		fmt.Printf("%-20s %10s\n", ".rodata (readonly)", formatSize(report.Rodata))
	}
	if report.Data > 0 {
		fmt.Printf("%-20s %10s\n", ".data (data)", formatSize(report.Data))
	}
	if report.Bss > 0 {
		fmt.Printf("%-20s %10s\n", ".bss (zero-init)", formatSize(report.Bss))
	}

	fmt.Println(strings.Repeat("-", 32))
	fmt.Printf("%-20s %10s\n", "Total", formatSize(report.Total))
}

// formatSize formats a size in bytes to a human-readable string
func formatSize(size uint64) string {
	if size < 1024 {
		return fmt.Sprintf("%d B", size)
	} else if size < 1024*1024 {
		return fmt.Sprintf("%.1f KB", float64(size)/1024)
	} else {
		return fmt.Sprintf("%.1f MB", float64(size)/(1024*1024))
	}
}
