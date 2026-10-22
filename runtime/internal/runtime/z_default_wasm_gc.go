//go:build wasm && llgo.wasm.gc.linear

package runtime

const (
	printFormatPrefixInt  = "%lld"
	printFormatPrefixUInt = "%llu"
	printFormatPrefixHex  = "%llx"
)
