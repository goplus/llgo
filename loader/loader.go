/*
 * Copyright (c) 2023 The GoPlus Authors (goplus.org). All rights reserved.
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

package loader

import (
	"golang.org/x/tools/go/ssa"
)

type Package struct {
	SSA          *ssa.Package
	EmbedGlobals map[string][]*EmbedFile
}

type EmbedFile struct {
	/*
	   Name      string
	   Size      uint64
	   Hash      string // hash of the file (as a hex string)
	   NeedsData bool   // true if this file is embedded as a byte slice
	   Data      []byte // contents of this file (only if NeedsData is set)
	*/
}
