/*
 * Copyright (c) 2024 The XGo Authors (xgo.dev). All rights reserved.
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

package safesplit

import "strings"

// SplitPkgConfigFlags splits pkg-config-style output into compiler arguments.
// It joins a one-character option such as -I or -L to its value, preserving
// spaces within paths. Other options remain intact, except that -framework and
// -weak_framework retain their required separate name argument.
func SplitPkgConfigFlags(s string) []string {
	return splitFlags(s, false)
}

// SplitDriverFlags also recognizes @response-file arguments using GNU quoting.
// Escape a space before @ when it belongs to an ordinary flag's path rather
// than separating a response-file argument, e.g. -I/include\ @generated.
func SplitDriverFlags(s string) []string {
	return splitFlags(s, true)
}

func splitFlags(s string, driver bool) []string {
	// Whitespace-only output (including newlines, as produced by a
	// pkg-config query that resolves to no flags) carries no arguments.
	// Treat it as empty so callers do not receive a spurious "-" argument,
	// which would otherwise be passed to clang as a stdin marker and break
	// the AST probe. See https://github.com/xgo-dev/llgo/issues/2749.
	if strings.TrimSpace(s) == "" {
		return nil
	}

	var result []string
	var current strings.Builder
	space := func(c byte) bool {
		return c == ' ' || c == '\t' || driver && (c == '\r' || c == '\n')
	}
	response := func(s string) bool { return driver && startsResponseFile(s) }
	i := 0
	flush := func() {
		if current.Len() == 0 {
			return
		}
		flag := strings.TrimSpace(current.String())
		option, name, paired := strings.Cut(flag, " ")
		if paired && (option == "-framework" || option == "-weak_framework") {
			result = append(result, option, name)
		} else {
			result = append(result, flag)
		}
		current.Reset()
	}

	// Skip leading whitespace
	for i < len(s) && space(s[i]) {
		i++
	}

	for i < len(s) {
		// Start a new part
		flush()
		if response(s[i:]) {
			// Unlike pkg-config's -I/-L paths, @file ends at unquoted whitespace.
			// This keeps adjacent response files separate and permits @"a b.rsp".
			var quote byte
			for i < len(s) {
				c := s[i]
				if quote == 0 && space(c) {
					break
				}
				if c == '\\' && i+1 < len(s) {
					i++
					current.WriteByte(s[i])
				} else if quote != 0 && c == quote {
					quote = 0
				} else if quote == 0 && (c == '\'' || c == '"') {
					quote = c
				} else {
					current.WriteByte(c)
				}
				i++
			}
			result = append(result, current.String())
			current.Reset()
			for i < len(s) && space(s[i]) {
				i++
			}
			continue
		}
		// Write "-" and the flag character
		current.WriteByte('-')
		i++
		if i < len(s) {
			current.WriteByte(s[i])
			i++
		}
		// Skip spaces after flag character
		for i < len(s) && space(s[i]) {
			i++
		}

		// Check if next character is another flag (short flag with no argument)
		// Preserve attached operands for short options such as -I @headers.
		shortOperand := current.Len() == 2 && strings.ContainsAny(current.String()[1:], "ILFDBUolx")
		if i < len(s) && (s[i] == '-' || response(s[i:]) && !shortOperand) {
			// This is a short flag with no argument, finish current flag
			continue
		}

		// Read content until next space
		for i < len(s) {
			if s[i] == '\\' && i+1 < len(s) && space(s[i+1]) {
				// Skip backslash and write the escaped space
				i++
				current.WriteByte(s[i])
				i++
				continue
			}
			if space(s[i]) {
				// Skip consecutive spaces
				j := i
				for j < len(s) && space(s[j]) {
					j++
				}
				// If we've seen content, check for new flag
				if j < len(s) && (s[j] == '-' || response(s[j:])) {
					i = j
					break
				}
				// Otherwise, include one space and continue
				current.WriteByte(' ')
				i = j
			} else {
				current.WriteByte(s[i])
				i++
			}
		}
	}
	// Add the last part
	flush()
	return result
}

func startsResponseFile(s string) bool {
	return strings.HasPrefix(s, "@") || strings.HasPrefix(s, `"@`) || strings.HasPrefix(s, "'@")
}
