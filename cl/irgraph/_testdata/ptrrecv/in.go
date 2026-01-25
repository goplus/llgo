package ptrrecv

type T struct{}

func (t *T) M() {
	B()
}

func B() {}

var t T

func A() {
	t.M()
}
