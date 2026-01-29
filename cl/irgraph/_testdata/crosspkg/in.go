package crosspkg

import "github.com/goplus/llgo/cl/irgraph/_testdata/crosspkg/foo"

func A() {
	foo.B()
}
