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

package nm

import (
	"bytes"
	"errors"
	"os"
	"os/exec"
	"strings"
)

var (
	errInvalidOutput = errors.New("invalid nm output")
)

// -----------------------------------------------------------------------------

// Cmd represents a nm command.
type Cmd struct {
	app string
}

// New creates a new nm command.
func New(app string) *Cmd {
	if app == "" {
		app = "nm"
	}
	return &Cmd{app}
}

// -----------------------------------------------------------------------------

// SymbolType represents a symbol type.
type SymbolType uint8

const (
	Undefined = SymbolType('U') // Undefined
	Text      = SymbolType('T') // Text (code) section symbol
	Data      = SymbolType('D') // Data (global var) section symbol
	Rodata    = SymbolType('R') // Read-only data (rodata) section symbol
	BSS       = SymbolType('B') // BSS (uninitialized global var) section symbol

	LocalText = SymbolType('t') // Local text (code) section symbol
	LocalData = SymbolType('d') // Local data (local var) section symbol
	LocalBSS  = SymbolType('b') // Local BSS (uninitialized local var) section symbol
)

// Symbol represents a symbol in an object file.
type Symbol struct {
	Name  string     // symbol name
	Addr  uint64     // symbol address
	Type  SymbolType // symbol type
	FAddr bool       // address is valid
}

// ObjectFile represents an object file.
type ObjectFile struct {
	File    string    // file name
	Symbols []*Symbol // symbols
}

// List lists symbols in an archive file.
func (p *Cmd) List(arfile string) (items []*ObjectFile, err error) {
	var stdout bytes.Buffer
	cmd := exec.Command(p.app, arfile)
	cmd.Stdout = &stdout
	cmd.Stderr = os.Stderr
	if err = cmd.Run(); err != nil {
		return
	}
	return listOutput(stdout.Bytes())
}

func listOutput(data []byte) (items []*ObjectFile, err error) {
	var item *ObjectFile
	var sep = []byte{'\n'}
	for _, line := range bytes.Split(data, sep) {
		if len(line) == 0 {
			item = nil
			continue
		}
		if item == nil {
			s := string(line)
			if strings.HasSuffix(s, ":") {
				item = &ObjectFile{File: s[:len(s)-1]}
				items = append(items, item)
				continue
			}
			err = errInvalidOutput
			return
		}
		if len(line) < 19 {
			err = errInvalidOutput
			return
		}
		sym := &Symbol{
			Name: string(line[19:]),
			Type: SymbolType(line[17]),
		}
		if sym.FAddr = line[0] != ' '; sym.FAddr {
			sym.Addr = hexUint64(line)
		}
		item.Symbols = append(item.Symbols, sym)
	}
	return
}

func hexUint64(b []byte) uint64 {
	_ = b[15] // bounds check hint to compiler; see golang.org/issue/14808
	return hex(b[15]) | hex(b[14])<<4 | hex(b[13])<<8 | hex(b[12])<<12 |
		hex(b[11])<<16 | hex(b[10])<<20 | hex(b[9])<<24 | hex(b[8])<<28 |
		hex(b[7])<<32 | hex(b[6])<<36 | hex(b[5])<<40 | hex(b[4])<<44 |
		hex(b[3])<<48 | hex(b[2])<<52 | hex(b[1])<<56 | hex(b[0])<<60
}

func hex(b byte) uint64 {
	return hexTable[b]
}

var hexTable = []uint64{
	'0': 0, '1': 1, '2': 2, '3': 3, '4': 4,
	'5': 5, '6': 6, '7': 7, '8': 8, '9': 9,
	'a': 10, 'b': 11, 'c': 12, 'd': 13, 'e': 14, 'f': 15,
	'A': 10, 'B': 11, 'C': 12, 'D': 13, 'E': 14, 'F': 15,
}

// -----------------------------------------------------------------------------
