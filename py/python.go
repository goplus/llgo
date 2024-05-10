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

package py

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $LLGO_PYTHON_ROOT/python3.12"
)

// -----------------------------------------------------------------------------

//go:linkname SetProgramName C.Py_SetProgramName
func SetProgramName(name *c.Char)

//go:linkname Initialize C.Py_Initialize
func Initialize()

// This function works like Initialize() if initsigs is 1.
// If initsigs is 0, it skips initialization registration of signal handlers,
// which might be useful when Python is embedded.
//
//go:linkname InitializeEx C.Py_InitializeEx
func InitializeEx(initsigs c.Int)

//go:linkname Finalize C.Py_Finalize
func Finalize()

// -----------------------------------------------------------------------------

//go:linkname RunSimpleString C.PyRun_SimpleString
func RunSimpleString(command *c.Char) c.Int

//go:linkname RunSimpleStringFlags C.PyRun_SimpleStringFlags
func RunSimpleStringFlags(command *c.Char, flags *CompilerFlags) c.Int

//go:linkname RunSimpleFile C.PyRun_SimpleFile
func RunSimpleFile(fp c.FilePtr, filename *c.Char) c.Int

//go:linkname RunSimpleFileFlags C.PyRun_SimpleFileFlags
func RunSimpleFileFlags(fp c.FilePtr, filename *c.Char, flags *CompilerFlags) c.Int

// -----------------------------------------------------------------------------

type InputType c.Int

const (
	SingleInput InputType = 256 // read code from i/o
	FileInput   InputType = 257 // read code from filename
	EvalInput   InputType = 258 // read code from string
	// FuncTypeInput InputType = 345
)

// llgo:type C
type CompilerFlags struct {
	CfFlags c.Int
}

//go:linkname CompileString C.Py_CompileString
func CompileString(str, filename *c.Char, start InputType) *Object

//go:linkname CompileStringFlags C.Py_CompileStringFlags
func CompileStringFlags(str, filename *c.Char, start InputType, flags *CompilerFlags) *Object

//go:linkname CompileStringExFlags C.Py_CompileStringExFlags
func CompileStringExFlags(str, filename *c.Char, start InputType, flags *CompilerFlags, optimize c.Int) *Object

// Parse and compile the Python source code in str, returning the resulting code object.
// The start token is given by start; this can be used to constrain the code which can be
// compiled and should be py.EvalInput, py.FileInput, or py.SingleInput. The filename
// specified by filename is used to construct the code object and may appear in tracebacks
// or SyntaxError exception messages. This returns NULL if the code cannot be parsed or
// compiled.
//
// The integer optimize specifies the optimization level of the compiler; a value of -1
// selects the optimization level of the interpreter as given by -O options. Explicit levels
// are 0 (no optimization; __debug__ is true), 1 (asserts are removed, __debug__ is false) or
// 2 (docstrings are removed too).
//
//go:linkname CompileStringObject C.Py_CompileStringObject
func CompileStringObject(str *c.Char, filename *Object, start InputType, flags *CompilerFlags, optimize c.Int) *Object

// -----------------------------------------------------------------------------

// This is a simplified interface to EvalCodeEx, with just the code object, and global and
// local variables. The other arguments are set to nil.
//
//go:linkname EvalCode C.PyEval_EvalCode
func EvalCode(code, globals, locals *Object) *Object

// Evaluate a precompiled code object, given a particular environment for its evaluation.
// This environment consists of a dictionary of global variables, a mapping object of local
// variables, arrays of arguments, keywords and defaults, a dictionary of default values for
// keyword-only arguments and a closure tuple of cells.
//
//go:linkname EvalCodeEx C.PyEval_EvalCodeEx
func EvalCodeEx(
	code, globals, locals *Object,
	args *Object, argcount c.Int, kws *Object, kwcount c.Int,
	defs *Object, defcount c.Int, kwdefs, closure *Object) *Object

// -----------------------------------------------------------------------------
