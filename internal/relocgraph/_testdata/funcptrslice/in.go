package funcptrslice

func B() {}

var G = []func(){B}
