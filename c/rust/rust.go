package rust

import "github.com/goplus/llgo/c"

// Write the .pc file for the dylib generated by the Rust library and copy it to pkg-config for proper location.
const (
	LLGoPackage = "link: $(pkg-config --libs example_lib); -lexample_lib"
)

//llgo:link Sort C.sort
func Sort(arr *c.Int, len c.Ulong) {}
