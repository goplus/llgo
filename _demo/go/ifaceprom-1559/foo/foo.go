package foo

type Gamer interface {
	initGame()
	Load()
}

type Game struct{}

func (g *Game) initGame() {}

func (g *Game) Load() {
	println("load")
}
