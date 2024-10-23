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

// Exec executes a clang command.
func (p *Cmd) Exec(args ...string) error {
	cmd := exec.Command(p.app, args...)
	cmd.Stdout = p.Stdout
	cmd.Stderr = p.Stderr
	return cmd.Run()
}

func (p *Cmd) ExecWithOutput(args ...string) (string, error) {
	cmd := exec.Command(p.app, args...)
	out, err := cmd.Output()
	return string(out), err
}

// -----------------------------------------------------------------------------
