package funcptrstruct

func B() {}

type Holder struct {
	F func()
}

var G = Holder{F: B}
