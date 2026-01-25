package methodcall

func B() {}

type T struct{}

func (T) M() {
	B()
}

func A() {
	var t T
	t.M()
}
