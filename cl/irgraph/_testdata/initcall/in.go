package initcall

func B() {}

func A() {
	B()
}

func init() {
	A()
}
