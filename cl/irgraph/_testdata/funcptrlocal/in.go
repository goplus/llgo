package funcptrlocal

func B() {}

func A() func() {
	f := B
	return f
}
