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
	"io"
	"os"
	"os/exec"
	"strings"
)

// -----------------------------------------------------------------------------

// Cmd represents a clang command.
type Cmd struct {
	app string

	Stdout io.Writer
	Stderr io.Writer
}

// New creates a new clang command.
func New(app string) *Cmd {
	if app == "" {
		app = "clang"
	}
	return &Cmd{app, os.Stdout, os.Stderr}
}

func (p *Cmd) Compile(args ...string) error {
	// Parse CFLAGS environment variable into separate arguments
	cflags := strings.Fields(os.Getenv("CFLAGS"))
	if len(cflags) > 0 {
		// Create a new slice with capacity for all arguments
		newArgs := make([]string, 0, len(cflags)+len(args))
		newArgs = append(newArgs, cflags...)
		newArgs = append(newArgs, args...)
		args = newArgs
	}
	return p.Exec(args...)
}

func (p *Cmd) Link(args ...string) error {
	// Parse LDFLAGS environment variable into separate arguments
	ldflags := strings.Fields(os.Getenv("LDFLAGS"))
	if len(ldflags) > 0 {
		// Create a new slice with capacity for all arguments
		newArgs := make([]string, 0, len(ldflags)+len(args))
		newArgs = append(newArgs, ldflags...)
		newArgs = append(newArgs, args...)
		args = newArgs
	}
	return p.Exec(args...)
}

// Exec executes a clang command.
func (p *Cmd) Exec(args ...string) error {
	cmd := exec.Command(p.app, args...)
	cmd.Stdout = p.Stdout
	cmd.Stderr = p.Stderr
	return cmd.Run()
}

// -----------------------------------------------------------------------------
