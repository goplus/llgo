package funcptrarg

func B() {}

func takes(fn func()) {}

func A() {
	takes(B)
}
