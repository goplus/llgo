package main

type Type interface {
	String() string
}

func demo(t Type) string {
	return t.String()
}

type typ struct {
	s string
}

func (t *typ) String() string {
	return t.s
}

var (
	op = map[string]func(Type) string{
		"demo": demo,
	}
	list = []func(Type) string{demo}
)

func main() {
	t := &typ{"hello"}
	fn1 := op["demo"]
	fn2 := list[0]
	if fn1(t) != fn2(t) {
		panic("error")
	}
}
