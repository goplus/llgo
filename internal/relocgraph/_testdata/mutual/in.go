package mutual

func A() {
	B()
}

func B() {
	A()
}
