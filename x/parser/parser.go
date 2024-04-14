/*
 * Copyright (c) 2023 The GoPlus Authors (goplus.org). All rights reserved.
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

package parser

/*
import (
	"go/ast"
	"go/parser"
	"go/token"

	"github.com/goplus/llgo/build"
)

// A Mode value is a set of flags (or 0).
// They control the amount of source code parsed and other optional
// parser functionality.
type Mode = parser.Mode

const (
	PackageClauseOnly    = parser.PackageClauseOnly    // stop parsing after package clause
	ImportsOnly          = parser.ImportsOnly          // stop parsing after import declarations
	ParseComments        = parser.ParseComments        // parse comments and add them to AST
	Trace                = parser.Trace                // print a trace of parsed productions
	DeclarationErrors    = parser.DeclarationErrors    // report declaration errors
	SpuriousErrors       = parser.SpuriousErrors       // same as AllErrors, for backward-compatibility
	SkipObjectResolution = parser.SkipObjectResolution // don't resolve identifiers to objects - see ParseFile
	AllErrors            = parser.AllErrors            // report all errors (not just the first 10 on different lines)
)

// A Package node represents a set of source files
// collectively building a Go package.
type Package struct {
	*ast.Package
}

func Parse(fset *token.FileSet, pkg build.Package, mode Mode) (_ Package, first error) {
	ret := map[string]*ast.Package{}
	for _, file := range pkg.GoFiles {
		f, err := parser.ParseFile(fset, file, nil, mode)
		if err != nil {
			if first == nil {
				first = err
			}
			continue
		}
		ret[file] = f
	}
}
*/
