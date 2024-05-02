package linktarget

import (
	"github.com/goplus/llgo/internal/runtime/c"
)

func F(a, b *c.Char) {
	c.Printf(c.Str("a: %s, b: %s\n"), a, b)
}
