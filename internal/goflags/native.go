/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package goflags

import (
	"encoding/json"
	"flag"
	"fmt"
	"go/version"
	"io"
	"os"
	"path/filepath"
	"strconv"
	"strings"

	"github.com/xgo-dev/llgo/internal/build"
)

// validateNativeFlags guards the typed configuration boundary. The package
// loader accepting a gc control does not make that control an LLGo feature.
func validateNativeFlags(args []string) error {
	for _, arg := range args {
		name, value, _ := strings.Cut(strings.TrimLeft(arg, "-"), "=")
		switch name {
		case "n", "work", "trimpath", "buildvcs", "race", "msan", "asan", "linkshared", "compiler", "asmflags", "gccgoflags", "installsuffix", "pkgdir", "toolexec", "pgo":
			return fmt.Errorf("-%s is unsupported by the LLGo backend", name)
		case "gcflags":
			if err := validateGCFlags(value); err != nil {
				return fmt.Errorf("invalid -gcflags: %w", err)
			}
		}
	}
	return nil
}

func validateGCFlags(value string) error {
	pattern, fields, err := splitPerPackageArgumentList(value)
	if err != nil {
		return err
	}
	if pattern != "" && pattern != "all" {
		return fmt.Errorf("package pattern %q is unsupported; use an unpatterned value or all=", pattern)
	}
	fs := flag.NewFlagSet("gcflags", flag.ContinueOnError)
	fs.SetOutput(io.Discard)
	fs.Func("lang", "Go language version", func(v string) error {
		if !version.IsValid(v) {
			return fmt.Errorf("invalid Go language version %q", v)
		}
		return nil
	})
	for _, name := range []string{"N", "l"} {
		fs.BoolFunc(name, "Disable optimization", func(v string) error {
			if _, err := strconv.ParseBool(v); err == nil {
				return nil
			}
			n, err := strconv.Atoi(v)
			if err != nil {
				return err
			}
			if name == "l" && n != 0 && n != 1 {
				return fmt.Errorf("gc inliner diagnostic levels are unsupported")
			}
			return nil
		})
	}
	fs.Func("d", "Global float-to-integer conversion behavior", func(v string) error {
		for _, setting := range strings.Split(v, ",") {
			name, pattern, ok := strings.Cut(setting, "=")
			if name != "converthash" || !ok || !globalBisectPattern(pattern) {
				return fmt.Errorf("gc debug setting %q is unsupported", setting)
			}
		}
		return nil
	})
	if err := fs.Parse(fields); err != nil {
		return fmt.Errorf("unsupported LLGo compiler option: %w", err)
	}
	if fs.NArg() != 0 {
		return fmt.Errorf("unexpected compiler operands %q", fs.Args())
	}
	return nil
}

func globalBisectPattern(pattern string) bool {
	pattern = strings.TrimPrefix(pattern, "q")
	pattern = strings.TrimLeft(pattern, "v")
	pattern = strings.TrimLeft(pattern, "!")
	return pattern == "y" || pattern == "n"
}

// applyOverlay reads the same JSON view used by the Go loader into LLGo's
// parser view. Keep the raw -overlay flag for file selection, including deleted
// and added Go files, and carry validated paths and contents as typed data.
func applyOverlay(conf *build.Config, args []string) error {
	var file string
	present := false
	for _, arg := range args {
		if v, ok := strings.CutPrefix(arg, "-overlay="); ok {
			file = v
			present = true
		}
	}
	if !present {
		return nil
	}
	if file == "" {
		conf.SourceOverlay = nil
		return nil
	}
	data, err := os.ReadFile(file)
	if err != nil {
		return fmt.Errorf("read -overlay: %w", err)
	}
	var overlay struct{ Replace map[string]string }
	if err := json.Unmarshal(data, &overlay); err != nil {
		return fmt.Errorf("decode -overlay: %w", err)
	}
	contents := make(map[string]build.SourceOverlayFile, len(overlay.Replace))
	for name, backing := range overlay.Replace {
		if filepath.Ext(name) != ".go" {
			return fmt.Errorf("-overlay: non-Go replacement %q is unsupported by LLGo", name)
		}
		name, err = filepath.Abs(name)
		if err != nil {
			return err
		}
		var source []byte
		if backing != "" {
			backing, err = filepath.Abs(backing)
			if err != nil {
				return err
			}
			source, err = os.ReadFile(backing)
			if err != nil {
				return fmt.Errorf("read -overlay backing file %q: %w", backing, err)
			}
		}
		contents[name] = build.SourceOverlayFile{BackingFile: backing, Contents: source}
	}
	conf.SourceOverlay = contents
	return nil
}
