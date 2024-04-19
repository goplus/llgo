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
	"log"
	"os"
	"path/filepath"
	"strings"
)

type IndexBuilder struct {
	nm *Cmd
}

func NewIndexBuilder(nm *Cmd) *IndexBuilder {
	return &IndexBuilder{nm}
}

func (p *IndexBuilder) Index(fromDir, toDir string, progress func(path string)) (err error) {
	return filepath.WalkDir(fromDir, func(path string, d os.DirEntry, err error) error {
		if err != nil {
			return err
		}
		if d.IsDir() {
			return nil
		}
		fname := d.Name()
		switch filepath.Ext(fname) {
		case ".a", ".dylib", ".so", ".dll", ".lib":
			progress(path)
			outFile := filepath.Join(toDir, strings.TrimPrefix(fname, "lib")+".pub")
			e := p.IndexFile(path, outFile)
			if e != nil {
				log.Println(e)
			}
		}
		return nil
	})
}

func (p *IndexBuilder) IndexFile(arFile, outFile string) (err error) {
	items, err := p.nm.List(arFile)
	if err != nil {
		return
	}
	var b bytes.Buffer
	b.WriteString("file ")
	b.WriteString(arFile)
	b.WriteByte('\n')
	nbase := b.Len()
	for _, item := range items {
		for _, sym := range item.Symbols {
			switch sym.Type {
			case Text, Data, BSS, Rodata, 'S':
				b.WriteByte(byte(sym.Type))
				b.WriteByte(' ')
				b.WriteString(sym.Name)
				b.WriteByte('\n')
			case Undefined, LocalText, LocalData, LocalBSS, LocalASym, 'I', 'i', 'a':
			default:
				log.Printf("unknown symbol type %c: %s\n", sym.Type, sym.Name)
			}
		}
	}
	buf := b.Bytes()
	if len(buf) <= nbase {
		return
	}
	return os.WriteFile(outFile, buf, 0666)
}
