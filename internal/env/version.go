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
	"crypto/sha256"
	"encoding/binary"
	"encoding/hex"
	"fmt"
	"io"
	"os"
	"runtime/debug"
	"strings"
)

const (
	devel = "(devel)"
)

// buildVersion is the LLGo tree's version string at build time. It should be
// set by the linker.
var buildVersion string

// compilerHash caches the LLGo compiler fingerprint. Release builds may set it
// at link time, while development builds compute it from the running binary.
var compilerHash string

// init precomputes the compilerHash for development builds so cache entries can
// observe compiler updates without hashing the full executable contents.
func init() {
	if err := ensureCompilerHash(); err != nil {
		panic(err)
	}
}

func ensureCompilerHash() error {
	if Version() != devel || compilerHash != "" {
		return nil
	}
	exe, err := executablePath()
	if err != nil {
		return fmt.Errorf("llgo: determine executable path: %w", err)
	}
	hash, err := compilerHashFromPathFunc(exe)
	if err != nil {
		return fmt.Errorf("llgo: compute compiler hash: %w", err)
	}
	compilerHash = hash
	return nil
}

// Version returns the version of the running LLGo binary.
func Version() string {
	if buildVersion != "" {
		return buildVersion
	}
	info, ok := readBuildInfo()
	if ok && info.Main.Version != "" && !strings.HasSuffix(info.Main.Version, "+dirty") {
		return info.Main.Version
	}
	return devel
}

func Devel() bool {
	return Version() == devel
}

// CompilerHash returns a fingerprint of the compiler binary. For release
// builds it returns an empty string. For development builds it hashes the
// executable's metadata (modification time + file size) so cache entries are
// invalidated automatically when the compiler changes.
func CompilerHash() string {
	return compilerHash
}

// compilerHashFromPath generates a metadata-based fingerprint for the provided
// compiler binary. The hash uses the file's modification time and size rather
// than its full contents to provide fast cache invalidation in development
// workflows.
func compilerHashFromPath(path string) (string, error) {
	info, err := os.Stat(path)
	if err != nil {
		return "", fmt.Errorf("llgo: stat executable: %w", err)
	}
	return hashMetadata(info.ModTime().UTC().UnixNano(), info.Size())
}

// hashMetadata encodes the file's modification timestamp and size as
// little-endian uint64 values and returns their SHA-256 digest. A negative size
// is rejected because it does not represent a valid file.
func hashMetadata(modTimeNano int64, size int64) (string, error) {
	if size < 0 {
		return "", fmt.Errorf("llgo: invalid executable size: %d", size)
	}
	h := sha256.New()
	if err := writeUint64LE(h, uint64(modTimeNano)); err != nil {
		return "", fmt.Errorf("llgo: hash metadata timestamp: %w", err)
	}
	if err := writeUint64LE(h, uint64(size)); err != nil {
		return "", fmt.Errorf("llgo: hash metadata size: %w", err)
	}
	return hex.EncodeToString(h.Sum(nil)), nil
}

var (
	writeUint64LE            = func(w io.Writer, v uint64) error { return binary.Write(w, binary.LittleEndian, v) }
	executablePath           = os.Executable
	compilerHashFromPathFunc = compilerHashFromPath
	readBuildInfo            = debug.ReadBuildInfo
)
