package methodvaluearg

type T struct{}

func (T) M() {}

func takes(fn func()) {}

func A() {
	var t T
	takes(t.M)
}
