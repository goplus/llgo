package methodvaluereturn

type T struct{}

func (T) M() {}

func A() func() {
	var t T
	return t.M
}
