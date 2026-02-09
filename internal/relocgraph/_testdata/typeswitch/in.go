package typeswitch

type T struct{}

func B() {}

func (T) M() {
	B()
}

func A(x any) int {
	switch v := x.(type) {
	case int:
		return v
	case T:
		v.M()
		return 1
	default:
		return 0
	}
}
