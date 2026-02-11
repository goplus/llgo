package funcptrmap

func B() {}

var G = map[string]func(){"x": B}
