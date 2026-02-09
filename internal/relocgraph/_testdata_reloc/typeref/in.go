package typeref

type Inner struct {
	X int
}

type Outer struct {
	A []Inner
	B map[string]*Inner
	C [2]Inner
}

var Sink any

func Use() {
	Sink = Outer{}
}
