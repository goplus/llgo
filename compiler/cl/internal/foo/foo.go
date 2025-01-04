package foo

func Bar() any {
	return struct{ V int }{1}
}

func F() any {
	return struct{ v int }{1}
}

type Foo struct {
	pb *byte
	F  float32
}

func (v Foo) Pb() *byte {
	return v.pb
}

type Gamer interface {
	initGame()
	Load()
}

type Game struct {
}

func (g *Game) initGame() {
}

func (g *Game) Load() {
	println("load")
}
