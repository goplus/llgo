package useiface

type I interface{ M() }

type T struct{}

func (T) M() {}

var sink I

func A() {
	var t T
	sink = t
}
