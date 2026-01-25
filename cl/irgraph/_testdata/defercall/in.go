package defercall

func B() {}

func A() {
	defer B()
}
