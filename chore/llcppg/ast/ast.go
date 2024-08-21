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

package ast

import "github.com/goplus/llgo/chore/llcppg/token"

// =============================================================================

type Node interface {
}

type Expr interface {
	Node
	exprNode()
}

type Decl interface {
	Node
	declNode()
}

type Stmt interface {
	Node
	stmtNode()
}

type PPD interface { // preprocessing directive
	Node
	ppdNode()
}

// =============================================================================
// Expressions (Types are also expressions)

type BasicLitKind uint

const (
	IntLit BasicLitKind = iota
	FloatLit
	CharLit
	StringLit
)

type BasicLit struct {
	Kind  BasicLitKind
	Value string
}

func (*BasicLit) exprNode() {}

// ------------------------------------------------

type TypeKind uint

const (
	Void TypeKind = iota
	Bool
	Char
	Char16
	Char32
	WChar
	Int
	Int128
	Float
	Float16
	Float128
	Complex
)

type TypeFlag uint

const (
	Signed TypeFlag = 1 << iota
	Unsigned
	Long
	LongLong
	Double
	Short
)

// [signed/unsigned/short/long/long long/double] [int]/char/float/complex/bool
type BuiltinType struct {
	Kind  TypeKind
	Flags TypeFlag
}

func (*BuiltinType) exprNode() {}

// ------------------------------------------------

// Name
type Ident struct {
	Name string
}

func (*Ident) exprNode() {}

// ------------------------------------------------

type Tag int

const (
	Struct Tag = iota
	Union
	Enum
	Class
)

// struct/union/enum/class Name
type TagExpr struct {
	Tag  Tag
	Name *Ident
}

func (*TagExpr) exprNode() {}

// ------------------------------------------------

// (X)
type ParenExpr struct {
	X Expr
}

func (*ParenExpr) exprNode() {}

// ------------------------------------------------

// Parent::X
type ScopingExpr struct {
	Parent Expr
	X      Expr
}

func (*ScopingExpr) exprNode() {}

// ------------------------------------------------

// X*
type PointerType struct {
	X Expr
}

func (*PointerType) exprNode() {}

// ------------------------------------------------

// X&
type ReferenceType struct {
	X Expr
}

func (*ReferenceType) exprNode() {}

// ------------------------------------------------

// Elt[Len]
// Elt[]
type ArrayType struct {
	Elt Expr
	Len Expr // optional
}

func (*ArrayType) exprNode() {}

// ------------------------------------------------

type Comment struct {
	Text string // comment text (excluding '\n' for //-style comments)
}

func (*Comment) exprNode() {}

type CommentGroup struct {
	List []*Comment // len(List) > 0
}

func (*CommentGroup) exprNode() {}

// ------------------------------------------------

type Field struct {
	Doc     *CommentGroup // associated documentation; or nil
	Type    Expr          // field/method/parameter type; or nil
	Names   []*Ident      // field/method/(type) parameter names; or nil
	Comment *CommentGroup // line comments; or nil
}

func (*Field) exprNode() {}

type FieldList struct {
	List []*Field // field list; or nil
}

func (*FieldList) exprNode() {}

// ------------------------------------------------

// Ret (*)(Params)
type FuncType struct {
	Params *FieldList
	Ret    Expr
}

func (*FuncType) exprNode() {}

// ------------------------------------------------

type RecordType struct {
	Tag     Tag
	Fields  *FieldList
	Methods []*FuncDecl
}

// ------------------------------------------------

// Template<Arg1, Arg2, ...>
type InstantiationType struct {
	Template Expr
	Args     *FieldList
}

func (*InstantiationType) exprNode() {}

// =============================================================================
// Declarations

type Location struct {
	File string
}

type DeclBase struct {
	Doc    *CommentGroup // associated documentation; or nil
	Loc    *Location
	Parent Expr // namespace or class
}

// ------------------------------------------------

// typedef Type Name;
type TypedefDecl struct {
	DeclBase
	Type Expr
	Name *Ident
}

func (*TypedefDecl) declNode() {}

// ------------------------------------------------

type EnumItem struct {
	Name  *Ident
	Value Expr // optional
}

func (*EnumItem) exprNode() {}

// enum Name { Item1, Item2, ... };
type EnumTypeDecl struct {
	DeclBase
	Name  *Ident
	Items []*EnumItem
}

func (*EnumTypeDecl) declNode() {}

// ------------------------------------------------

// Ret Name(Params);
type FuncDecl struct {
	DeclBase
	Name *Ident
	Type *FuncType
}

func (*FuncDecl) declNode() {}

// ------------------------------------------------

// struct/union/class Name { Field1, Field2, ... };
type TypeDecl struct {
	DeclBase
	Name *Ident
	Type *RecordType
}

func (*TypeDecl) declNode() {}

// =============================================================================
// AST File

type Include struct {
	Path string `json:"path"`
}

func (*Include) ppdNode() {}

// ------------------------------------------------

type Token struct {
	Token token.Token
	Lit   string
}

type Macro struct {
	Name   string
	Tokens []*Token // Tokens[0].Lit is the macro name
}

func (*Macro) ppdNode() {}

// ------------------------------------------------

type File struct {
	Decls    []Decl     `json:"decls"`
	Includes []*Include `json:"includes,omitempty"`
	Macros   []*Macro   `json:"macros,omitempty"`
}

// =============================================================================
