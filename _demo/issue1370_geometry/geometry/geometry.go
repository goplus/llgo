package geometry

type Shape interface {
	Area() float64
	validate() bool
	setID(int)
}

type Rectangle struct {
	Width, Height float64
	id            int
}

func (r *Rectangle) Area() float64  { return r.Width * r.Height }
func (r *Rectangle) validate() bool { return r.Width > 0 && r.Height > 0 }
func (r *Rectangle) setID(id int)   { r.id = id }
func (r *Rectangle) GetID() int     { return r.id }

func NewRectangle(width, height float64) *Rectangle {
	return &Rectangle{Width: width, Height: height}
}

func RegisterShape(s Shape, id int) error {
	s.setID(id)
	return nil
}
