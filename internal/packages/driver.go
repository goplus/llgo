// Copyright 2026 The XGo Authors (xgo.dev). All rights reserved.
// Use of this source code is governed by the Apache License, Version 2.0.
// See LICENSE for details.

package packages

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"sync"

	"golang.org/x/tools/go/packages"
)

// loadPathMu serializes PATH pins so concurrent loads cannot restore another
// caller's toolchain into the process environment.
var loadPathMu sync.Mutex

// LoadMetadata runs go/packages with the selected GOROOT/bin first on the
// process PATH for the duration of the load. Setting Config.Env alone cannot
// do this: x/tools resolves exec.Command("go") using the process environment,
// including for GO111MODULE=off release-tag probes.
//
// This matches cmd/go's AppendPATH contract for one load. The parent PATH is
// restored afterward and Config.Env is not mutated. Concurrent loads are
// serialized. This loader is for metadata only; LoadEx supplies LLGo's parser
// and typechecker.
func LoadMetadata(cfg *Config, patterns ...string) ([]*Package, error) {
	if cfg == nil {
		return packages.Load(cfg, patterns...)
	}
	if cfg.Mode&(NeedTypes|NeedTypesInfo|NeedSyntax) != 0 {
		return nil, fmt.Errorf("package driver requires a metadata-only load mode")
	}
	goroot := environmentValue(cfg.Env, "GOROOT")
	if goroot == "" {
		return packages.Load(cfg, patterns...)
	}
	goName := "go"
	if runtime.GOOS == "windows" {
		goName += ".exe"
	}
	goBin := filepath.Join(goroot, "bin")
	if _, err := exec.LookPath(filepath.Join(goBin, goName)); err != nil {
		return nil, fmt.Errorf("selected Go executable: %w", err)
	}

	loadPathMu.Lock()
	defer loadPathMu.Unlock()

	oldPath := os.Getenv("PATH")
	pinned := goBin + string(os.PathListSeparator) + oldPath
	if err := os.Setenv("PATH", pinned); err != nil {
		return nil, err
	}
	defer os.Setenv("PATH", oldPath)

	// TODO(golang/go#68495): Drop the PATH pin once x/tools can select the Go
	// executable per load, including its GO111MODULE=off probes.
	loadCfg := *cfg
	loadCfg.Env = replaceEnvironment(cfg.Env, "PATH", goBin+string(os.PathListSeparator)+environmentValue(cfg.Env, "PATH"))
	pkgs, err := packages.Load(&loadCfg, patterns...)
	if err != nil && cfg.Context != nil && cfg.Context.Err() != nil {
		return nil, cfg.Context.Err()
	}
	return pkgs, err
}

func environmentKeyEqual(a, b string) bool {
	return a == b || runtime.GOOS == "windows" && strings.EqualFold(a, b)
}

func environmentValue(environ []string, key string) string {
	var value string
	for _, entry := range environ {
		if name, v, ok := strings.Cut(entry, "="); ok && environmentKeyEqual(name, key) {
			value = v
		}
	}
	return value
}

func replaceEnvironment(environ []string, key, value string) []string {
	result := make([]string, 0, len(environ)+1)
	for _, entry := range environ {
		name, _, _ := strings.Cut(entry, "=")
		if !environmentKeyEqual(name, key) {
			result = append(result, entry)
		}
	}
	return append(result, key+"="+value)
}
