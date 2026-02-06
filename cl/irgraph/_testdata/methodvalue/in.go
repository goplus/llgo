package methodvalue

type T struct{}

func B() {}

func (T) M() {
	B()
}

func A() {
	var t T
	f := t.M
	f()
}
