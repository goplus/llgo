package ifacecall

type I interface {
	M()
}

type T struct{}

func B() {}

func (T) M() {
	B()
}

func A() {
	var i I = T{}
	i.M()
}
