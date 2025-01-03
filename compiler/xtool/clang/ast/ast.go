/*
 * Copyright (c) 2022 The GoPlus Authors (goplus.org). All rights reserved.
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

// -----------------------------------------------------------------------------

type IncludedFrom struct {
	File string `json:"file"`
}

type Loc struct {
	Offset       int64         `json:"offset,omitempty"` // 432
	File         string        `json:"file,omitempty"`   // "sqlite3.i"
	Line         int           `json:"line,omitempty"`
	PresumedFile string        `json:"presumedFile,omitempty"`
	PresumedLine int           `json:"presumedLine,omitempty"`
	Col          int           `json:"col,omitempty"`
	TokLen       int           `json:"tokLen,omitempty"`
	IncludedFrom *IncludedFrom `json:"includedFrom,omitempty"` // "sqlite3.c"
}

type Pos struct {
	Offset       int64         `json:"offset,omitempty"`
	Col          int           `json:"col,omitempty"`
	TokLen       int           `json:"tokLen,omitempty"`
	IncludedFrom *IncludedFrom `json:"includedFrom,omitempty"` // "sqlite3.c"
	SpellingLoc  *Loc          `json:"spellingLoc,omitempty"`
	ExpansionLoc *Loc          `json:"expansionLoc,omitempty"`
}

type Range struct {
	Begin Pos `json:"begin"`
	End   Pos `json:"end"`
}

// -----------------------------------------------------------------------------

type ID string

type Kind string

const (
	TranslationUnitDecl      Kind = "TranslationUnitDecl"
	TypedefType              Kind = "TypedefType"
	TypedefDecl              Kind = "TypedefDecl"
	ElaboratedType           Kind = "ElaboratedType"
	BuiltinType              Kind = "BuiltinType"
	ConstantArrayType        Kind = "ConstantArrayType"
	IncompleteArrayType      Kind = "IncompleteArrayType"
	PointerType              Kind = "PointerType"
	RecordType               Kind = "RecordType"
	RecordDecl               Kind = "RecordDecl"
	FieldDecl                Kind = "FieldDecl"
	IndirectFieldDecl        Kind = "IndirectFieldDecl"
	VarDecl                  Kind = "VarDecl"
	EmptyDecl                Kind = "EmptyDecl"
	EnumDecl                 Kind = "EnumDecl"
	EnumConstantDecl         Kind = "EnumConstantDecl"
	AlwaysInlineAttr         Kind = "AlwaysInlineAttr"
	AsmLabelAttr             Kind = "AsmLabelAttr"
	AvailabilityAttr         Kind = "AvailabilityAttr"
	DeprecatedAttr           Kind = "DeprecatedAttr"
	BuiltinAttr              Kind = "BuiltinAttr"
	FormatAttr               Kind = "FormatAttr"
	FormatArgAttr            Kind = "FormatArgAttr"
	ColdAttr                 Kind = "ColdAttr"
	ConstAttr                Kind = "ConstAttr"
	PureAttr                 Kind = "PureAttr"
	PackedAttr               Kind = "PackedAttr"
	GNUInlineAttr            Kind = "GNUInlineAttr"
	StrictFPAttr             Kind = "StrictFPAttr"
	ReturnsTwiceAttr         Kind = "ReturnsTwiceAttr"
	RestrictAttr             Kind = "RestrictAttr"
	NoThrowAttr              Kind = "NoThrowAttr"
	NoInlineAttr             Kind = "NoInlineAttr"
	NoSanitizeAttr           Kind = "NoSanitizeAttr"
	NonNullAttr              Kind = "NonNullAttr"
	MayAliasAttr             Kind = "MayAliasAttr"
	MSAllocatorAttr          Kind = "MSAllocatorAttr"
	MaxFieldAlignmentAttr    Kind = "MaxFieldAlignmentAttr"
	WarnUnusedResultAttr     Kind = "WarnUnusedResultAttr"
	AllocSizeAttr            Kind = "AllocSizeAttr"
	AlignedAttr              Kind = "AlignedAttr"
	VisibilityAttr           Kind = "VisibilityAttr"
	C11NoReturnAttr          Kind = "C11NoReturnAttr"
	FunctionProtoType        Kind = "FunctionProtoType"
	FunctionDecl             Kind = "FunctionDecl"
	ParmVarDecl              Kind = "ParmVarDecl"
	ParenType                Kind = "ParenType"
	DeclStmt                 Kind = "DeclStmt"
	CompoundStmt             Kind = "CompoundStmt"
	NullStmt                 Kind = "NullStmt"
	ForStmt                  Kind = "ForStmt"
	WhileStmt                Kind = "WhileStmt"
	DoStmt                   Kind = "DoStmt"
	GotoStmt                 Kind = "GotoStmt"
	BreakStmt                Kind = "BreakStmt"
	ContinueStmt             Kind = "ContinueStmt"
	LabelStmt                Kind = "LabelStmt"
	IfStmt                   Kind = "IfStmt"
	SwitchStmt               Kind = "SwitchStmt"
	CaseStmt                 Kind = "CaseStmt"
	DefaultStmt              Kind = "DefaultStmt"
	ReturnStmt               Kind = "ReturnStmt"
	GCCAsmStmt               Kind = "GCCAsmStmt"
	ParenExpr                Kind = "ParenExpr"
	CallExpr                 Kind = "CallExpr"
	ConstantExpr             Kind = "ConstantExpr"
	InitListExpr             Kind = "InitListExpr"
	CStyleCastExpr           Kind = "CStyleCastExpr"
	DeclRefExpr              Kind = "DeclRefExpr"
	MemberExpr               Kind = "MemberExpr"
	ImplicitCastExpr         Kind = "ImplicitCastExpr"
	ImplicitValueInitExpr    Kind = "ImplicitValueInitExpr"
	UnaryExprOrTypeTraitExpr Kind = "UnaryExprOrTypeTraitExpr"
	OffsetOfExpr             Kind = "OffsetOfExpr"
	ArraySubscriptExpr       Kind = "ArraySubscriptExpr"
	AtomicExpr               Kind = "AtomicExpr"
	VAArgExpr                Kind = "VAArgExpr"
	CompoundAssignOperator   Kind = "CompoundAssignOperator"
	BinaryOperator           Kind = "BinaryOperator"
	UnaryOperator            Kind = "UnaryOperator"
	ConditionalOperator      Kind = "ConditionalOperator"
	CompoundLiteralExpr      Kind = "CompoundLiteralExpr"
	PredefinedExpr           Kind = "PredefinedExpr"
	CharacterLiteral         Kind = "CharacterLiteral"
	IntegerLiteral           Kind = "IntegerLiteral"
	StringLiteral            Kind = "StringLiteral"
	FloatingLiteral          Kind = "FloatingLiteral"
	ImaginaryLiteral         Kind = "ImaginaryLiteral"
	AllocAlignAttr           Kind = "AllocAlignAttr"
	DisableTailCallsAttr     Kind = "DisableTailCallsAttr"
	StaticAssertDecl         Kind = "StaticAssertDecl"
)

type ValueCategory string

const (
	RValue  ValueCategory = "rvalue"
	PRValue ValueCategory = "prvalue"
	LValue  ValueCategory = "lvalue"
)

type CC string

const (
	CDecl CC = "cdecl"
)

type StorageClass string

const (
	Static StorageClass = "static"
	Extern StorageClass = "extern"
)

type CastKind string

const (
	LValueToRValue           CastKind = "LValueToRValue"
	BitCast                  CastKind = "BitCast"
	FloatingToIntegral       CastKind = "FloatingToIntegral"
	FloatingComplexCast      CastKind = "FloatingComplexCast"
	FloatingRealToComplex    CastKind = "FloatingRealToComplex"
	IntegralRealToComplex    CastKind = "IntegralRealToComplex"
	FloatingCast             CastKind = "FloatingCast"
	IntegralCast             CastKind = "IntegralCast"
	IntegralToPointer        CastKind = "IntegralToPointer"
	IntegralToFloating       CastKind = "IntegralToFloating"
	IntegralToBoolean        CastKind = "IntegralToBoolean"
	FloatingToBoolean        CastKind = "FloatingToBoolean"
	IntegralComplexToBoolean CastKind = "IntegralComplexToBoolean"
	FloatingComplexToBoolean CastKind = "FloatingComplexToBoolean"
	PointerToBoolean         CastKind = "PointerToBoolean"
	PointerToIntegral        CastKind = "PointerToIntegral"
	FunctionToPointerDecay   CastKind = "FunctionToPointerDecay"
	ArrayToPointerDecay      CastKind = "ArrayToPointerDecay"
	BuiltinFnToFnPtr         CastKind = "BuiltinFnToFnPtr"
	ToVoid                   CastKind = "ToVoid"
	NullToPointer            CastKind = "NullToPointer"
	NoOp                     CastKind = "NoOp"
)

type (
	// OpCode can be:
	//   + - * / || >= -- ++ etc
	OpCode string
)

type Type struct {
	// QualType can be:
	//   unsigned int
	//   struct ConstantString
	//   volatile uint32_t
	//   int (*)(void *, int, char **, char **)
	//   int (*)(const char *, ...)
	//   int (*)(void)
	//   const char *restrict
	//   const char [7]
	//   char *
	//   void
	//   ...
	QualType          string `json:"qualType"`
	DesugaredQualType string `json:"desugaredQualType,omitempty"`
	TypeAliasDeclID   ID     `json:"typeAliasDeclId,omitempty"`
}

type Node struct {
	ID                   ID            `json:"id,omitempty"`
	Kind                 Kind          `json:"kind,omitempty"`
	Loc                  *Loc          `json:"loc,omitempty"`
	Range                *Range        `json:"range,omitempty"`
	ReferencedMemberDecl ID            `json:"referencedMemberDecl,omitempty"`
	PreviousDecl         ID            `json:"previousDecl,omitempty"`
	ParentDeclContextID  ID            `json:"parentDeclContextId,omitempty"`
	IsImplicit           bool          `json:"isImplicit,omitempty"`   // is this type implicit defined
	IsReferenced         bool          `json:"isReferenced,omitempty"` // is this type refered or not
	IsUsed               bool          `json:"isUsed,omitempty"`       // is this variable used or not
	IsArrow              bool          `json:"isArrow,omitempty"`      // is ptr->member not obj.member
	IsPostfix            bool          `json:"isPostfix,omitempty"`
	IsPartOfExplicitCast bool          `json:"isPartOfExplicitCast,omitempty"`
	IsBitfield           bool          `json:"isBitfield,omitempty"`
	Inline               bool          `json:"inline,omitempty"`
	StorageClass         StorageClass  `json:"storageClass,omitempty"`
	TagUsed              string        `json:"tagUsed,omitempty"` // struct | union
	HasElse              bool          `json:"hasElse,omitempty"`
	CompleteDefinition   bool          `json:"completeDefinition,omitempty"`
	Complicated          bool          `json:"-"` // complicated statement
	Variadic             bool          `json:"variadic,omitempty"`
	Name                 string        `json:"name,omitempty"`
	MangledName          string        `json:"mangledName,omitempty"`
	Type                 *Type         `json:"type,omitempty"`
	CC                   CC            `json:"cc,omitempty"`
	Field                *Node         `json:"field,omitempty"`
	Decl                 *Node         `json:"decl,omitempty"`
	OwnedTagDecl         *Node         `json:"ownedTagDecl,omitempty"`
	ReferencedDecl       *Node         `json:"referencedDecl,omitempty"`
	OpCode               OpCode        `json:"opcode,omitempty"`
	Init                 string        `json:"init,omitempty"`
	ValueCategory        ValueCategory `json:"valueCategory,omitempty"`
	Value                interface{}   `json:"value,omitempty"`
	CastKind             CastKind      `json:"castKind,omitempty"`
	Size                 int           `json:"size,omitempty"` // array size
	Inner                []*Node       `json:"inner,omitempty"`
	ArrayFiller          []*Node       `json:"array_filler,omitempty"`
}

// -----------------------------------------------------------------------------
