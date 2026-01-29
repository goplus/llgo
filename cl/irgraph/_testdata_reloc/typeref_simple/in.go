package typeref_simple

type T struct {
	X int
}

var Sink any

func Use() {
	Sink = T{}
}
