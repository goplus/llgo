package chain

func C() {}

func B() {
	C()
}

func A() {
	B()
}
