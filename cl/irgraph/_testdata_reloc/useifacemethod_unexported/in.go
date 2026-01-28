package useifacemethod_unexported

type I interface{ m(); M() }

type T struct{}

func (T) m() {}
func (T) M() {}

func Use(i I) {
	// call unexported method to trigger useifacemethod reloc with a package-qualified name
	i.m()
}
