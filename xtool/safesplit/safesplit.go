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

// SplitPkgConfigFlags splits a pkg-config output string into argv-style tokens.
// It preserves ordinary shell quoting and backslash escaping so callers can pass
// the resulting slice directly to exec.Command.
func SplitPkgConfigFlags(s string) []string {
	var out []string
	var cur strings.Builder
	var quote byte

	flush := func() {
		if cur.Len() == 0 {
			return
		}
		out = append(out, cur.String())
		cur.Reset()
	}

	for i := 0; i < len(s); i++ {
		ch := s[i]
		if quote != 0 {
			switch ch {
			case '\\':
				if i+1 < len(s) {
					i++
					cur.WriteByte(s[i])
				} else {
					cur.WriteByte(ch)
				}
			case quote:
				quote = 0
			default:
				cur.WriteByte(ch)
			}
			continue
		}

		switch ch {
		case ' ', '\t', '\n', '\r':
			flush()
		case '\'', '"':
			quote = ch
		case '\\':
			if i+1 < len(s) {
				i++
				cur.WriteByte(s[i])
			} else {
				cur.WriteByte(ch)
			}
		default:
			cur.WriteByte(ch)
		}
	}
	flush()
	return out
}
