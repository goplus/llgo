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

import "regexp"

var (
	targetFeaturesRe = regexp.MustCompile(`\s*"target-features"="[^"]*"`)
	// Normalize platform-specific ctx registers to a generic placeholder.
	// Matches: {r12}, {x26}, {esi}, {x27} in inline asm constraints.
	// Note: arm32 uses global fallback, not register.
	ctxRegisterRe = regexp.MustCompile(`\{(r12|x26|esi|x27)\}`)
)

// NormalizeIR strips platform-specific IR attributes that are irrelevant for
// regression comparisons (e.g. target-features, ctx register names).
func NormalizeIR(ir string) string {
	ir = targetFeaturesRe.ReplaceAllString(ir, "")
	ir = ctxRegisterRe.ReplaceAllString(ir, "{CTX_REG}")
	return ir
}
