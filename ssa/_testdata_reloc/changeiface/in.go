package changeiface

type I interface{ M() }

type J interface{}

type T struct{}

func (T) M() {}

func Use(i I) J {
	return i
}
