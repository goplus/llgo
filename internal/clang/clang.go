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

package clang

import (
	"fmt"
	"io"
	"os"
	"os/exec"
	"runtime"
	"strings"

	"github.com/goplus/llgo/internal/crosscompile"
	"github.com/goplus/llgo/xtool/safesplit"
)

// Cmd represents a clang command with environment and crosscompile support.
type Cmd struct {
	app          string
	Env          []string
	Verbose      bool
	Stdin        io.Reader
	Stdout       io.Writer
	Stderr       io.Writer
	crossCompile crosscompile.Export
}

// New creates a new clang command with crosscompile configuration.
func New(app string, crossCompile crosscompile.Export) *Cmd {
	if app == "" {
		app = "clang"
	}
	return &Cmd{
		app:          app,
		Env:          nil,
		Verbose:      false,
		Stdin:        nil,
		Stdout:       os.Stdout,
		Stderr:       os.Stderr,
		crossCompile: crossCompile,
	}
}

// NewCompiler creates a compiler command with proper flag merging.
func NewCompiler(crossCompile crosscompile.Export) *Cmd {
	app := "clang"
	if crossCompile.CC != "" {
		app = crossCompile.CC
	}
	return New(app, crossCompile)
}

// NewLinker creates a linker command with proper flag merging.
func NewLinker(crossCompile crosscompile.Export) *Cmd {
	app := "clang"
	if crossCompile.Linker != "" {
		app = crossCompile.Linker
	} else if crossCompile.CC != "" {
		app = crossCompile.CC
	}
	return New(app, crossCompile)
}

// Compile executes a compilation command with merged flags.
func (c *Cmd) Compile(args ...string) error {
	flags := c.mergeCompilerFlags()
	allArgs := make([]string, 0, len(flags)+len(args))
	allArgs = append(allArgs, flags...)
	allArgs = append(allArgs, args...)
	return c.exec(allArgs...)
}

// Link executes a linking command with merged flags.
func (c *Cmd) Link(args ...string) error {
	flags := c.mergeLinkerFlags()
	allArgs := make([]string, 0, len(flags)+len(args))
	allArgs = append(allArgs, flags...)
	allArgs = append(allArgs, args...)
	return c.exec(allArgs...)
}

// mergeCompilerFlags merges environment CCFLAGS/CFLAGS with crossCompile flags.
func (c *Cmd) mergeCompilerFlags() []string {
	var flags []string
	
	// Add environment CCFLAGS
	if envCCFlags := os.Getenv("CCFLAGS"); envCCFlags != "" {
		flags = append(flags, safesplit.SplitPkgConfigFlags(envCCFlags)...)
	}
	
	// Add environment CFLAGS
	if envCFlags := os.Getenv("CFLAGS"); envCFlags != "" {
		flags = append(flags, safesplit.SplitPkgConfigFlags(envCFlags)...)
	}
	
	// Add crossCompile CCFLAGS
	flags = append(flags, c.crossCompile.CCFLAGS...)
	
	// Add crossCompile CFLAGS
	flags = append(flags, c.crossCompile.CFLAGS...)
	
	return flags
}

// mergeLinkerFlags merges environment CCFLAGS/LDFLAGS with crossCompile flags.
func (c *Cmd) mergeLinkerFlags() []string {
	var flags []string
	
	// Add environment CCFLAGS (for linker)
	if envCCFlags := os.Getenv("CCFLAGS"); envCCFlags != "" {
		flags = append(flags, safesplit.SplitPkgConfigFlags(envCCFlags)...)
	}
	
	// Add environment LDFLAGS
	if envLDFlags := os.Getenv("LDFLAGS"); envLDFlags != "" {
		flags = append(flags, safesplit.SplitPkgConfigFlags(envLDFlags)...)
	}
	
	// Add crossCompile CCFLAGS (for linker)
	flags = append(flags, c.crossCompile.CCFLAGS...)
	
	// Add crossCompile LDFLAGS
	flags = append(flags, c.crossCompile.LDFLAGS...)
	
	return flags
}

// exec executes the clang command with given arguments.
func (c *Cmd) exec(args ...string) error {
	cmd := exec.Command(c.app, args...)
	if c.Verbose {
		fmt.Fprintf(os.Stderr, "%v\n", cmd)
	}
	cmd.Stdin = c.Stdin
	cmd.Stdout = c.Stdout
	cmd.Stderr = c.Stderr
	if c.Env != nil {
		cmd.Env = c.Env
	}
	return cmd.Run()
}

// CheckLinkArgs validates linking arguments by attempting a test compile.
func (c *Cmd) CheckLinkArgs(cmdArgs []string, wasm bool) error {
	// Create a temporary file with appropriate extension
	extension := ""
	if wasm {
		extension = ".wasm"
	} else if runtime.GOOS == "windows" {
		extension = ".exe"
	}

	tmpFile, err := os.CreateTemp("", "llgo_check*"+extension)
	if err != nil {
		return fmt.Errorf("failed to create temporary file: %w", err)
	}
	tmpFile.Close()
	tmpPath := tmpFile.Name()

	// Make sure to delete the temporary file when done
	defer os.Remove(tmpPath)

	// Set up compilation arguments
	args := append([]string{}, cmdArgs...)
	args = append(args, []string{"-x", "c", "-o", tmpPath, "-"}...)
	src := "int main() {return 0;}"
	srcIn := strings.NewReader(src)
	c.Stdin = srcIn

	// Execute the command with linker flags
	return c.Link(args...)
}