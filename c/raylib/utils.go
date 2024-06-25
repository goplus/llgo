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

package raylib

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// -----------------------------------------------------------------------------

// Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
//
//go:linkname TraceLog C.TraceLog
func TraceLog(logLevel int, text *c.Char, __llgo_va_list ...any)

// Set the current threshold (minimum) log level
//
//go:linkname SetTraceLogLevel C.SetTraceLogLevel
func SetTraceLogLevel(logLevel int)

// -----------------------------------------------------------------------------
// Set custom callbacks

// -----------------------------------------------------------------------------
// Files management functions

// -----------------------------------------------------------------------------
// File system functions

// Check if file exists
//
//go:linkname FileExists C.FileExists
func FileExists(fileName *c.Char) bool

// Check if a directory path exists
//
//go:linkname DirectoryExists C.DirectoryExists
func DirectoryExists(dirPath *c.Char) bool

// Check file extension (including point: .png, .wav)
//
//go:linkname IsFileExtension C.IsFileExtension
func IsFileExtension(fileName *c.Char, ext *c.Char) bool

// -----------------------------------------------------------------------------
// Compression/Encoding functionality

// -----------------------------------------------------------------------------
// Automation events functionality

// -----------------------------------------------------------------------------
