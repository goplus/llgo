package linktarget

import (
	"github.com/goplus/llgo/c"
)

func F(a, b *c.Char) {
	c.Printf(c.Str("a: %s, b: %s\n"), a, b)
}

var _ m

type m struct {
	s string
}

func (t m) info() string {
	return t.s
}

func (t *m) setInfo(s string) {
	t.s = s
}
