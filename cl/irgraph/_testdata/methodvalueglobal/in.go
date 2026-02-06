package methodvalueglobal

type T struct{}

func (T) M() {}

var t T
var G = t.M
