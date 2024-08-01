package ast

type TypeUse interface {
	NamedType
}

// a basic type usage
type BasicTypeUse struct {
	BaseType
}

// a custom type usage
type CustomTypeUse struct {
	BaseType
}

// a pointer type usage
type PointerTypeUse struct {
	BaseType TypeUse
}

func (t *PointerTypeUse) TypeName() string {
	return t.BaseType.TypeName() + "*"
}

// fully qualified name of the pointer type
func (t *PointerTypeUse) FullName() string {
	return t.BaseType.FullName() + "*"
}
