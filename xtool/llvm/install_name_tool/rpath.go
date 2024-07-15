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

package install_name_tool

import (
	"io"
	"os/exec"
	"path/filepath"
)

// Cmd represents a install_name_tool command.
type Cmd struct {
	app string

	Stdout io.Writer
	Stderr io.Writer
}

// New creates a new install_name_tool command.
func New(app string) *Cmd {
	if app == "" {
		app = "install_name_tool"
	}
	return &Cmd{app: app}
}

// Change represents a dependent shared library install name change.
type Change struct {
	Old string
	New string
}

// Change changes dependent shared library install name.
func (p *Cmd) Change(target string, chgs ...Change) error {
	args := make([]string, len(chgs)*3+1)
	for _, chg := range chgs {
		args = append(args, "-change", chg.Old, chg.New)
	}
	args = append(args, target)
	cmd := exec.Command(p.app, args...)
	cmd.Stdout = p.Stdout
	cmd.Stderr = p.Stderr
	return cmd.Run()
}

// ChangeToRpath changes dependent shared library install name to @rpath.
func (p *Cmd) ChangeToRpath(target string, dylibDeps ...string) error {
	chgs := make([]Change, len(dylibDeps))
	for i, dep := range dylibDeps {
		chgs[i] = Change{Old: dep, New: "@rpath/" + filepath.Base(dep)}
	}
	return p.Change(target, chgs...)
}
