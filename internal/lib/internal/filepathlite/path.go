/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
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

package filepathlite

import (
	"github.com/goplus/llgo/internal/lib/internal/stringslite"
)

// FromSlash is filepath.ToSlash.
func FromSlash(path string) string {
	if Separator == '/' {
		return path
	}
	return replaceStringByte(path, '/', Separator)
}

func replaceStringByte(s string, old, new byte) string {
	if stringslite.IndexByte(s, old) == -1 {
		return s
	}
	n := []byte(s)
	for i := range n {
		if n[i] == old {
			n[i] = new
		}
	}
	return string(n)
}

// VolumeName is filepath.VolumeName.
func VolumeName(path string) string {
	return FromSlash(path[:volumeNameLen(path)])
}

// VolumeNameLen returns the length of the leading volume name on Windows.
// It returns 0 elsewhere.
func VolumeNameLen(path string) int {
	return volumeNameLen(path)
}
