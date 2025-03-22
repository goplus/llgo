//go:build (linux || darwin || freebsd || netbsd || openbsd || solaris) && (amd64 || arm64 || ppc64 || ppc64le || mips64 || mips64le || s390x || riscv64)
// +build linux darwin freebsd netbsd openbsd solaris
// +build amd64 arm64 ppc64 ppc64le mips64 mips64le s390x riscv64

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

package c

// For 64-bit Unix/Linux/macOS, Long is 64-bit
type (
	Long  = int64
	Ulong = uint64
)
