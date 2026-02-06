package multicall

func B() {}

func C() {}

func A() {
	B()
	C()
}
