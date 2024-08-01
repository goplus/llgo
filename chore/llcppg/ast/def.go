package ast

// TypeDef interface represents a type definition
type TypeDef interface {
	NamedType
}

// Represents a base class in inheritance
type BaseClass struct {
	Type   TypeUse
	Access AccessSpecifier // Access specifier affects visibility of derived class fields, but not memory layout
}

type ClassDef struct {
	BaseType
	BaseClasses []*BaseClass
	Fields      []*Field
	Methods     []*MethodDef
}

type StructDef struct {
	BaseType
	Fields []*Field
}

type FunctionDef struct {
	BaseType
	ReturnType *Field
	Params     []*Field
	Symbol     string
}

type MethodDef struct {
	FunctionDef
	Class      TypeUse // Class to which this method belongs
	Access     AccessSpecifier
	IsVirtual  bool //  Whether it's a virtual function
	IsOverride bool //  Whether it's an overriding function
}

type Field struct {
	Names []string
	Type  TypeUse
}

type EnumDef struct {
	BaseType
	Values []*EnumValue
}

type EnumValue struct {
	Name  string
	Value int64
}
