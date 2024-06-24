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

package clang

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

/**
 * Opaque pointer representing client data that will be passed through
 * to various callbacks and visitors.
 */
type ClientData = c.Pointer

/**
 * Provides the contents of a file that has not yet been saved to disk.
 *
 * Each CXUnsavedFile instance provides the name of a file on the
 * system along with the current contents of that file that have not
 * yet been saved to disk.
 */
type UnsavedFile struct {
	/**
	 * The file whose contents have not yet been saved.
	 *
	 * This file must already exist in the file system.
	 */
	Filename *c.Char

	/**
	 * A buffer containing the unsaved contents of this file.
	 */
	Contents *c.Char

	/**
	 * The length of the unsaved contents of this buffer.
	 */
	Length c.Ulong
}

/**
 * An "index" that consists of a set of translation units that would
 * typically be linked together into an executable or library.
 */
type Index struct {
	Unused [0]byte
}

/**
 * Provides a shared context for creating translation units.
 *
 * It provides two options:
 *
 * - excludeDeclarationsFromPCH: When non-zero, allows enumeration of "local"
 * declarations (when loading any new translation units). A "local" declaration
 * is one that belongs in the translation unit itself and not in a precompiled
 * header that was used by the translation unit. If zero, all declarations
 * will be enumerated.
 *
 * Here is an example:
 *
 * \code
 *   // excludeDeclsFromPCH = 1, displayDiagnostics=1
 *   Idx = clang_createIndex(1, 1);
 *
 *   // IndexTest.pch was produced with the following command:
 *   // "clang -x c IndexTest.h -emit-ast -o IndexTest.pch"
 *   TU = clang_createTranslationUnit(Idx, "IndexTest.pch");
 *
 *   // This will load all the symbols from 'IndexTest.pch'
 *   clang_visitChildren(clang_getTranslationUnitCursor(TU),
 *                       TranslationUnitVisitor, 0);
 *   clang_disposeTranslationUnit(TU);
 *
 *   // This will load all the symbols from 'IndexTest.c', excluding symbols
 *   // from 'IndexTest.pch'.
 *   char *args[] = { "-Xclang", "-include-pch=IndexTest.pch" };
 *   TU = clang_createTranslationUnitFromSourceFile(Idx, "IndexTest.c", 2, args,
 *                                                  0, 0);
 *   clang_visitChildren(clang_getTranslationUnitCursor(TU),
 *                       TranslationUnitVisitor, 0);
 *   clang_disposeTranslationUnit(TU);
 * \endcode
 *
 * This process of creating the 'pch', loading it separately, and using it (via
 * -include-pch) allows 'excludeDeclsFromPCH' to remove redundant callbacks
 * (which gives the indexer the same performance benefit as the compiler).
 */
//go:linkname CreateIndex C.clang_createIndex
func CreateIndex(excludeDeclarationsFromPCH, displayDiagnostics c.Int) *Index

/**
 * Destroy the given index.
 *
 * The index must not be destroyed until all of the translation units created
 * within that index have been destroyed.
 */
// llgo:link (*Index).Dispose C.clang_disposeIndex
func (*Index) Dispose() {}

/**
 * Flags that control the creation of translation units.
 *
 * The enumerators in this enumeration type are meant to be bitwise
 * ORed together to specify which options should be used when
 * constructing the translation unit.
 */
const (
	TranslationUnit_None = 0x0
)

/**
 * Same as \c clang_parseTranslationUnit2, but returns
 * the \c CXTranslationUnit instead of an error code.  In case of an error this
 * routine returns a \c NULL \c CXTranslationUnit, without further detailed
 * error codes.
 */
// llgo:link (*Index).ParseTranslationUnit C.clang_parseTranslationUnit
func (*Index) ParseTranslationUnit(
	sourceFilename *c.Char, commandLineArgs **c.Char, numCommandLineArgs c.Int,
	unsavedFiles *UnsavedFile, numUnsavedFiles c.Uint, options c.Uint) *TranslationUnit {
	return nil
}

/**
 * A single translation unit, which resides in an index.
 */
type TranslationUnit struct {
	Unused [0]byte
}

/**
 * Destroy the specified CXTranslationUnit object.
 */
// llgo:linke (*TranslationUnit).Dispose C.clang_disposeTranslationUnit
func (*TranslationUnit) Dispose() {}

/**
 * Retrieve the cursor that represents the given translation unit.
 *
 * The translation unit cursor can be used to start traversing the
 * various declarations within the given translation unit.
 */
// llgo:link (*TranslationUnit).Cursor C.clang_getTranslationUnitCursor
func (*TranslationUnit) Cursor() (ret Cursor) {
	return
}

/**
 * Describes the kind of entity that a cursor refers to.
 */
type CursorKind c.Int

/* for debug/testing */
// llgo:link (CursorKind).String C.clang_getCursorKindSpelling
func (CursorKind) String() (ret String) {
	return
}

/**
 * A cursor representing some element in the abstract syntax tree for
 * a translation unit.
 *
 * The cursor abstraction unifies the different kinds of entities in a
 * program--declaration, statements, expressions, references to declarations,
 * etc.--under a single "cursor" abstraction with a common set of operations.
 * Common operation for a cursor include: getting the physical location in
 * a source file where the cursor points, getting the name associated with a
 * cursor, and retrieving cursors for any child nodes of a particular cursor.
 *
 * Cursors can be produced in two specific ways.
 * clang_getTranslationUnitCursor() produces a cursor for a translation unit,
 * from which one can use clang_visitChildren() to explore the rest of the
 * translation unit. clang_getCursor() maps from a physical source location
 * to the entity that resides at that location, allowing one to map from the
 * source code into the AST.
 */
type Cursor struct {
	Kind  CursorKind
	Xdata c.Int
	Data  [3]c.Pointer
}

/**
 * Retrieve a name for the entity referenced by this cursor.
 */
// llgo:link C.clang_getCursorSpelling
func (Cursor) String() (ret String) {
	return
}

/**
 * Describes how the traversal of the children of a particular
 * cursor should proceed after visiting a particular child cursor.
 *
 * A value of this enumeration type should be returned by each
 * \c CXCursorVisitor to indicate how clang_visitChildren() proceed.
 */
type ChildVisitResult c.Int

const (
	/**
	 * Terminates the cursor traversal.
	 */
	ChildVisit_Break ChildVisitResult = iota
	/**
	 * Continues the cursor traversal with the next sibling of
	 * the cursor just visited, without visiting its children.
	 */
	ChildVisit_Continue
	/**
	 * Recursively traverse the children of this cursor, using
	 * the same visitor and client data.
	 */
	ChildVisit_Recurse
)

/**
 * Visit the children of a particular cursor.
 *
 * This function visits all the direct children of the given cursor,
 * invoking the given \p visitor function with the cursors of each
 * visited child. The traversal may be recursive, if the visitor returns
 * \c CXChildVisit_Recurse. The traversal may also be ended prematurely, if
 * the visitor returns \c CXChildVisit_Break.
 *
 * \param parent the cursor whose child may be visited. All kinds of
 * cursors can be visited, including invalid cursors (which, by
 * definition, have no children).
 *
 * \param visitor the visitor function that will be invoked for each
 * child of \p parent.
 *
 * \param client_data pointer data supplied by the client, which will
 * be passed to the visitor each time it is invoked.
 *
 * \returns a non-zero value if the traversal was terminated
 * prematurely by the visitor returning \c CXChildVisit_Break.
 */
//go:linkname VisitChildren C.clang_visitChildren
func VisitChildren(
	cusor Cursor,
	visitor func(cursor, parent Cursor, clientData ClientData) ChildVisitResult,
	clientData ClientData) c.Uint {
	return 0
}
