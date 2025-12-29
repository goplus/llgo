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
	"runtime/debug"
	"strings"
)

const (
	devel = "(devel)"
)

// buildVersion is the LLGo tree's version string at build time. It should be
// set by the linker.
var buildVersion string

// compilerHash is the compiler's source hash at build time. It should be
// set by the linker via all.bash for development builds.
var compilerHash string

// Version returns the version of the running LLGo binary.
func Version() string {
	if buildVersion != "" {
		return buildVersion
	}
	info, ok := debug.ReadBuildInfo()
	if ok && info.Main.Version != "" && !strings.HasSuffix(info.Main.Version, "+dirty") {
		return info.Main.Version
	}
	return devel
}

func Devel() bool {
	return Version() == devel
}

// CompilerHash returns the compiler's source hash.
// For development builds (Version() == "(devel)"), it returns the hash
// embedded at build time via ldflags, or an error if not set.
// For release builds, it returns an empty string (version serves as fingerprint).
func CompilerHash() (string, error) {
	if Version() != devel {
		return "", nil
	}
	if compilerHash == "" {
		return "", fmt.Errorf("LLGO_COMPILER_HASH not set; please build via all.bash instead of 'go install' directly")
	}
	return compilerHash, nil
}

// SetCompilerHashForTest allows tests to inject a fake compiler hash.
// This should only be used in test code.
func SetCompilerHashForTest(hash string) func() {
	old := compilerHash
	compilerHash = hash
	return func() { compilerHash = old }
}
