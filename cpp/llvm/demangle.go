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

package llvm

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// -----------------------------------------------------------------------------

// Returns a non-NULL pointer to a NUL-terminated C style string
// that should be explicitly freed, if successful. Otherwise, may return
// nullptr if mangled_name is not a valid mangling or is nullptr.
//
// char *itaniumDemangle(std::string_view mangled_name, bool ParseParams = true);
//
//go:linkname ItaniumDemangle C._ZN4llvm15itaniumDemangleENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEb
func ItaniumDemangle(mangledName StringView, parseParams bool) *c.Char

/*
	enum MSDemangleFlags {
	  MSDF_None = 0,
	  MSDF_DumpBackrefs = 1 << 0,
	  MSDF_NoAccessSpecifier = 1 << 1,
	  MSDF_NoCallingConvention = 1 << 2,
	  MSDF_NoReturnType = 1 << 3,
	  MSDF_NoMemberType = 1 << 4,
	  MSDF_NoVariableType = 1 << 5,
	};
*/
type MSDemangleFlags c.Int

// Demangles the Microsoft symbol pointed at by mangled_name and returns it.
// Returns a pointer to the start of a null-terminated demangled string on
// success, or nullptr on error.
//
// If n_read is non-null and demangling was successful, it receives how many
// bytes of the input string were consumed.
//
// status receives one of the demangle_ enum entries above if it's not nullptr.
// Flags controls various details of the demangled representation.
//
// char *microsoftDemangle(std::string_view mangled_name, size_t *n_read, int *status, MSDemangleFlags Flags = MSDF_None);
//
//go:linkname MicrosoftDemangle C._ZN4llvm17microsoftDemangleENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEPmPiNS_15MSDemangleFlagsE
func MicrosoftDemangle(mangledName StringView, nRead *uintptr, status *c.Int, flags MSDemangleFlags) *c.Char

// Demangles a Rust v0 mangled symbol.
//
// char *rustDemangle(std::string_view MangledName);
//
//go:linkname RustDemangle C._ZN4llvm12rustDemangleENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE
func RustDemangle(mangledName StringView) *c.Char

// -----------------------------------------------------------------------------
