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

package env

import (
	"fmt"
	"os"
	"os/exec"
	"regexp"
	"strings"
)

var (
	reSubcmd = regexp.MustCompile(`\$\([^)]+\)`)
	reFlag   = regexp.MustCompile(`[^ \t\n]+`)
)

func ExpandEnv(s string) string {
	return expandEnvWithCmd(s)
}

func expandEnvWithCmd(s string) string {
	expanded := reSubcmd.ReplaceAllStringFunc(s, func(m string) string {
		subcmd := strings.TrimSpace(m[2 : len(m)-1])

		args := parseSubcmd(subcmd)

		cmd := args[0]

		if cmd != "pkg-config" && cmd != "llvm-config" {
			fmt.Fprintf(os.Stderr, "expand cmd only support pkg-config and llvm-config: '%s'\n", subcmd)
			return ""
		}

		var out []byte
		var err error
		out, err = exec.Command(cmd, args[1:]...).Output()

		if err != nil {
			// TODO(kindy): log in verbose mode
			return ""
		}

		return strings.Replace(strings.TrimSpace(string(out)), "\n", " ", -1)
	})
	return strings.TrimSpace(os.Expand(expanded, os.Getenv))
}

func parseSubcmd(s string) []string {
	return reFlag.FindAllString(s, -1)
}
