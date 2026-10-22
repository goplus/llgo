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

package wasmdebug

import (
	"errors"
	"fmt"
)

// FunctionNames reads the optional tool-conventions function name map. A nil
// map means no function names are available, not that all functions are dead.
func FunctionNames(module []byte) (map[uint32]string, error) {
	sections, err := parse(module)
	if err != nil {
		return nil, err
	}
	var names map[uint32]string
	for _, section := range sections {
		if section.id != 0 || section.name != "name" {
			continue
		}
		raw := section.content
		for off := 0; off < len(raw); {
			id := raw[off]
			off++
			size, err := readULEB32(raw, &off)
			if err != nil {
				return nil, err
			}
			if uint64(size) > uint64(len(raw)-off) {
				return nil, errors.New("truncated Wasm name subsection")
			}
			payload := raw[off : off+int(size)]
			off += int(size)
			if id != 1 {
				continue
			}
			if names != nil {
				return nil, errors.New("duplicate Wasm function name map")
			}
			names = make(map[uint32]string)
			pos := 0
			count, err := readULEB32(payload, &pos)
			if err != nil {
				return nil, err
			}
			for i := uint32(0); i < count; i++ {
				index, err := readULEB32(payload, &pos)
				if err != nil {
					return nil, err
				}
				name, err := readName(payload, &pos)
				if err != nil {
					return nil, err
				}
				if _, exists := names[index]; exists {
					return nil, fmt.Errorf("duplicate Wasm function name index %d", index)
				}
				names[index] = name
			}
			if pos != len(payload) {
				return nil, errors.New("trailing Wasm function name bytes")
			}
		}
	}
	return names, nil
}
