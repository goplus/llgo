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

package llvm

import (
	"os"

	"github.com/goplus/llgo/x/nm"
)

type Env struct {
	root     string
	nmprefix string
}

func New() *Env {
	var nmprefix string
	var root = os.Getenv("LLGO_LLVM_ROOT")
	if root != "" {
		nmprefix = root + "/bin/llvm-"
	}
	return &Env{root, nmprefix}
}

func (p *Env) Root() string {
	return p.root
}

func (p *Env) Nm() *nm.Cmd {
	return nm.New(p.nmprefix + "nm")
}
