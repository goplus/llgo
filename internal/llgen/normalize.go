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

package llgen

import (
	"fmt"
	"regexp"

	"github.com/goplus/llgo/internal/ctxreg"
)

var (
	targetFeaturesRe = regexp.MustCompile(`\s*"target-features"="[^"]*"`)

	// Asm instruction templates per architecture family (register name is %s placeholder)
	// These define the LLVM IR asm string format for context register operations
	asmTemplates = map[string]struct {
		writeFmt string // format for write asm, e.g. "mov \\$0, %%%s" -> "mov \$0, %r12"
		readFmt  string // format for read asm, e.g. "mov %%%s, \\$0" -> "mov %r12, \$0"
	}{
		"amd64":   {writeFmt: "movq \\$0, %%%s", readFmt: "movq %%%s, \\$0"},
		"386":     {writeFmt: "movd \\$0, %%%s", readFmt: "movd %%%s, \\$0"},
		"arm64":   {writeFmt: "mov %s, \\$0", readFmt: "mov \\$0, %s"},
		"riscv64": {writeFmt: "mv %s, \\$0", readFmt: "mv \\$0, %s"},
	}

	// Dynamically generated patterns
	writeCtxRegPatterns []*regexp.Regexp
	readCtxRegPatterns  []*regexp.Regexp

	// Normalized replacement strings
	normalizedWriteCtxReg = `call void asm sideeffect "write_ctx_reg $0", "r,~{CTX_REG},~{memory}"(ptr %__llgo_ctx)`
	normalizedReadCtxReg  = `call ptr asm sideeffect "read_ctx_reg $0", "=r,~{memory}"()`
)

func init() {
	// Generate regex patterns from ctxreg definitions
	for goarch, tmpl := range asmTemplates {
		info := ctxreg.Get(goarch)
		if info.Name == "" {
			continue
		}

		// Generate the asm strings with register name from ctxreg
		writeAsm := fmt.Sprintf(tmpl.writeFmt, info.Name)
		readAsm := fmt.Sprintf(tmpl.readFmt, info.Name)

		// WriteCtxReg pattern: call void asm sideeffect "<write_asm>", "r,~{reg},~{memory}"(ptr %...)
		writePattern := fmt.Sprintf(
			`call void asm sideeffect "%s", "r,~\{%s\},~\{memory\}"\(ptr [^)]+\)`,
			writeAsm, info.Name,
		)
		writeCtxRegPatterns = append(writeCtxRegPatterns, regexp.MustCompile(writePattern))

		// ReadCtxReg pattern: call ptr asm sideeffect "<read_asm>", "=r,~{memory}"()
		readPattern := fmt.Sprintf(
			`call ptr asm sideeffect "%s", "=r,~\{memory\}"\(\)`,
			readAsm,
		)
		readCtxRegPatterns = append(readCtxRegPatterns, regexp.MustCompile(readPattern))
	}
}

// NormalizeIR strips platform-specific IR attributes that are irrelevant for
// regression comparisons (e.g. target-features, ctx register asm instructions).
func NormalizeIR(ir string) string {
	ir = targetFeaturesRe.ReplaceAllString(ir, "")

	// Normalize WriteCtxReg inline asm (precise matching)
	// Use ReplaceAllLiteralString to avoid $0 being interpreted as backreference
	for _, pattern := range writeCtxRegPatterns {
		ir = pattern.ReplaceAllLiteralString(ir, normalizedWriteCtxReg)
	}

	// Normalize ReadCtxReg inline asm (precise matching)
	for _, pattern := range readCtxRegPatterns {
		ir = pattern.ReplaceAllLiteralString(ir, normalizedReadCtxReg)
	}

	return ir
}
