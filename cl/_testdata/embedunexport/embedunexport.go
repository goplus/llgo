package embedunexport

// Object is an interface with both exported and unexported methods
type Object interface {
	Name() string
	setName(string)
}

// Base implements Object
type Base struct {
	name string
}

func (b *Base) Name() string {
	return b.name
}

func (b *Base) setName(name string) {
	b.name = name
}

func NewBase(name string) *Base {
	return &Base{name: name}
}

// Use calls the unexported method through interface
func Use(obj Object) {
	obj.setName("modified")
}
