package ptrrecv

type T struct{}

func (t *T) M() {
	B()
}

func B() {}

func A() {
	var t T
	t.M()
}
