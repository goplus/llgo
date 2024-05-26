package main

import "github.com/goplus/llgo/internal/abi"

// NewPkgName creates a package name.
func NewPkgName(pkgPath string) (ret abi.Name) {
	if len(pkgPath) > 0 {
		ret = abi.NewName(pkgPath, "", false, false)
	}
	return
}

func main() {
	n := NewPkgName("pkgPath")
	println(n.Name(), n.Tag(), n.IsExported(), n.IsEmbedded(), n.IsBlank())
}
