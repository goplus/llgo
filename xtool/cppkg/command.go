/*
 * Copyright (c) 2025 The GoPlus Authors (goplus.org). All rights reserved.
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

package cppkg

import (
	"os"
	"os/exec"
	"strings"
)

var (
	// ErrNotFound is the error resulting if a path search failed to find
	// an executable file.
	ErrNotFound = exec.ErrNotFound
)

// Tool represents a tool that can be executed.
type Tool struct {
	cmd      string
	installs [][]string
}

// NewTool creates a new Tool instance with the specified tool and install commands.
func NewTool(cmd string, installs []string) *Tool {
	inst := make([][]string, len(installs))
	for i, install := range installs {
		inst[i] = strings.Split(install, " ")
	}
	return &Tool{
		cmd:      cmd,
		installs: inst,
	}
}

// New creates a new command with the specified arguments.
func (p *Tool) New(quietInstall bool, args ...string) (cmd *exec.Cmd, err error) {
	app, err := p.Get(quietInstall)
	if err != nil {
		return
	}
	return exec.Command(app, args...), nil
}

// Get retrieves the path of the command.
// If the command is not found, it attempts to install it using the specified
// install commands.
func (p *Tool) Get(quietInstall bool) (app string, err error) {
	app, err = exec.LookPath(p.cmd)
	if err == nil {
		return
	}
	amPath, install, err := p.getAppManager()
	if err != nil {
		return
	}
	c := exec.Command(amPath, install[1:]...)
	c.Stdout = os.Stdout
	c.Stderr = os.Stderr
	if err = c.Run(); err != nil {
		return
	}
	return exec.LookPath(p.cmd)
}

func (p *Tool) getAppManager() (amPath string, install []string, err error) {
	for _, install = range p.installs {
		am := install[0]
		if amPath, err = exec.LookPath(am); err == nil {
			return
		}
	}
	err = ErrNotFound
	return
}
