package ast

import "strings"

type AccessSpecifier int

const (
	Public AccessSpecifier = iota
	Protected
	Private
)

type Node interface {
	// other info, if needed
}

type NamedType interface {
	Node
	TypeName() string
	Namespace() []string
	FullName() string
}

type BaseType struct {
	Name      string
	namespace []string
}

func (b *BaseType) TypeName() string {
	return b.Name
}

func (b *BaseType) Namespace() []string {
	return b.namespace
}

func (b *BaseType) FullName() string {
	return strings.Join(append(b.Namespace(), b.TypeName()), "::")
}

type Macro interface {
	Node
	MacroName() string
}

type File struct {
	Name   string
	Defs   []*TypeDef // structs, functions, classes
	Macros []*Macro
}

// ConstantMacro represents a constant macro definition
// For This Usage: #define OK 1 , Map to Go: const OK = 1
type ConstantMacro struct {
	Name  string
	Value string
}

// GenericMacro represents other types of macro definitions
// (Consider whether to retain collection of these)
type GenericMacro struct {
	Name       string
	Definition string
}

func (c *ConstantMacro) MacroName() string { return c.Name }
func (g *GenericMacro) MacroName() string  { return g.Name }
