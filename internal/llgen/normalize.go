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
	"strings"

	"github.com/goplus/llgo/internal/ctxreg"
)

var (
	targetFeaturesRe    = regexp.MustCompile(`\s*"target-features"="[^"]*"`)
	readRegisterCallRe  = regexp.MustCompile(`(?m)^(\s*%[\w.]+\s*=\s*)call\s+[^@]*@llvm\.read_(?:volatile_)?register\.[^(]+\(\s*metadata\s+![^)]+\)`)
	writeRegisterCallRe = regexp.MustCompile(`(?m)^\s*call\s+void\s+@llvm\.write_(?:volatile_)?register\.[^(]+\(\s*metadata\s+![^,]+,\s*[^)]+\)`)
	regMetadataRe       = regexp.MustCompile(`(?m)^!\d+\s*=\s*!\{!"(?:x26|x27|mm0|w26)"\}\s*$`)

	asmTemplates = map[string]struct {
		writeFmt string
		readFmt  string
	}{
		"amd64":   {writeFmt: "movq \\$0, %%%s", readFmt: "movq %%%s, \\$0"},
		"386":     {writeFmt: "movd \\$0, %%%s", readFmt: "movd %%%s, \\$0"},
		"arm64":   {writeFmt: "mov %s, \\$0", readFmt: "mov \\$0, %s"},
		"riscv64": {writeFmt: "mv %s, \\$0", readFmt: "mv \\$0, %s"},
		"riscv32": {writeFmt: "mv %s, \\$0", readFmt: "mv \\$0, %s"},
	}

	writeCtxRegPatterns []*regexp.Regexp
	readCtxRegPatterns  []*regexp.Regexp

	normalizedWriteCtxReg = `call void asm sideeffect "write_ctx_reg $0", "r,~{CTX_REG},~{memory}"(ptr %__llgo_ctx)`
	normalizedReadCtxReg  = `call ptr asm sideeffect "read_ctx_reg $0", "=r,~{memory}"()`
)

func init() {
	for goarch, tmpl := range asmTemplates {
		info := ctxreg.Get(goarch)
		if info.Name == "" {
			continue
		}

		writeAsm := fmt.Sprintf(tmpl.writeFmt, info.Name)
		readAsm := fmt.Sprintf(tmpl.readFmt, info.Name)

		writePattern := fmt.Sprintf(
			`call void asm sideeffect "%s", "r(?:,~\{%s\})?(?:,~\{memory\})?"\(ptr [^)]+\)`,
			writeAsm, info.Name,
		)
		writeCtxRegPatterns = append(writeCtxRegPatterns, regexp.MustCompile(writePattern))

		readPattern := fmt.Sprintf(
			`call ptr asm sideeffect "%s", "=r(?:,~\{memory\})?"\(\)`,
			readAsm,
		)
		readCtxRegPatterns = append(readCtxRegPatterns, regexp.MustCompile(readPattern))
	}
}

// NormalizeIR strips platform-specific IR attributes that are irrelevant for
// regression comparisons (e.g. target-features, ctx register asm instructions).
func NormalizeIR(ir string) string {
	ir = targetFeaturesRe.ReplaceAllString(ir, "")

	readRepl := strings.ReplaceAll(normalizedReadCtxReg, "$", "$$")
	writeRepl := strings.ReplaceAll(normalizedWriteCtxReg, "$", "$$")
	ir = readRegisterCallRe.ReplaceAllString(ir, `${1}`+readRepl)
	ir = writeRegisterCallRe.ReplaceAllString(ir, writeRepl)
	ir = regMetadataRe.ReplaceAllString(ir, "")

	for _, pattern := range writeCtxRegPatterns {
		ir = pattern.ReplaceAllLiteralString(ir, normalizedWriteCtxReg)
	}
	for _, pattern := range readCtxRegPatterns {
		ir = pattern.ReplaceAllLiteralString(ir, normalizedReadCtxReg)
	}
	return ir
}
