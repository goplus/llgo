package typeassert

type I interface{ M() }

type T struct{}

func (T) M() {}

func Use(i I) T {
	return i.(T)
}
