package ifaceassert

type I interface {
	M()
}

type T struct{}

func B() {}

func (T) M() {
	B()
}

func A(x any) {
	if v, ok := x.(I); ok {
		v.M()
	}
}
