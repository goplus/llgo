package crosspkg

import "github.com/goplus/llgo/internal/relocgraph/_testdata/crosspkg/foo"

func A() {
	foo.B()
}
