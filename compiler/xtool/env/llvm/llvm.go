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
	"os/exec"
	"path/filepath"
	"strings"

	"github.com/goplus/compiler/xtool/clang"
	"github.com/goplus/compiler/xtool/llvm/install_name_tool"
	"github.com/goplus/compiler/xtool/llvm/llvmlink"
	"github.com/goplus/compiler/xtool/nm"
)

// -----------------------------------------------------------------------------

// defaultLLVMConfigBin returns the default path to the llvm-config binary. It
// checks the LLVM_CONFIG environment variable first, then searches in PATH. If
// not found, it returns [ldLLVMConfigBin] as a last resort.
func defaultLLVMConfigBin() string {
	bin := os.Getenv("LLVM_CONFIG")
	if bin != "" {
		return bin
	}
	bin, _ = exec.LookPath("llvm-config")
	if bin != "" {
		return bin
	}
	return ldLLVMConfigBin
}

// -----------------------------------------------------------------------------

// Env represents an LLVM installation.
type Env struct {
	binDir string
}

// New creates a new [Env] instance.
func New(llvmConfigBin string) *Env {
	if llvmConfigBin == "" {
		llvmConfigBin = defaultLLVMConfigBin()
	}

	// Note that an empty binDir is acceptable. In this case, LLVM
	// executables are assumed to be in PATH.
	binDir, _ := exec.Command(llvmConfigBin, "--bindir").Output()

	e := &Env{binDir: strings.TrimSpace(string(binDir))}
	return e
}

// BinDir returns the directory containing LLVM executables. An empty string
// means LLVM executables are assumed to be in PATH.
func (e *Env) BinDir() string { return e.binDir }

// Clang returns a new [clang.Cmd] instance.
func (e *Env) Clang() *clang.Cmd {
	bin := filepath.Join(e.BinDir(), "clang")
	return clang.New(bin)
}

// Link returns a new [llvmlink.Cmd] instance.
func (e *Env) Link() *llvmlink.Cmd {
	bin := filepath.Join(e.BinDir(), "llvm-link")
	return llvmlink.New(bin)
}

// Nm returns a new [nm.Cmd] instance.
func (e *Env) Nm() *nm.Cmd {
	bin := filepath.Join(e.BinDir(), "llvm-nm")
	return nm.New(bin)
}

func (e *Env) InstallNameTool() *install_name_tool.Cmd {
	bin := filepath.Join(e.BinDir(), "llvm-install-name-tool")
	return install_name_tool.New(bin)
}

// -----------------------------------------------------------------------------
