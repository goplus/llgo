package useifacemethod

type I interface{ M() }

type T struct{}

func (T) M() {}

func Use(i I) {
	i.M()
}
